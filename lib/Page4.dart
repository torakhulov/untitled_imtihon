import 'package:flutter/material.dart';
import 'package:untitled_imtihon/Page5.dart';

import 'Page4_Model.dart';
import 'Page4_Model2.dart';
import 'Page6.dart';
import 'page4_model3.dart';

class Page4 extends StatelessWidget {
   Page4({Key? key}) : super(key: key);

  List<Page4Model> listPage4 = [
    Page4Model(
        Text1: "Daylight Coffee",
        Text2: "Colarodo, San Francisco",
        Text3: "25min  Free delivery",
        Text4: "Free Delivery for 1 Month!",
        Text5: "You’ve to order at least \$10 for using free delivery for 1 month.",
        Text6: "Best Picks ",
        Text7: "Restaurants by team",
        Text8: 'See all',
        Text9: '',
        Avatar: 'assets/BG.png'),
    Page4Model(
        Text1: "Daylight Coffee",
        Text2: "Colarodo, San Francisco",
        Text3: "25min  Free delivery",
        Text4: "Free Delivery for 1 Month!",
        Text5: "You’ve to order at least \$10 for using free delivery for 1 month.",
        Text6: "Best Picks ",
        Text7: "Restaurants by team",
        Text8: 'See all',
        Text9: '',
        Avatar: 'assets/BG.png'),
    Page4Model(
        Text1: "Mario Italiano",
        Text2: "Colarodo, San Francisco",
        Text3: "25min  Free delivery",
        Text4: "Free Delivery for 1 Month!",
        Text5: "You’ve to order at least \$10 for using free delivery for 1 month.",
        Text6: "Best Picks ",
        Text7: "Restaurants by team",
        Text8: 'See all',
        Text9: '',
        Avatar: 'assets/BG2.png'),

  ];

  List<Page4Model2> listOfPage2 = [
    Page4Model2(
        Text1: "McDonald’s",
        Text2: "Colarodo, San Francisco",
        Text3: "25min  Free delivery",
        Text4: "All Restaurants",
        Text5: 'See all',
        Avatar: 'assets/BG3.png'),
    Page4Model2(
        Text1: "The Halal Guys",
        Text2: "Colarodo, San Francisco",
        Text3: "25min  Free delivery",
        Text4: "Restaurants by team",
        Text5: 'See all',
        Avatar: 'assets/BG4.png'),
  ];
   List<Page4Model3> listOfPage3 = [
     Page4Model3(
         Text1: "McDonald’s",
         Text2: "\$\$ . Chinese . American . Deshi food",
         Text3: "200+ Ratings",
         Text4: "",
         Avatar: 'assets/BG5.png'),
     Page4Model3(
         Text1: "Cafe Brichor’s",
         Text2: "\$\$ . Chinese . American . Deshi food",
         Text3: "200+ Ratings",
         Text4: "",
         Avatar: 'assets/BG6.png'),
     Page4Model3(
         Text1: "Mayfield Bakery & Cafe",
         Text2: "\$\$ . Chinese . American . Deshi food",
         Text3: "200+ Ratings",
         Text4: "",
         Avatar: 'assets/BG7.png'),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Delivery to",style: TextStyle(color: Colors.green,fontSize: 12),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("Delivery to",style: TextStyle(color: Colors.black,fontSize: 22),),
                ),
                Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("Filter",style: TextStyle(color: Colors.black,fontSize: 16),),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,

          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),

      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 24,),
            Container(
              width: 330,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Bitmap.png"
                  )
                ),
                borderRadius: BorderRadius.all(Radius.circular(32))
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Featured Partners",style: TextStyle(fontSize: 24),),
                Text("See all",style: TextStyle(fontSize: 16,color: Colors.green),)
              ],
            ),
            SizedBox(height: 24,),

            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listPage4.length,
                  itemBuilder: (context,index){

                    return InkWell(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(

                              width: 200,
                              height: 119,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        listPage4[index].Avatar
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
                            child: Text(listPage4[index].Text1,style: TextStyle(fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(listPage4[index].Text2,style: TextStyle(fontSize: 12,color: Color(0xff868686)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 36,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(6))
                                  ),
                                  child: Center(

                                    child: Text("4.5",style: TextStyle(color: Colors.white),),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("25min  Free delivery"),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return Page5(data: listPage4[index]);
                        }));
                      },
                    );
                  }),
            ),
            SizedBox(height: 24,),

            Container(
              width: 332,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Banner.png"
                  ),
                  fit: BoxFit.cover
                ),
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
            ),
            SizedBox(height: 24,),
            Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Best Picks",style: TextStyle(fontSize: 24),),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Text("See all",style: TextStyle(color: Colors.green),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text("Picks Restaurants by team",style: TextStyle(fontSize: 22),),
            ),
            SizedBox(height: 24,),

            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfPage2.length,
                  itemBuilder: (context,index){

                    return InkWell(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(

                              width: 200,
                              height: 119,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        listOfPage2[index].Avatar
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
                            child: Text(listOfPage2[index].Text1,style: TextStyle(fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(listOfPage2[index].Text2,style: TextStyle(fontSize: 12,color: Color(0xff868686)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 36,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(Radius.circular(6))
                                  ),
                                  child: Center(

                                    child: Text("4.5",style: TextStyle(color: Colors.white),),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("25min  Free delivery"),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return Page6(data: listOfPage2[index]);
                        }));
                      },
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("All Restaurants",style: TextStyle(fontSize: 22)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text("See all",style: TextStyle(color: Colors.green),),
              )
              ],
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: listOfPage3.length,
                  itemBuilder: (context,index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(

                          margin: EdgeInsets.all(20),
                          width: 335,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                listOfPage3[index].Avatar
                              ),
                              fit: BoxFit.cover
                            ),

                            borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 160),
                          child: Text(listOfPage3[index].Text1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text(listOfPage3[index].Text2,style: TextStyle(color: Color(0xff868686)),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Text("4.5"),
                          Icon(Icons.star,size: 16,color: Colors.green,),
                          Text(listOfPage3[index].Text3),
                            Icon(Icons.access_time,size: 16,color: Colors.black,),
                            Text("25 min"),
                            Icon(Icons.monetization_on,size: 16,color: Colors.grey,),
                            Text("Free"),
                          ],
                        ),


                      ],
                    );

              }),
            )



          ],
        ),
      ),
    );
  }
}
