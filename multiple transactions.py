import datetime
from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_v1_5
from  Crypto import Random
import binascii
import collections
from Crypto.Hash import SHA
from Crypto.Signature import PKCS1_v1_5

class Client:
    def __init__(self):
        random=Random.new().read
        self._private_key=RSA.generate(1024,random)
        self.public_key=self._private_key.publickey()
        self.signer=PKCS1_v1_5.new(self._private_key)

    @property
    def identity(self):
        return binascii.hexlify(self.public_key.exportKey(format='DER')).decode('ascii')


class Transaction:
    def __init__(self,sender,recipent,value):
        self.sender=sender
        self.recipent=recipent
        self.value=value
        self.time=datetime.datetime.now()

    def to_dict(self):
        if self.sender=="Genesis":
            identity="Genesis"
        else:
            identity=self.sender.identity
        return collections.OrderedDict({
            'sender':identity,
            'recipent':self.recipent,
            'value':self.value,
            'time':self.time
        })

    def sign_tran(self):
        private_key=self.sender._private_key
        signer=PKCS1_v1_5.new(private_key)
        h=SHA.new(str(self.to_dict()).encode('utf8'))
        return binascii.hexlify(signer.sign(h)).decode('ascii')


#testing the client  -
def display_transaction(transaction):
        dict=transaction.to_dict()
        print("sender:"+dict['sender'])
        print('------')
        print("recipent:"+dict['recipent'])
        print('------')
        print("value:"+str(dict['value']))
        print('------')
        print("time:"+str(dict['time']))
        print('------')

transactions=[]

Sameera=Client()
Aisha=Client()
Tehniyat=Client()

t1 = Transaction(
   Sameera,
   Aisha.identity,
   15.0
)


t1.sign_tran()
transactions.append(t1)

t2 = Transaction(
   Tehniyat,
   Aisha.identity,
   25.0
)

t2.sign_tran()
transactions.append(t2)

t3 = Transaction(
   Sameera,
   Tehniyat.identity,
   35.0
)
t3.sign_tran()
transactions.append(t3)

tn=1
for t in transactions:
    print("transaction#",tn)
    display_transaction(t)
    tn=tn+1
    print('-----')
