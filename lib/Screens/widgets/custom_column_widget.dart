import 'package:complete_task/const.dart';
import 'package:flutter/material.dart';
import 'custom_bottom_sheet.dart';
import 'custom_drop_menu.dart';
import 'custom_row_date_picker.dart';
import 'custom_text_field_select_city.dart';

class CustomColumnOfWidget extends StatefulWidget {
  const CustomColumnOfWidget({super.key});

  @override
  State<CustomColumnOfWidget> createState() => _CustomColumnOfWidgetState();
}

class _CustomColumnOfWidgetState extends State<CustomColumnOfWidget> {
  var formKey = GlobalKey<FormState>();
  TextEditingController firstDateController = TextEditingController();
  TextEditingController secondDateController = TextEditingController();
  @override
  void initState() {
    setState(() {
      rooms;
      adults;
      children;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const CustomSelectCityButton(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: CustomRoeFormFieldForSelectDate(
                    firstTextEditingController: firstDateController,
                    secondTextEditingController: secondDateController,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: CustomDropDownFormField(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('$rooms'' Rooms, ''$adults'' Adults, ''$children'' children ',style:const TextStyle(fontSize: 15,color: Colors.blue),),
                        const Spacer(),
                        const CustomBottomSheet(),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}




