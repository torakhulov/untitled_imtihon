import 'package:flutter/material.dart';
import 'package:untitled_imtihon/Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 68.7),
            child: Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage(
                    "assets/Illustrations.png"
                  ),

                )

              ),
            ),
          ),
          Text("Choose your food",style: TextStyle(fontSize: 30),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 20),
            child: Text("Easily find your type of food craving and you’ll get delivery in wide range.",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
          ),
          SizedBox(
            height: 45,
          ),
          InkWell(
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: Center(
                child: Text("Next",style: TextStyle(fontSize: 22,color: Colors.white),),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return Page2();
              }));
            },
          )
        ],
      ),
    );
  }
}
