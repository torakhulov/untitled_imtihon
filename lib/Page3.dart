import 'package:flutter/material.dart';

import 'Page4.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  bool isEmpty = false;
  bool isPasword = false;

  TextEditingController fullName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController pasword = TextEditingController();

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios))
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Forgot Password",style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 70,top: 31),
              child: Text("Create Account",style: TextStyle(fontSize: 34),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40,top: 20),
              child: Text("Enter your Name, Email and Password",style: TextStyle(fontSize: 16,color: Color(0XFF868686)),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "for sign up. ",
                        style: TextStyle(
                            color: Color(0XFF868686),
                            fontSize: 16
                        )
                    ),
                    TextSpan(
                        text: "Already have account?",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16
                        )
                    )
                  ]
              )),
            ),
            SizedBox(height: 34,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: TextFormField(
                controller: fullName,
                onChanged: (value) {
                  isEmpty = false;
                  setState(() {});
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: TextStyle(color: Colors.blue),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 35, minHeight: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4),

                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4),

                    ),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
            isEmpty ? Text("Full Name kiriting", style: TextStyle(color: Colors.red),) : SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 14),
              child: TextFormField(
                controller: email,
                onChanged: (value) {
                  isEmpty = false;
                  setState(() {});
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Enter email",
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    )
                ),
              ),
            ),
            isEmpty ? Text("Email kiriting", style: TextStyle(color: Colors.red),) : SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: TextFormField(
                onChanged: (value) {
                  isEmpty = false;
                  setState(() {});
                },
                style: TextStyle(color: Colors.black),
                obscureText: isPasword,
                controller: pasword,

                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasword = !isPasword;
                        });
                      },
                    )


                ),
              ),
            ),

            isEmpty ? Text("Pasword kiriting", style: TextStyle(color: Colors.red),) : SizedBox.shrink(),
            SizedBox(height: 20,),

            Text("Forget Password?", style: TextStyle(color: Colors.black),),
            SizedBox(height: 20,),

            InkWell(
              child: Container(
                height: 48,
                width: 310,
                decoration: BoxDecoration(
                    color: Color(0xff42C83C),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Center(
                  child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 14),),
                ),
              ),
              onTap: (){
                if(fullName.text.isEmpty){
                  isEmpty = true;
                  setState(() {

                  });
                } if(pasword.text.isEmpty){
                  isPasword = true;
                  setState(() {

                  });
                }if(fullName.text.isNotEmpty && email.text.isNotEmpty && pasword.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Page4(

                  )
                  ),
                  ),
                  );
                }
              }





            ),
            SizedBox(height: 24,),
            Text("By Signing up you agree to our Terms", style: TextStyle(color: Color(0xff868686),fontSize: 16),),
            Text("Conditions & Privacy Policy.", style: TextStyle(color: Color(0xff868686),fontSize: 16),),
            Text("or", style: TextStyle(color: Color(0xff868686),fontSize: 16),),

            SizedBox(height: 24,),

            Container(
              height: 48,
              width: 310,
              decoration: BoxDecoration(
                  color: Color(0xff395998),
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Path.png"
                                ),
                                fit: BoxFit.fill
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("CONNECT WITH FACEBOOK",style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ]
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 48,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Group 26.png"
                                ),
                                fit: BoxFit.fill
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("CONNECT WITH GOOGLE",style: TextStyle(color: Colors.white,fontSize: 12),),
                    ),
                  ]
              ),
            ),



          ],
        ),
      ),
    );
  }
}
