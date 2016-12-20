#!/usr/bin/env python3
import os 
rootdir = 'MoveforAug'


os.chdir(rootdir)
average = 0.0
total = 0
maxt = 0.0
supermax=0.0
for folders in os.listdir(os.getcwd()):
	#print(folders)
	os.chdir(folders)
	for seed in os.listdir(os.getcwd()):
		#print("Next File")
		#print(seed)
		os.chdir(seed)
		for file in os.listdir(os.getcwd()):
			if file=="data.csv":
				#print(file)
				maxt=0
				rain = open("dominant.csv","r")
				for line in rain:
					try:
						for Num in range (100):
							p = float(line.split(",")[85])
							maxt = max(maxt,p)
					except:
						pass		
				rain.close()
				print(maxt,seed,folders)
				supermax=max(supermax,maxt)
		os.chdir('..')
	os.chdir('..')	
print("Maximum:",supermax)
#print("Percentage:",maxt/)