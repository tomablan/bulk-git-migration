#!/bin/bash
input="urls.txt"
while IFS=' ' read -r oldURL newURL
do
    echo "-------------- START REPO ---------------"
    echo "Old Repository URL is : $oldURL"
    echo "New Repository URL is $newURL"
    echo "-----------------------------------------"
    git clone --mirror $oldURL repo && cd repo
    git remote remove origin
    git remote add origin $newURL
    git push --mirror -f origin
    cd ../
    rm repo -rdf
    echo "-------------- FIN REPO ---------------"
done < "$input"
