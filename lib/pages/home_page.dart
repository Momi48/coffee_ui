

import 'package:coffee_ui/util/coffee_tiel.dart';
import 'package:coffee_ui/util/coffee_type.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List coffeeType= [
    [
      'Cappucino',
      true,

    ],
    [
      'Latto',
       false,
    ],
    [
      'Black',
      false,
    ],
  ];

  void  coffeeSelected(int index){
      setState(() {
        for(int i= 0 ; i<coffeeType.length;i++){
          coffeeType[i][1] = false;
        }
        coffeeType[index][1] = true;
      });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(

        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Icon(Icons.menu),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0,top: 20),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: Column(

        children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: Text('FIND THE BEST COFFEE FOR YOU',style: GoogleFonts.bebasNeue(fontSize: 56),),
         ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),

            child: TextFormField(

              decoration: InputDecoration(
                   prefixIcon: Icon(Icons.search),
                  hintText: 'Find me a coffee',

                  //click animation border
                  focusedBorder: OutlineInputBorder(

                  borderSide: BorderSide(color: Colors.grey.shade600),

                  ),

                  // stationary animation of border
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey.shade600)
                  ),

              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
            Container(
            height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context,index){
                 return CoffeeType(
                     coffeeType: coffeeType[index][0],
                     isSelected: coffeeType[index][1],
                     onTap: (){
                       coffeeSelected(index);
                     }
                 );

              })


    ),

          SizedBox(
            height: 25,
          ),
          Expanded(
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
             CoffeeTile(
                 CoffeeImage: 'lib/images/image 1.jpg',
                 CoffeeName: 'Cappucino',
                 CoffeePrice: ' 4.21'
                 ),
                CoffeeTile(
                    CoffeeImage: 'lib/images/image 4.jpg',
                    CoffeeName: 'Latto',
                    CoffeePrice: ' 4.30'
                 ),
                CoffeeTile(
                    CoffeeImage: 'lib/images/image 3.jpg',
                    CoffeeName: 'Black',
                    CoffeePrice: ' 4.40'
                ),

              ],
            ),
          )
        ],
      ),

    );
  }
}
