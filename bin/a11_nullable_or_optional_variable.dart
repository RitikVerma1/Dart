void main() {
  //after dart version 2 it introduces the option of null variable
  // means we can create a variable with null value initially and later assign value to that variable

  int? a = null;

  // we can skip null here , because at initialization all variable are already null.
  print(a); //op:- Null

  int? b;
  print(b); //op :- Null

  b = 123;
  print(b); // op :_ 123

  String? s;

  // print (s!.length);

  // print length of s , and we are telling it that its not null, but it will throw error coz its null

//attempting to print the length of a string variable s, which is declared as nullable (String?). However, it's using the non-null assertion operator (!) before accessing the length property of s.
  s = "hello";
  print(s.length);
  // Check if not null then print length else print Null

  print("Length Of this string is : ${s.length}");
  // Check if null then print Null Else If not null then give the length

  String? p;

  print(p?.length ?? 0);
  //if Null then print 0 instead of null..
}
