# Unhandled Exception in JSON Decoding (Dart)

This repository demonstrates a common error in Dart applications involving network requests and JSON decoding. The original code lacks proper exception handling for `jsonDecode`, which can throw a `FormatException` if the JSON data is malformed.

The improved solution includes a `try-catch` block specifically to handle `FormatException`, ensuring the application doesn't crash due to invalid JSON.

## Bug
The original code (`bug.dart`) fetches data from an API, but fails to handle potential `FormatException` during `jsonDecode`.

## Solution
The solution (`bugSolution.dart`) includes a `try-catch` block to gracefully handle the `FormatException`, preventing unexpected app termination.