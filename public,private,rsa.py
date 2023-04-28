from Crypto.PublicKey import RSA
key=RSA.generate(1024)
p_key=key.public_key().export_key("PEM")
priv_key=key.export_key("PEM")
print("TEHNIYAT SHAIKH \n")
print(p_key)
print(priv_key)
