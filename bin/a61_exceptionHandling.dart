void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Execution completed.');
  }
}
