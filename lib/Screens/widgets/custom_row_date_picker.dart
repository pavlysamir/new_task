import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomRoeFormFieldForSelectDate extends StatefulWidget {
  const CustomRoeFormFieldForSelectDate(
      {super.key,
        required this.firstTextEditingController,
        required this.secondTextEditingController});
  final TextEditingController firstTextEditingController;
  final TextEditingController secondTextEditingController;

  @override
  State<CustomRoeFormFieldForSelectDate> createState() =>
      _CustomRoeFormFieldForSelectDateState();
}

class _CustomRoeFormFieldForSelectDateState
    extends State<CustomRoeFormFieldForSelectDate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue[100]!,
            width: 2.0,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () async {
                  DateTime? datePicker = await showDatePicker(
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          primaryColor: Colors.deepOrangeAccent,
                          colorScheme: const ColorScheme.light().copyWith(
                            primary: Colors
                                .deepOrangeAccent, // Set your desired color here
                          ),
                        ),
                        child: child!,
                      );
                    },
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate:
                    DateTime.now().subtract(const Duration(days: 365 * 20)),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 20)),
                  );

                  if (datePicker != null) {
                    setState(() {
                      var selectedDate = datePicker;
                      var selectedDateText =
                      DateFormat.yMMMd().format(selectedDate);
                      widget.firstTextEditingController.text = selectedDateText;
                      // Update the controller's value
                    });
                  }
                },
                child: widget.firstTextEditingController.text != ''
                    ? Text(widget.firstTextEditingController.text,style:const TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)
                    : const Text('Add first date',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),)),
            const SizedBox(
              width: 5,
            ),
            const Text('>>>>'),
            const SizedBox(
              width: 5,
            ),
            InkWell(
                onTap: () async {
                  DateTime? datePicker = await showDatePicker(
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          primaryColor: Colors.deepOrangeAccent,
                          colorScheme: const ColorScheme.light().copyWith(
                            primary: Colors
                                .deepOrangeAccent, // Set your desired color here
                          ),
                        ),
                        child: child!,
                      );
                    },
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate:
                    DateTime.now().subtract(const Duration(days: 365 * 20)),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 20)),
                  );

                  if (datePicker != null) {
                    setState(() {
                      var selectedDate = datePicker;
                      var selectedDateText =
                      DateFormat.yMMMd().format(selectedDate);
                      widget.secondTextEditingController.text = selectedDateText;
                      // Update the controller's value
                    });
                  }
                },
                child: widget.secondTextEditingController.text != ''
                    ? Text(widget.secondTextEditingController.text,style:const TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold))
                    : const Text('Add second date',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold))),
          ],
        ),
      )
    );
  }
}