import 'package:flutter/material.dart';

class CustomSelectCityButton extends StatelessWidget {
  const CustomSelectCityButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          hintText: 'Select City',
          hintStyle:const TextStyle(
              fontSize: 20,
              color: Colors.blue
          ),
        ),
      ),
    );
  }
}


OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(

    borderSide: BorderSide(color: Colors.blue[100]!,width: 2.0,),
    borderRadius: BorderRadius.circular(16),
  );
}