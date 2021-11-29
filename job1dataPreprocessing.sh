#!/bin/bash
# download file
seq=$(($1+1))
file=$(cat files.csv | cut -d , -f $seq)
ext1=.tsv
ext2=.gz
wget $file
# extract tsv file
downf=$(echo $file | cut -d"/" -f6 | cut -d"." -f1)
gzip -d $downf$ext1$ext2
nf=$downf$ext1
