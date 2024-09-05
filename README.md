# FullFabric Code Challenge: Missing Number Finder
This project contains a Ruby solution to the FullFabric code challenge. The task is to find the nth missing number in an unsorted sequence of unique positive integers.
## Problem Description
Given an unsorted array of unique integers that form a sequence, the goal is to find the nth missing number in the sequence (defaulting to the first missing number if `nth` is not specified).
### Example
1. Input: `arr = [4, 3, 6, 2, 1, 7]`, `nth = 1`
   Output: `5`
2. Input: `arr = [4, 3, 6, 2, 1, 7, 9]`, `nth = 2`
   Output: `8`
3. Input: `arr = [4, 3, 6, 2, 1, 7, 9]`, `nth = 3`
   Output: `10`
## Project Structure
- `missing_number_finder.rb`: Contains the implementation of the `MissingNumberFinder` class.
- `test_missing_number_finder.rb`: Contains test cases for the `MissingNumberFinder` class using the `minitest` framework.
## Getting Started
### Prerequisites
Ensure you have Ruby installed on your machine. You can verify the installation by running:
```bash
ruby -v
```
### Running the Test
To run the tests and verify the implementation, execute the following command from the project directory:
```bash
ruby test_missing_number_finder.rb
```
This will run the tests provided in `test_missing_finder.rb`

### Explanation of the Solution
The `MissingNumberFinder` class works as follows:
1. It converts the input array to a set for O(1) lookups.
2. It then iterates through positive integers, checking if they are in the set and counting missing numbers until it finds the nth missing number.
### Time Complexity
**Time Complexity:** `O(n + m)` where `n` is the size of the array, and `m` is the difference between the largest number in the sequence and the nth missing number.
This is optimized compared to an approach that involves sorting the array.
