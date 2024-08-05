import 'package:final_project/widgets/menu.dart';
import 'package:final_project/widgets/menuitems.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoffeeHomePage(),
    );
  }
}
class CoffeeHomePage extends StatelessWidget {
   CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1d1d1d),
      ),
      body:Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Container(
                      color:  const Color(0xFF1d1d1d),
                      height: 200,
                      child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 26.0 , top:16.0, bottom: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Location',style: TextStyle(color: Color(0xFFA2A2A2),),),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Bilzen, Tanjungbalai',style: TextStyle(color: Color(0xFFcdcdcd))),
                                    Icon(Icons.arrow_drop_down,color: Color(0xFF888888),)],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 300,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Search coffee',
                                          hintStyle: const TextStyle(
                                            color: Color(0xFF848484),
                                          ),
                                          prefixIcon: const Icon(Icons.search,color: Colors.white,),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15,),
                                    Container(
                                        width: 52,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFc67c4e),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: const Icon(Icons.tune ,color: Colors.white,)
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(height:100,color: Colors.white,)
                  ],
                ),
              ),
              Positioned(
                left: 50,
                  top: 150,
                  child: Image.asset('assets/images/Banner.png')
              )


            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height:29 ,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Options(text:  'All Coffee', color:Color(0xFFC67C4E),textColor: Colors.white ,),
                Options(text:  'Machiato', color:Color(0xFFEDEDED),textColor: Colors.black54, ),
                Options(text:  'Latte', color:Color(0xFFEDEDED),textColor: Colors.black54,),
                Options(text:  'Americano', color:Color(0xFFEDEDED),textColor: Colors.black54,),


              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
         SingleChildScrollView(
           child: SizedBox(
             height: 300,
             child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 40

             ),
               children: const [
                 Items(image: "Coffee1.png", textcoffe: 'Caffe Mocha', deccoffe: 'Deep Foam', price: '4.53'),
                 Items(image: "Coffee2.png", textcoffe: 'Flat White', deccoffe: 'Espresso', price: '3.53'),
                 Items(image: "Coffee3.png", textcoffe: 'Caffe Mocha', deccoffe: 'Deep Foam', price: ' 4.53'),
                 Items(image: "Coffee4.png", textcoffe: 'Caffe Mocha', deccoffe: 'Deep Foam', price: ' 4.53')


               ],
             ),
           ),
         )

        ],
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xFFC67C4E),size: 30,) ,label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.grey,size: 30),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.grey,size: 30),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined,color: Colors.grey,size: 30),label: ''),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );

  }
}
