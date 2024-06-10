#!/bin/bash
#
# Script: Bash Week Old file delete script
# Created: 26/04/2024
# Updated: 02/05/2024
# Author: Matt Fogle
# Website: https://github.com/mafogle
# Email: matt@mattasaservice.com
#
# This is a simple script that scours a directory recursively and deletes files older than 7 days with matching
# file extensions.

# Usage:

# Define parent Directory Path. IE, if you want to clean up a log directory you would define the directory as:
# dir="/var/log/dailyLogs" and this would set that as the parent directory and descend into all sub directories.

dir="/$directory"

# This is where we define the file extensions to be deleted . IE "*.dailylog", "*.txt", etc.
# Add or remove lines as needed. 
# The -print0 option for find is telling the command to separate matches with ASCII NULL and not a new line
# while the -0 is having xargs expect NULL-separated inputs making the pipe construct safe for filenames containing
# whitespace while finally executing the rm command with the -f option on the output. 


find $dir -name "*.$fileExtensionType1" -type f -mtime +6 -print0 | xargs -0 rm -f
find $dir -name "*.$fileExtensionType2" -type f -mtime +6 -print0 | xargs -0 rm -f

# Additional usage information can be found at
#
# man find
# man xargs
# man rm
#
# Thank you!
