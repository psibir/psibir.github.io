---
layout: post
title:  "wordlink: A Powerful Tool for Text Analysis"
date:   2023-05-21 20:20
tags: projects
---

![image](/assets/images/wordlink_logo.png)

Today we will explore a Python module called wordlink that allows you to generate word links within a given directory. This module is designed to help you quickly locate specific words or phrases in files and create links to their occurrences, making it an invaluable tool for text analysis and exploration.

See it on [PyPi](https://pypi.org/project/wordlink/)

You can clone or fork `wordlink` [here](https://github.com/psibir/wordlink)

## Design and Functionality

The wordlink module leverages several key Python libraries to achieve its functionality. Let’s take a closer look at its design and build process:

## Required Libraries

- os: This module provides a way to interact with the operating system, allowing the script to traverse directories and access file paths.
- argparse: This library simplifies the process of parsing command-line arguments and options.
- fuzzysearch: It provides fuzzy string matching capabilities, specifically the find_near_matches function, which helps identify approximate matches of a search term within a line of text.
- prettytable: This library enables the creation of nicely formatted tables for console output.

### WordLinkGenerator Class

The core functionality is encapsulated within the WordLinkGenerator class, which is initialized with three parameters: search_term, search_directory, and output_file. These parameters define the search term to look for, the directory to search within, and the optional output file for the results.

The class provides two main methods:

### find_word_locations(file_path)

This method takes a file path as input and searches for occurrences of the search_term within that file. It reads the file line by line, using find_near_matches to identify approximate matches. The method returns a list of tuples, each containing the file path, line number, line text, and the starting index of the match.

### generate_links()

This method is responsible for traversing the search_directory and processing all files within it. For each file, it calls find_word_locations to obtain the word locations. The results are stored in a list and then either output to an HTML file or displayed in the console, depending on the presence of the output_file parameter.

### output_links_html(word_locations)

This method generates an HTML output file containing a table of word locations. It takes a list of word locations as input and constructs HTML code to display the information in a table format. Each row of the table includes the file path, line number, and a clickable link to the specific line containing the word. The output is written to the specified output_file.

### output_links_console(word_locations)

This method generates a formatted table using the prettytable library and outputs the results directly to the console. Each row of the table represents a word location, displaying the file path, line number, and line text.

## Usage

The module is designed to be executed from the command line. It utilizes the argparse library to parse the required arguments and options. The mandatory arguments are search_term (the word or phrase to search for) and search_directory (the directory to search within). An optional -o or --output_file argument allows specifying an output file for the results.

Once the command-line arguments are parsed, the WordLinkGenerator object is instantiated with the provided arguments, and the generate_links method is called to perform the search and output the results.

## Business Use Case: Analyzing Customer Feedback for Product Improvement

The `wordlink` module can be a valuable tool for businesses aiming to improve their products or services based on customer feedback. Let's consider a specific use case: a software company that wants to analyze customer reviews and identify recurring issues or feature requests.

1. **Data Collection**: The company collects customer feedback from various sources, such as online review platforms, support tickets, and feedback forms. They save the feedback as plain text files, with each file representing a single customer comment.

2. **Text Analysis**: The company wants to analyze the feedback to understand the most common issues or requested features. They can use the `wordlink` module to search for specific keywords or phrases related to common problems or desired enhancements.

3. **Generating Word Links**: The company specifies the search term as a relevant keyword or phrase, sets the search directory to the location where the feedback files are stored, and runs the `wordlink` script. The module scans through each feedback file, identifies occurrences of the search term, and generates clickable links to those instances.

4. **Analyzing Results**: The `wordlink` module provides the company with the output either in an HTML file or displayed directly in the console. They can navigate the generated links to quickly access the relevant customer feedback and gain insights into the specific issues or requested features.

5. **Actionable Insights**: With the identified recurring issues and feature requests, the company can prioritize their product improvement efforts accordingly. They can address common pain points, fix bugs, and implement highly requested features to enhance customer satisfaction and loyalty.

By utilizing the `wordlink` module, businesses can streamline the process of analyzing customer feedback, save time in manually searching through multiple files, and gain actionable insights to drive product improvement initiatives.
