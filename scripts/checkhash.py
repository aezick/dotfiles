import sys, hashlib

def checkhash():
	if len(sys.argv) != 1:
		print "Usage: python checkhash.py"
		return

	filepath = raw_input("Filepath: ")
	given_hash = raw_input("Given hash: ")
	algorithm  = raw_input("Desired algorithm: ")
	print
	
	try:
		f = open(filepath, 'rb')
		buf = f.read()
		file_hash = hashlib.new(algorithm)
		file_hash.update(buf)

		if file_hash.hexdigest() == given_hash:
			print "Hashes match."
		else:
			print "************************************"
			print "DO NOT PROCEED. HASHES DO NOT MATCH."
			print "************************************"

	except ValueError:
		print "Hash algorithm not available."


if __name__ == '__main__':
	checkhash()
