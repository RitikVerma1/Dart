void main() {
  //after dart version 2 it introduces the option of null variable
  // means we can create a variable with null value initially and later assign value to that variable

  int? a;

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

  /*  Null-safe Operator:

print(p?.length ?? 0);
This line utilizes the null-safe operator (?.) to access the length property of p safely.
If p is not null, the code proceeds to get its length using the dot operator (.).
However, if p is null, the null-safe operator prevents a crash and instead returns null.
Nullish Coalescing Operator (??):

The nullish coalescing operator (??) 
is used here as a backup in case p is null after the null-safe operator check.
If p.length is null (because p itself was null), the expression ?? 0 kicks in and assigns the value 0 to the print statement.
In essence, this code snippet ensures that you can print the length of a string variable (p) 
 without worrying about a potential NullPointerException if p happens to be null.*/

  String? st;
  print(st?.length); // op: Null

  String? ss;
  ss = "hi";
  print(ss?.length); //op:-2
}
