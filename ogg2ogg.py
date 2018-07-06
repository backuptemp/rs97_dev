#!/usr/bin/python
import os
import sys

for x in os.listdir('.'):
	if x.endswith('.ogg'):
		os.system('ffmpeg -i "' + x + '" "' + x + '.ogg"')
		os.system('mv "' + x + '.ogg" "' + x + '"')
print 'task done !'
