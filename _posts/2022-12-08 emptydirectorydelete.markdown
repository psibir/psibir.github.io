---
layout: post
title:  "emptydirectorydelete"
date:   2022-12-08 22:05
categories: projects
---

I have a lot of files. Sorting them has been a challenge, expecially when there are directories that lead to nowhere. Thats why I made the [emptydirectorydelete](https://github.com/psibir/emptydirectorydelete) Python script to handle empty folders from clogging up my directory. I included a double confirmation warning message that prints the directory to be modified to minimize the likelyhood of a user accidentally deleting empty folders in the wrong directory so while it is safe, it is still a destructive script and should be run with caution. 

Use cases for this script include cleaning up empty folders left from moving all the files in a given foler in a directory that also contains folders with files you would like to keep. This script runs recursively and will target empty nested child folders before empty parent folders.
