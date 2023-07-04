---
layout: post
title:  "Comparing C and Python: Thunderstorm Distance Calculator"
date:   2023-07-04 13:03
categories: article
tags: ['programming', 'computerscience']
---

In this post, we'll compare the C code of a [Thunderstorm Distance Calculator](https://github.com/psibir/tstorm_dist_calc) with its Python counterpart. By examining the differences between the two implementations, we can gain insights into how Python's syntax and features diverge from C.

Let's start by reviewing the original C code:

```c
#include <stdio.h>

// Constants
#define SPEED_OF_SOUND 343.2
#define INVALID_DISTANCE -1.0
#define INVALID_INPUT -1.0

// Calculate distance based on time elapsed
double calculate_distance(double time_elapsed) {
    if (time_elapsed < 0) {
        printf("Invalid input: time elapsed cannot be negative.\n");
        return INVALID_DISTANCE;
    }
    return SPEED_OF_SOUND * time_elapsed;
}

// Get time elapsed from user input
double get_time_elapsed() {
    double time_elapsed;
    printf("Enter the time elapsed (in seconds) between seeing the lightning and hearing the thunder: ");
    if (scanf("%lf", &time_elapsed) != 1) {
        printf("Error reading input. Please enter a valid floating-point number.\n");
        return INVALID_INPUT;
    }
    return time_elapsed;
}

// Print the calculated distance
void print_distance(double distance) {
    if (distance >= 0) {
        printf("The thunderstorm is approximately %.2f meters away.\n", distance);
    }
}

// Main program entry point
int main() {
    double time_elapsed = get_time_elapsed();
    double distance = calculate_distance(time_elapsed);
    print_distance(distance);
    return 0;
}
```

Now, let's examine the Python version, emphasizing the differences from the original C code:

```python
# Constants
SPEED_OF_SOUND = 343.2
INVALID_DISTANCE = -1.0
INVALID_INPUT = -1.0

# Calculate distance based on time elapsed
def calculate_distance(time_elapsed):
    if time_elapsed < 0:
        print("Invalid input: time elapsed cannot be negative.")
        return INVALID_DISTANCE
    return SPEED_OF_SOUND * time_elapsed

# Get time elapsed from user input
def get_time_elapsed():
    while True:
        try:
            time_elapsed = float(input("Enter the time elapsed (in seconds) between seeing the lightning and hearing the thunder: "))
            return time_elapsed
        except ValueError:
            print("Error reading input. Please enter a valid floating-point number.")

# Print the calculated distance
def print_distance(distance):
    if distance >= 0:
        print(f"The thunderstorm is approximately {distance:.2f} meters away.")

# Main program entry point
def main():
    time_elapsed = get_time_elapsed()
    distance = calculate_distance(time_elapsed)
    print_distance(distance)

if __name__ == "__main__":
    main()
```

**1. Syntax and Variable Declarations:**
- In C, variable declarations start with their data type, followed by the variable name. For example, `double time_elapsed`.
- In Python, data types are dynamically inferred, so variable declarations only require the variable name. For example, `time_elapsed`.

**2. Preprocessor Directives and Constants:**
- C relies on preprocessor directives (`#define`) to define constants. For example, `#define SPEED_OF_SOUND 343.2`.
- Python uses variable assignments to define constants. For example, `SPEED_OF_SOUND = 343.2`.

**3. Input and Output:**
- C uses `printf()` for output and `scanf()` for input. For example, `printf("Enter the time elapsed...")` and `scanf("%lf", &time_elapsed)`.
- Python utilizes `print()` for output and `input()` for input. For example, `

print("Enter the time elapsed...")` and `time_elapsed = float(input())`.

**4. Exception Handling:**
- In C, error handling often involves using return codes or printing error messages. For example, returning `INVALID_DISTANCE` or printing an error message with `printf()`.
- Python incorporates exception handling using `try-except` blocks. For example, catching a `ValueError` when converting input to a floating-point number.

**5. String Formatting:**
- C uses `printf()` with format specifiers (e.g., `%f`) for string formatting.
- Python employs f-strings (formatted string literals) for string interpolation. For example, `"The thunderstorm is approximately {distance:.2f} meters away."`.

**6. Loop Constructs:**
- In C, a `while` loop is commonly used for iterative tasks, as shown in the `get_time_elapsed()` function. The loop condition is expressed as `while (1)` or `while (true)` for an infinite loop.
- In Python, the `while` loop has a similar syntax, but the condition is expressed as `while True` for an infinite loop. Additionally, Python provides other loop constructs like `for` loops that are commonly used for iterating over sequences.

**7. Function Definitions:**
- In C, functions are defined with a return type and use the `void` keyword when not returning a value. For example, `void print_distance(double distance)`.
- In Python, functions do not specify a return type, and the absence of a return statement implies a return value of `None`.

**8. String Concatenation:**
- In C, string concatenation often involves using the `printf()` function with format specifiers or manually manipulating character arrays.
- In Python, string concatenation can be done using the `+` operator or by utilizing formatted strings.

**Similarities**

Despite the differences outlined above, there are some similarities between the C and Python implementations:
- Both versions use functions to organize code and perform specific tasks.
- Both handle input and output operations to interact with the user.
- They follow a modular approach by separating functionality into different functions.
- The core logic of calculating the distance remains the same, as both languages support basic arithmetic operations.

