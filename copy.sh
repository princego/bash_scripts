#!/bin/bash
A='/Users/prince/edu/IITM/1chemGrad/2Zr'

for (( i=15; i<=18; i++ ))
do 
	B=`head -$i $A/dir | tail -1`
	C=`head -$i $A/dir | tail -1 | awk -F '/' '{print $1}'`
	scp mm17d012@aqua.iitm.ac.in:/lfs/usrhome/phd/mm17d012/1chemGrad/Zr/$B/POSCAR /Users/prince/edu/IITM/1chemGrad/2Zr/$C/
	scp mm17d012@aqua.iitm.ac.in:/lfs/usrhome/phd/mm17d012/1chemGrad/Zr/$B/CONTCAR /Users/prince/edu/IITM/1chemGrad/2Zr/$C/
done
