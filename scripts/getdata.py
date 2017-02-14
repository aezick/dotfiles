#!/usr/local/bin/python
from bs4 import BeautifulSoup
from six.moves import urllib
import sys, datetime

url = "https://smash.gg/tournament/smash-summit-spring-2017/voting"
webpage = urllib.request.urlopen(url).read()
soup = BeautifulSoup(webpage, 'html.parser')

votes = soup.find_all('small', class_='text-muted')
sponser_data = soup.find_all('span', class_='text-muted')
players = soup.find_all('div', class_='gamertag-title-lg')
sponsers = []

for s in sponser_data:
	sponsers += [s.getText()]

filename = '/Users/andrewzick/Desktop/websites/smashgg/votes__' + str(datetime.datetime.now()).replace(' ','__')
with open(filename, 'w+') as f:
	for i in range(14):
		num =  votes[i].getText().replace(',','')
		tag = ''
		name = players[i].getText()
		for s in sponsers:
			if s in name:
				name = name.replace(s,'')
				tag = s
				break

		f.write(num.strip() + ',' + tag.strip() + ',' + name.strip() + '\n')
