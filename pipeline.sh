#! /usr/bin/env python

import os
import sys

# Please use the proper extentions for the DNA sequences (000.fnt) and the Amino Acid sequences (000.faa)
# sys.argv takes the file name you want to search. 
#Be sure to enclose it in apostorphes like: "file*.faa", if you wish to select all files of a certain type
string=sys.argv[1]

print "Showing all individual sequences from ", string, " files:"
os.system('grep ">" -h '+string+" | sort | uniq -c") 

print "Concatenating all ", string, "files"
os.system('cat '+string+" > input.fas")
os.system('mafft input.fas > mafft_output.fas')
os.system('muscle -in input.fas -out muscle_output.fas')
