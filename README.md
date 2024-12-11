# Unhandled Exception in Dart Future

This repository demonstrates a scenario where an exception is thrown within a Dart `Future` but is not handled correctly, leading to potential issues.

## Description
The `fetchData` function simulates an asynchronous operation that might fail (network request). The initial implementation uses a `try-catch` block, but it doesn't thoroughly handle potential exceptions.

## Solution
The solution demonstrates a more robust `try-catch` block handling various exception types (`TimeoutException`, `Exception`, and a generic `catch` for unexpected errors).  The `finally` block ensures that certain cleanup actions (e.g., closing resources) always execute, regardless of success or failure.

## How to Run
1. Clone the repository.
2. Navigate to the project directory.
3. Run the code using the Dart SDK: `dart bug.dart`
4. Observe the output in the console.