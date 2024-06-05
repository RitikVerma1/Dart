/*
they are used for providing controlled access to class properties and enabling encapsulation and additional functionality.
*/

class test {
  int _val1 = 0;
  int _val2 = 0;

//setter functions

  void set firstValue(int val) {
    _val1 = val * 10;
  }

  void set secondValue(int val) {
    _val2 = val * 10;
  }

//getter function
  int get firstValue {
    return _val1;
  }

  int get secondValue {
    return _val2;
  }
}

void main() {
  test tst = test();

  tst.firstValue = 10;
  tst.secondValue = 20;

  print(tst.firstValue);
  print(tst.secondValue);
}
