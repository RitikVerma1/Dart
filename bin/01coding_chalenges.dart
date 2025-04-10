void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (r) {
    print("exceptopn : $r");
  } finally {
    print("completed");
  }
}
