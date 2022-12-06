import 'package:flutter/material.dart';

import 'Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  bool isEmpty = false;

  bool isPasword = false;

  TextEditingController fullName = TextEditingController();



  TextEditingController pasword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios))
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text("Sigin In",style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 70,top: 31),
              child: Text("Welcome to",style: TextStyle(fontSize: 34),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40,top: 20),
              child: Text("Enter your Phone number or Email",style: TextStyle(fontSize: 16,color: Color(0XFF868686)),),
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
                    text: "Create new account.",
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.phone_android_outlined,
                        color: Color(0xff22A45D),
                      ), onPressed: () {  },

                    )
                ),
              ),
            ),
            isEmpty ? Text("Full Name kiriting", style: TextStyle(color: Colors.red),) : SizedBox.shrink(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: TextFormField(
                onTap: () {
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
                } if(fullName.text.isNotEmpty && pasword.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Page3(

                  )
                  ),
                  ),
                  );
                }





              },
            ),
            SizedBox(height: 24,),

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
