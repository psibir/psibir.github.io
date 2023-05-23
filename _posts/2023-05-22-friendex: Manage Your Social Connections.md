---
layout: post
title:  "friendex: Manage Your Social Connections"
date:   2023-05-22 23:01
categories: projects
---

It's easy to lose track of the people who matter most to us. Whether it's friends, family, or colleagues, maintaining meaningful connections requires effort and attention. That's where the `friendex` comes in. With this command-line tool, you can effortlessly manage your social connections, keep track of when you last spoke to someone, and even search for friends based on specific criteria. Let's take a closer look at the code behind this powerful tool.

## Code Overview

The code is written in Python and utilizes several libraries to enhance its functionality. Here's a breakdown of the different components and their purposes:

### Importing Dependencies

The code begins by importing the necessary dependencies:

```python
import argparse
import sqlite3
from datetime import datetime
from fuzzywuzzy import fuzz
```

- `argparse` is used to parse command-line arguments and options.
- `sqlite3` is a module that provides an interface to the SQLite database.
- `datetime` allows for the manipulation and formatting of dates and times.
- `fuzzywuzzy` is a library for fuzzy string matching and comparison.

### Friend Class

Next, there is a `Friend` class that represents a friend in the Friend Tracker. It has the following attributes and methods:

#### Attributes:

- `name`: The name of the friend.
- `last_spoken`: The last time the friend was spoken to, stored as a `datetime` object.

#### Methods:

- `__init__(self, name, last_spoken=None)`: Initializes a `Friend` object with a name and an optional last spoken date.
- `_parse_last_spoken(self, last_spoken)`: Parses the last spoken date, converting it from a string to a `datetime` object.
- `update_last_spoken(self, time=None)`: Updates the last spoken date for the friend. If no time is provided, the user is prompted to enter it.
- `get_days_since_spoken(self)`: Calculates the number of days since the friend was last spoken to.

### FriendTracker Class

The `FriendTracker` class is responsible for managing the friend database and providing various functionalities. Its key features include:

#### Attributes:

- `db_file`: The filename of the SQLite database.
- `connection`: The SQLite connection object.

#### Methods:

- `__init__(self, db_file)`: Initializes a `FriendTracker` object with a database filename.
- `connect(self)`: Connects to the SQLite database and creates the necessary tables if they don't exist.
- `close(self)`: Closes the database connection.
- `add_friend(self, name)`: Adds a friend to the database, prompting the user to enter the last spoken date and topic.
- `read_friends(self)`: Retrieves and displays a list of all friends in the database along with their last spoken dates and topics.
- `_display_friend_records(self, name)`: Displays the records of a specific friend, including the last spoken dates and topics.
- `update_last_spoken(self, name, time=None)`: Updates the last spoken date for a friend.
- `_record_last_spoken_topic(self, name, last_spoken, topic=None)`: Records the last spoken date and topic for a friend.
- `delete_friend(self, name)`: Deletes a friend and their records from the database.
- `search_by_days_since_spoken(self, days)`: Searches for friends based on the number of days since they were last spoken to.
- `search_by_topic(self, topic)`: Searches for friends based on a specific topic of discussion.
- `check_friend(self, name)`: Retrieves and displays information about a specific friend, including their last

 spoken date and days since then.
- `display_help(self)`: Displays the help message with information about the available options and their usage.

### Command-Line Interface

The main function sets up the command-line interface using `argparse`. It defines the available options and their corresponding actions. Depending on the provided arguments, the appropriate methods of the `FriendTracker` class are called to perform the desired operations.

## Getting Started

To start using the `friendex` CLI, follow these steps:

1. Make sure you have Python installed on your system.
2. Download the code and save it in a file, such as `friend_tracker.py`.
3. Open a terminal or command prompt and navigate to the directory where you saved the file.
4. Install the required dependencies by running the following command:
   ```
   pip install -r requirements.txt
   ```
5. Run the CLI by executing the following command:
   ```
   python friend_tracker.py [OPTIONS]
   ```

## Available Options

Here are the available options and their functionalities:

- `--add NAME`: Add a friend to the database.
- `--read`: Read the list of all friends and their last spoken dates.
- `--update NAME`: Update the last spoken date for a friend.
- `--delete NAME`: Delete a friend from the database.
- `--check NAME`: Check the last spoken date and days since then for a friend.
- `--days-since DAYS`: Search for friends based on the number of days since they were last spoken to.
- `--topic TOPIC`: Search for friends based on a specific topic of discussion.
- `--dbfile DBFILE`: Specify the SQLite database file to use (default: `friendex.db`).
- `--help`: Display the help message with information about the available options.

## Conclusion

Friendex is a powerful tool for managing your social connections. With its simple command-line interface, you can easily add, update, delete, and search for friends based on different criteria. Whether you want to keep track of when you last spoke to someone or find friends with similar interests, friendex has got you covered. Give it a try and enhance your social connections today!
