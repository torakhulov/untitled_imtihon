import 'package:flutter/material.dart';
import 'package:untitled_imtihon/Page4_Model.dart';

import 'package:untitled_imtihon/Page5_Model.dart';

import 'Page5_model2.dart';
import 'Page5_model3.dart';
import 'Page5_model4.dart';

class Page5 extends StatefulWidget {
  final Page4Model data;
   Page5({Key? key,required this.data, }) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}


class _Page5State extends State<Page5> {
  
  List<Page5Model> listPage5 = [
    Page5Model(
        Avatar: "assets/s3.png",
        Text1: "Cookie Sandwich",
        Text2: "\$\$ . Chinese"),
    Page5Model(
        Avatar: "assets/s2.png",
        Text1: "Chow Fun",
        Text2: "\$\$ . Chinese"),
    Page5Model(
        Avatar: "assets/s3.png",
        Text1: "Dim SUm",
        Text2: "\$\$ . Chinese"),
  ];

  List<String> listOfpage = [
  "Beef & Lamb",
   "Seafood",
   "Appetizers",
   "Dim Sum"
  ];

  List<Page5Model3> listOfPage3 = [
    Page5Model3(
        Avatar: "assets/a1.png",
        Text1: "Cookie Sandwich",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
    Page5Model3(
        Avatar: "assets/a2.png",
        Text1: "Combo Burger",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
    Page5Model3(
        Avatar: "assets/a3.png",
        Text1: "Combo Sandwich",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
  ];
  List<Page5Model4> listOfPage4 = [
    Page5Model4(
        Avatar: "assets/b1.png",
        Text1: "Oyster Dish",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
    Page5Model4(
        Avatar: "assets/b2.png",
        Text1: "Oyster On Ice",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
    Page5Model4(
        Avatar: "assets/b3.png",
        Text1: "Fried Rice on Pot",
        Text2: "Shortbread, chocolate turtle",
        Text3: "\$\$  Chinese",
        Prace: "USD7.4", Text4: 'cookies, and red velvet.'),
  ];




  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              width: 375,
              height: 280,
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                  image: DecorationImage(
                      image:  AssetImage(widget.data.Avatar),
                      fit: BoxFit.cover
                  )

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 220,top: 20),
                      child: Icon(Icons.share,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(Icons.search_outlined,color: Colors.white,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text(widget.data.Text1,style: TextStyle(fontSize: 24),),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(widget.data.Text2,style: TextStyle(fontSize: 24),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Icon(Icons.monetization_on,size: 22,color: Colors.green,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text("Free",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Icon(Icons.access_time,size: 22,color: Colors.green,),
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text("25 min",style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Container(
                    width: 113,
                    height: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.green,width: 2)
                    ),
                    child: Center(
                      child: Text("Take away",style: TextStyle(color: Colors.green),),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Delivery",style: TextStyle(fontSize: 12,color: Color(0xff010F07)),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Minutes",style: TextStyle(fontSize: 12,color: Color(0xff010F07)),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(right: 200,top: 15),
              child: Text("Featured Items",style: TextStyle(fontSize: 20,color: Color(0xff010F07)),),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listPage5.length,
                  itemBuilder: (context,index){

                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            width: 200,
                            height: 119,

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      listPage5[index].Avatar
                                  ),
                                  fit: BoxFit.cover
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10)),

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text(listPage5[index].Text1,style: TextStyle(fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(listPage5[index].Text2,style: TextStyle(fontSize: 12,color: Color(0xff868686)),),
                        ),


                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfpage.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(listOfpage[index],style: TextStyle(fontSize: 24),),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text("Most Populars",style: TextStyle(fontSize: 24),),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: listOfPage3.length,
                  itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  width: 332,
                  height: 160,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(32))
                  ),
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          listOfPage3[index].Avatar
                                      ),
                                    fit: BoxFit.cover
                                  ),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                            ),

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(listOfPage3[index].Text1,style: TextStyle(fontSize: 18),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(listOfPage3[index].Text2,style: TextStyle(fontSize: 16,color: Color(0xff010F07))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6,right: 40),
                                  child: Text(listOfPage3[index].Text4,style: TextStyle(fontSize: 16,color: Color(0xff010F07))),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 90,top: 10),
                                      child: Text(listOfPage3[index].Text3,style: TextStyle(fontSize: 14,color: Color(0xff010F07))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(listOfPage3[index].Prace,style: TextStyle(fontSize: 14,color: Colors.green))),
                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text("Sea Foods",style: TextStyle(fontSize: 24),),
            ),

            SizedBox(height: 24,),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: listOfPage4.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      width: 332,
                      height: 160,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(32))
                      ),
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              listOfPage4[index].Avatar
                                          ),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(8))
                                  ),
                                ),

                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Text(listOfPage4[index].Text1,style: TextStyle(fontSize: 18),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Text(listOfPage4[index].Text2,style: TextStyle(fontSize: 16,color: Color(0xff010F07))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6,right: 40),
                                      child: Text(listOfPage4[index].Text4,style: TextStyle(fontSize: 16,color: Color(0xff010F07))),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 90,top: 10),
                                          child: Text(listOfPage4[index].Text3,style: TextStyle(fontSize: 14,color: Color(0xff010F07))),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(listOfPage4[index].Prace,style: TextStyle(fontSize: 14,color: Colors.green))),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),



          ],
        ),
      ),
    );
  }
}
