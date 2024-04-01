void main(){
  String s= "Hello world";
      // s=s+ " New"  ;     // without Interpolation
      // print(s);


  // Using Interpolation

    //s= "${s} new";   // This concatenated "Hello world" and " new"
                    //Don't unnecessarily use brackets , that used only when we use method with string and then add something

    s= "$s new";    //Concatenate string s with "new" text; 
    print(s);

    s= "${s.length} is the length ";
    print(s);

     s= "$s ${s.length} is the length ";
     print(s);


      print("Length Of this string is : ${s.length}");




     /* Use $ sigh normally and not as a Interpolation just add "\" this slash before the $ sign and it will loos its importance.*/

     String cost = "\$20";
    print(cost);

}