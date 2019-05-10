f=open("test.txt","w")
try: 
	from googlesearch import search
	import sys
except ImportError: 
	print("No module named 'google' found") 

# to search 
query = sys.argv[1]

for j in search(query, tld="co.ma",lang='fr', num=10, stop=10, pause=2): 
	f.write("%s\n"%j) 
f.close()
