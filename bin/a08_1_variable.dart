void main(){

 int a=10;
 double d= 20.23;
 String s = "Hello world!";
  s= s + " Add text";        // adding some text to string (This method not recommended)
 print(s);                    // Use string interpolation instead 
                    

 String multilineString = '''This 
 
 is 
  

 multiline string Used for Bigger Value''';

print(multilineString);
 
 bool isBigger= a>d;

 print (isBigger);
 
/* 

dynamic: can change TYPE of the variable, & can change VALUE of the variable later in code.

var: can't change TYPE of the variable, but can change VALUE of the variable later in code.

final: can't change TYPE of the variable, & can't change VALUE of the variable later in code. */

dynamic dyn = 122222;
print(dyn);

dyn ="changed value";
print(dyn);




}