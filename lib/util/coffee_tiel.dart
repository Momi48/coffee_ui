import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String CoffeeImage;
  final String CoffeeName;
  final String CoffeePrice;

  CoffeeTile({
    required this.CoffeeImage,
    required this.CoffeeName,
    required this.CoffeePrice,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12),

        ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect
            
            (borderRadius: BorderRadius.circular(14),
              child: Image.asset(CoffeeImage)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(CoffeeName,style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: 2,
                  ),
                  Text('With Almond Milk',style: TextStyle(color: Colors.grey[700]),),

                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ '+ CoffeePrice),

                Container(
                 
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:    Icon(Icons.add),
                ),

              ],

            ),

          ),

         ],

      ),

      ),

    );
  }
}
