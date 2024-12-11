```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    // Simulate a network request failure
    throw Exception('Network request failed');
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
    // Clean up or release resources (if any) here
    print('This always executes.');
  }
}

void main() async {
  await fetchData();
}
```