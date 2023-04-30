---
layout: post
title:  "cheese-recommendation"
date:   2023-04-30 11:07
categories: projects
---

`cheese-recommendation` is a Python program that recommends cheeses based on user input. The program reads in a list of cheeses from a tab-separated values (TSV) file and uses a TfidfVectorizer from scikit-learn to create a matrix of the cheeses' descriptions. It then uses cosine similarity to calculate the similarity between the user's input and the cheese descriptions, and returns a list of the most similar cheeses. The program also has the ability to exclude certain qualities or characteristics from the recommendations.

`cheese-recommendation` is implemented as a Python class, `CheeseRecommender`, with a method `get_recommendations` that takes in optional parameters for user input, number of recommendations, start index, and exclude words. The class uses pandas to read in the TSV file and store the data in a dataframe. The `get_recommendations` method fills in any missing data in the dataframe, concatenates the columns of each cheese into a single string, and uses the TfidfVectorizer to create a matrix of the cheese descriptions. If user input is provided, the method calculates the cosine similarity between the user input and the cheese descriptions and returns a list of the most similar cheeses. If no user input is provided, the method returns a random list of cheeses.

The program prompts the user for input and passes it to the `get_recommendations` method, along with any exclude words. If the user provides exclude words, the program filters out any cheeses that contain those words in their description. The program then uses the `tabulate` library to print out a table of the recommended cheeses' names, origins, textures, flavors, and aromas. If the user chooses to see more information about a particular cheese, the program prints out additional details about the cheese, including its origin, region, kind, milk, producer, and description.

I created the cheese-recommendation script to demonstrate my comprehension in Python programming and showcase my ability to leverage data to provide valuable insights in my current industry. Through this project, I aimed to showcase my skills in utilizing various data analysis and machine learning techniques to deliver personalized recommendations to users based on their input. This project serves as an example of my proficiency in developing scalable and efficient solutions that can be applied to a wide range of use cases.

Here is a link to the project: [cheese-recommendation](https://github.com/psibir/cheese-recommendation)
