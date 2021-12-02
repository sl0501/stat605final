#!/bin/bash
# download txt file including url to download and save the urls in file
wget https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt
cat index.txt | grep "https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_" > list_of_tsv_files
