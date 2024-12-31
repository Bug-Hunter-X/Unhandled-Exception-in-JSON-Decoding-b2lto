```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData here
    } else {
      // Handle error, but don't throw an exception here
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
  }
}
```