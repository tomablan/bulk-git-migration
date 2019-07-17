# Bulk Git Migration
It's a small script just to do a massive migration from on server to another. It basically does a clone with mirror, registers a new remote and does a `git push --mirror -f` to the new server.

## Requierements
1. Time : It could be very long since a repository is not only one version of the current branch, we are pushing all the references that a repository contains. I used it over 200 repositories, and with a low bandwith it took me almost 2 days.
2. SSH Keys : Both servers (the one we are pulling the content from, and the one you're sending it to) must have your SSH key registered.

## urls.txt
This is file is the base file for the bulk update, the awaited format is :
```
[OLD REPO URL, SSH OR HTTP FORMAT] [NEW REPO URL, SSH OR HTTP FORMAT]
```

It must be only these two parameters by line.
