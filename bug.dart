```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    // If the simulated network request fails
    throw Exception('Network request failed');
    // Process the data (this line will not be reached if the request fails)
    // print('Data fetched successfully');
  } on TimeoutException catch (e) {
    // Handle timeout exceptions
    print('Timeout error: $e');
  } on Exception catch (e) {
    // Handle other exceptions
    print('Error: $e');
  } catch (e) {
    // Handle any other unexpected errors
    print('Unexpected error: $e');
  } finally {
    print('This always executes.');
  }
}

void main() async {
  await fetchData();
}
```