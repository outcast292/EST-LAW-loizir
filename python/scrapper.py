#! python3
from googlesearch import search
import sys
import mysql.connector
db = mysql.connector.connect(user='root', password='',host='127.0.0.1',database='test')
cursor = db.cursor()
cursor.execute("SELECT id FROM req_id")
result = cursor.fetchone()
x=result[0]
y=x+1
# to search 
query = sys.argv[1]

for j in search(query, tld="co.ma",lang='fr', num=10, stop=10, pause=2): 
	sql = "INSERT INTO scrapper (req_id, url) VALUES (%s, %s)"
	val = (x, j)
	cursor.execute(sql, val)

db.commit() 
sql = "UPDATE req_id SET id=%s WHERE id=%s"
val= (y,x)
cursor.execute(sql,val) 
db.commit() 
