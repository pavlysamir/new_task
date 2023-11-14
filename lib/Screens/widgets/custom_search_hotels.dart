
import 'package:flutter/material.dart';


class CustomSearchOfHotel extends StatelessWidget {
  const CustomSearchOfHotel({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.47,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child:const Column(
          children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('find hotels',style: TextStyle(
                  fontSize: 20,color: Colors.white
                ),),
                Icon(Icons.search_rounded,color: Colors.white,size: 50,)

              ],
            ),
          )
        ],));
  }
}




