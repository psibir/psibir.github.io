---
layout: post
title:  "Automating Expiry Tracking in Python with Spoiltracker"
date:   2023-06-06 12:44
categories: projects
---

![spoiltracker logo](/assets/images/spoiltracker_logo.png)

Managing product expiration dates is crucial for businesses that deal with perishable goods. Without an effective system in place, it can be challenging to track and manage the expiry dates of various products. In this blog post, we will explore a Python project that automates the process of tracking and reporting product expirations.

# Introducing Spoiltracker

[Spoiltracker on GitHub](https://github.com/psibir/spoiltracker)

The project revolves around an `ExpiryTracker` class, which is responsible for loading shelf life data, processing CSV files containing SKU information, and generating reports based on expiration dates. The class utilizes the `csv` module and the `datetime` module to handle CSV operations and date calculations. this makes Spoiltracker as lightweight as it is versatile.

## Simple Product Expiry Management

Spoiltracker is useful for businesses that deal with perishable products and need to keep track of their expiration dates. It can be used in various industries such as food and beverage, agriculture, perishable goods logistics, warehousing, pharmaceuticals, and cosmetics. The package helps businesses to:

1. **Maintain Accurate Records**: Spoiltracker enables you to maintain a comprehensive record of product SKUs, names, brands, and expiration dates. With this information readily available, you can make informed decisions about your inventory and ensure products are used or sold before they spoil.

2. **Calculate Expiration Dates**: Using production dates and shelf life information, Spoiltracker automatically calculates accurate expiration dates for your products. Say goodbye to manual calculations and human errors!

3. **Generate Expiry Reports**: Spoiltracker generates detailed expiry reports that list products approaching their expiration dates within a specified number of days. These reports help you stay proactive and take timely action to minimize waste.

4. **Remove Expired Entries**: Spoiltracker allows you to remove expired entries from your history file, ensuring your records are always up to date and clutter-free.

5. **Streamline Operations**: By simplifying product expiration date management, Spoiltracker streamlines your operations. It saves you time and effort, improves accessibility to vital information, and helps you comply with food safety regulations.

## Business Use Case: Deli and Cheese Counters Spoilage Mitigation

Let's explore a specific business use case where Spoiltracker can make a significant impact: deli and cheese counters. These establishments heavily rely on managing perishable products, and Spoiltracker can help mitigate spoilage effectively. Here's how Spoiltracker benefits deli and cheese counters:

1. **Optimize Inventory Management**: With Spoiltracker, deli and cheese counter managers can efficiently manage their inventory. By keeping a record of products along with their production dates and shelf life information, managers can identify products that are approaching their expiration dates. This proactive approach ensures products are used or sold before spoilage, reducing waste and optimizing stock levels.

2. **Minimize Spoilage and Waste**: Spoiltracker assists in identifying products that are close to their expiration dates. By generating expiry reports based on specified criteria (e.g., the number of days until expiration), businesses can take proactive measures to minimize spoilage and waste. This can include implementing promotional activities, such as discounts or special offers, to encourage customers to purchase products before they expire.

3. **Ensure Product Quality and Safety**: Accurate and up-to-date records of product expiration dates are crucial for ensuring product quality and safety. Spoiltracker allows businesses to monitor and manage expiration dates effectively, reducing the risk of serving or selling expired products to customers. By staying on top of product freshness, businesses can enhance customer satisfaction and maintain a strong reputation.

4. **Streamline Operations**: Spoiltracker streamlines the process of managing product expiration dates. With features like removing expired entries from the history file and clearing the history file itself, businesses can maintain a clean and organized record of products. This streamlines operations, making it easier for deli and cheese counter staff to access information, plan for product usage, and maintain compliance with food safety regulations.

## Installation Guide

Getting started with Spoiltr

acker is a breeze. Just follow these simple steps to install it on your system:

1. **Clone the Repository**: Begin by cloning the Spoiltracker repository from GitHub. Open your terminal and run the following command:

   ```shell
   git clone https://github.com/psibir/spoiltracker.git
   ```

2. **Navigate to the Source Directory**: Once cloned, navigate to the `spoiltracker/src` directory using the following command:

   ```shell
   cd spoiltracker/src
   ```

3. **Create a Virtual Environment**: It is recommended to create a virtual environment to isolate Spoiltracker's dependencies. Run the following commands to create and activate a virtual environment:

   ```shell
   python -m venv .venv
   source .venv/bin/activate
   ```

4. **Install Dependencies**: Spoiltracker relies on a few external dependencies. To install them, run the following command:

   ```shell
   pip install -r requirements.txt
   ```

5. **Execute Spoiltracker**: Finally, you're ready to run Spoiltracker! Execute the following command to start the Spoiltracker script:

   ```shell
   python spoiltracker.py
   ```

   This will initiate the Spoiltracker functionality, allowing you to manage your product expiration dates effortlessly.

Alternatively, you can install Spoiltracker using `pip` by running the following command:

```shell
pip install spoiltracker
```

## Usage Guide

Spoiltracker provides various options and features to cater to your specific needs. Here's a detailed guide on how to utilize Spoiltracker effectively:

### Single CSV Processing

To process a single CSV file, use the `--csv_file` and `--production_date` arguments. Specify the path to the CSV file and the production date in the format `YYYY-MM-DD`. Here's an example command:

```bash
spoiltracker --csv_file path/to/file.csv --production_date 2023-06-01
```

This command will process the specified CSV file, calculate the expiration dates based on the shelf life data, and append the results to the history file.

### Batch Processing

To batch process multiple CSV files, place the files in a directory and use the `--batch` argument to specify the directory path. The files in the directory must be named in the format `YYYY-MM-DD.csv`, representing the production dates. Here's an example command:

```bash
spoiltracker --batch path/to/directory
```

SpoilTracker will process each CSV file in the batch, calculate the expiration dates, and append the results to the history file.

### Expiry Report

To generate an expiry report, use the `--days` argument to set the threshold for the number of days until expiration. By default, SpoilTracker uses a threshold of 3 days. The expiry report includes the SKUs, names, brands, and expiration dates of the products that fall within the specified threshold. Here's an example command:

```bash
spoiltracker --days 5
```

The expiry report will be saved in the default output file `./output/expiryreport.csv`. You can also specify a custom output file using the `--output-dest` argument.

### Clearing Expired Entries

If you want to remove expired entries from the history file and clear the expiry report file, use the `--clear-expired` flag. Here's an example command:

```bash
spoiltracker --clear-expired
```

This command will remove expired entries from the history file and clear the expiry report file.

### Clearing History File

To clear the history file, use the `--clear-history` flag. Here's an example command:

```

bash
spoiltracker --clear-history
```

This command will clear the history file, removing all entries.

### Outputting a Pretty-Printed Expiry Report

To output a pretty-printed expiry report as a text file, use the `--table` flag. Here's an example command:

```bash
spoiltracker --table
```

This command will generate the expiry report and save it as `./output/expiryreport.txt`. The text file will contain a nicely formatted table with the SKUs, names, brands, and expiration dates of the products that fall within the specified threshold.

## Method Description

If you want to dig deeper into the inner workings of Spoiltracker, here's a description of the available methods:

- `load_shelf_life_data()`: Loads the shelf life data from the shelf life file.
- `calculate_expiration_date(production_date, shelf_life)`: Calculates the expiration date based on the production date and shelf life.
- `append_to_history(data)`: Appends data to the history file.
- `append_to_expiry_report(data, days, output_dest=None)`: Appends data to the expiry report file for products that fall within the specified threshold.
- `sort_expiry_report(output_dest)`: Sorts the expiry report file by expiration date.
- `generate_expiry_report(days, output_dest=None)`: Generates the expiry report for products that fall within the specified threshold.
- `clear_expired_entries()`: Removes expired entries from the history file and clears the expiry report file.
- `clear_history_file()`: Clears the history file.
- `process_csv(csv_file_path, prod_date)`: Processes a CSV file, calculates expiration dates, and returns the processed data.
- `print_table(output_dest=None, show_console=False)`: Prints a pretty-formatted table of the expiry report and saves it as a text file.
- `run(csv_file=None, production_date=None, days=3, clear_expired=False, output_dest=None, clear_history=False, print_table=False)`: Runs the SpoilTracker functionality based on the provided arguments.

### Python Script Integration

If you prefer integrating Spoiltracker into your own Python script, you can do so by importing the `ExpiryTracker` class and creating an instance of it. Then, call the `run` method with the desired parameters. Here's an example:

```python
from spoiltracker import ExpiryTracker

expiry_tracker = ExpiryTracker()
expiry_tracker.run(csv_file="sku_list.csv", production_date="2023-06-01", days=5, remove_expired=True)
```

## Customize Shelf Life Data

Spoiltracker requires shelf life data to calculate expiration dates. By default, it expects a CSV file named "shelflife.csv" in the `./csv` directory. The file should have the following columns: SKU, Name, Brand, and "Shelf Life" (in days). However, you can customize the shelf life file path by providing it when creating an instance of `ExpiryTracker`. Here's an example:

```python
expiry_tracker = ExpiryTracker(shelf_life_file="custom_shelflife.csv")
```

Feel free to tailor the shelf life data to your specific business needs. 

## Need Help?

[Contact me](https://psibir.github.io/page/contact/) for assistance on how you can use spoiltracker for your business.

## Feedback

Let me know how you use it or how it can be improved!
