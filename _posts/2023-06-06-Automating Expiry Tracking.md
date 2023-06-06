---
layout: post
title:  "Automating Expiry Tracking in Python with Spoiltracker"
date:   2023-06-06 12:44
categories: projects
---

![spoiltracker logo](/assets/images/spoiltracker_logo.png)

Managing product expiration dates is crucial for businesses that deal with perishable goods. Without an effective system in place, it can be challenging to track and manage the expiry dates of various products. In this blog post, we will explore a Python project that automates the process of tracking and reporting product expirations.

# Introducing Spoiltracker

[Spoiltracker on GitHub](www.github.com/psibir/spoiltracker)

The project revolves around an `ExpiryTracker` class, which is responsible for loading shelf life data, processing CSV files containing SKU information, and generating reports based on expiration dates. The class utilizes the `csv` module and the `datetime` module to handle CSV operations and date calculations. this makes Spoiltracker lightweight and it requires nothing but libraries from the standard library.

## Simple Product Expiry Management

Spoiltracker is useful for businesses that deal with perishable products and need to keep track of their expiration dates. It can be used in various industries such as food and beverage, agriculture, perishable goods logistics, warehousing, pharmaceuticals, and cosmetics. The package helps businesses to:

- Maintain a record of product SKUs, names, brands, and expiration dates.
- Calculate expiration dates based on the production dates and shelf life information.
- Generate an expiry report that lists products approaching their expiration dates within a specified number of days.
- Remove expired entries from the history file to keep the record up to date.
- Clear the history file when necessary.

## Business Use Case: Deli and Cheese Counters Spoilage Mitigation

Spoiltracker is a valuable tool for deli and cheese counters, as well as any industry where spoilage mitigation is crucial. It helps track the expiration dates of perishable products, such as deli meats, cheeses, and other fresh foods, allowing businesses to effectively manage inventory, reduce waste, and ensure product quality and safety.

By utilizing Spoiltracker in deli and cheese counters, businesses can:

- Optimize inventory management: Spoiltracker enables businesses to keep a record of products along with their production dates and shelf life information. This helps deli and cheese counter managers to efficiently manage their inventory by identifying products that are approaching their expiration dates. By staying proactive, managers can ensure that products are used or sold before they spoil, reducing waste and optimizing stock levels.

- Minimize spoilage and waste: Spoiltracker assists in identifying products that are close to their expiration dates. With the generated expiry reports based on specified criteria, such as the number of days until expiration, businesses can take proactive measures to minimize spoilage and waste. This can include implementing promotional activities, such as discounts or special offers, to encourage customers to purchase products before they expire.

- Ensure product quality and safety: Maintaining accurate and up-to-date records of product expiration dates is crucial for ensuring product quality and safety. Spoiltracker allows businesses to monitor and manage expiration dates effectively, reducing the risk of serving or selling expired products to customers. By staying on top of product freshness, businesses can enhance customer satisfaction and reputation.

- Streamline operations: Spoiltracker streamlines the process of managing product expiration dates. With its ability to remove expired entries from the history file and clear the history file, businesses can maintain a clean and organized record of products. This streamlines operations, making it easier for deli and cheese counter staff to access information, plan for product usage, and maintain compliance with food safety regulations.

## Installation

To install SpoilerTracker, follow these steps:

1. Clone the repository from GitHub:

   ```shell
   git clone https://github.com/psibir/spoiltracker.git
   ```

2. Navigate to the `spoilertracker/src` directory:

   ```shell
   cd spoilertracker/src
   ```

3. Install the required dependencies. It is recommended to use a virtual environment:

   ```shell
   python -m venv .venv      # Create a virtual environment (optional)
   source env/bin/activate  # Activate the virtual environment (optional)
   ```

4. Run the `spoilertracker.py` script:

   ```shell
   python spoilertracker.py
   ```

   This will execute the SpoilerTracker program.
   
The package can be also be installed using pip:

```shell
pip install spoiltracker
```

## Usage

Spoiltracker can be used from the command line or integrated into other Python scripts.

### Command Line Usage

To use Spoiltracker from the command line, run the following command:

```shell
python spoiltracker [csv_file] [production_date] [--days DAYS] [--remove-expired] [--expiry-report-dest FILE] [--clear-history]
```

- `[csv_file]` (optional): The path to the CSV file containing the product data. If not provided, Spoiltracker will generate an expiry report based on the existing history file.
- `[production_date]` (optional): The production date in the format "YYYY-MM-DD". If not provided, Spoiltracker will generate an expiry report based on the existing history file.
- `--days DAYS` (optional): The threshold for the number of days until expiration. Default is 3 days.
- `--remove-expired` (optional): Flag to remove expired entries from the history file and clear the expiry report file.
- `--expiry-report-dest FILE` (optional): Destination file for the expiry report. If not provided, the default file "expiryreport.csv" will be used.
- `--clear-history` (optional): Flag to clear the history file.

### Python Script Integration

To use Spoiltracker in a Python script, you can import the `ExpiryTracker` class and create an instance of it. Then, call the `run` method with the desired parameters.

```python
from spoiltracker import ExpiryTracker

expiry_tracker = ExpiryTracker()
expiry_tracker.run(csv_file="sku_list.csv", production_date="2023-06-01", days=5, remove_expired=True)
```

### Shelf Life Data

Spoiltracker requires shelf life data to calculate expiration dates. By default, it expects a CSV file named "shelflife.csv" in the same directory as the script or package using Spoiltracker. The file should have the following columns: SKU, Name, Brand, Shelf Life (in days).

```csv
SKU,Name,Brand,Shelf Life
123,Product 1,Brand 1,10
456,Product 2,Brand 2,7
```

## Customization

You can customize the shelf life file path by providing it when creating an instance of `ExpiryTracker`.

```python
expiry_tracker = ExpiryTracker(shelf_life_file="custom_shelflife.csv")
```

## Feedback

Let me know how you use it or how it can be improved!
