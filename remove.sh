#!/bin/bash
#--remove all directories under current directory except log directories 
#--remove all files except batch files needed
find . -mindepth 1 -maxdepth 1 ! \( -name "log" -o -name "output" -o -name "error" \) -type d -exec rm -r {} +
find . ! \( -name "*.sh" -o -name "*.sub" -o -name "*.dag" \) -type f -exec rm -r {} +
rm -f sentiment.dag.condor.sub 
