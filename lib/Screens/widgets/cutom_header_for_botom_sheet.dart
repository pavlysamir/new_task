import 'package:flutter/material.dart';

class CustomHeaderForBottomSheet extends StatelessWidget {
  const CustomHeaderForBottomSheet({super.key, required this.contextt});
  final BuildContext contextt;
  @override
  Widget build( context) {
    return  Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 5)
          ]),
      child: Row(
        children: [
          const Expanded(
              child: Text(
                'Rooms and Guests',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          IconButton(
              onPressed: () {
                Navigator.of(contextt).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
    );
  }
}