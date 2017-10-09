import hashlib
import os
import sys

def checkhash():
	if len(sys.argv) < 1:
		print "Usage: python checkhash.py filepath"
		return

	filepath = sys.argv[1]
	given_hash = raw_input("Given hash: ").lower()
	algorithm  = raw_input("Desired algorithm: ")
	print
	
	try:
		f = open(os.path.expanduser(filepath), 'rb')
		buf = f.read()
		file_hash = hashlib.new(algorithm)
		file_hash.update(buf)
		calculated_hash = file_hash.hexdigest().lower()

		if calculated_hash == given_hash:
			print "Hashes match."
		else:
			print("************************************")
			print("DO NOT PROCEED. HASHES DO NOT MATCH.")
			print("Calculated hash:\n\t{}".format(calculated_hash))
			print("Given hash:\n\t{}".format(given_hash))
			print("************************************")

	except ValueError:
		print "Hash algorithm not available."


if __name__ == '__main__':
	checkhash()
