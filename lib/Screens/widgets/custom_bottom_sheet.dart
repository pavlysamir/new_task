import 'package:flutter/material.dart';

import '../../const.dart';
import '../task_view.dart';
import 'cutom_header_for_botom_sheet.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}
class _CustomBottomSheetState extends State<CustomBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) { return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffEBECEE),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomHeaderForBottomSheet(contextt: context),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 2)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                const Text('Rooms',style: TextStyle(fontSize: 16),),
                                const Spacer(),
                                rooms==1?
                                Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey), // Set the border color
                                    borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                  ),
                                  child:const Icon(Icons.remove,color: Colors.grey,),
                                ):
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      rooms--;
                                    });
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue), // Set the border color
                                      borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                    ),
                                    child:const Icon(Icons.remove,color: Colors.blue,),
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                Text('$rooms'),
                                const SizedBox(width: 15,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      rooms++;
                                      print(rooms);
                                    });
                                  },
                                  child: Container(
                                    width: 50,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue), // Set the border color
                                      borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                    ),
                                    child:const Icon(Icons.add,color: Colors.blue,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 2)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('ROOM 1',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(

                                  children: [
                                    const Text('Adults',style: TextStyle(fontSize: 16),),
                                    const Spacer(),
                                    adults==1?
                                    Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey), // Set the border color
                                        borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                      ),
                                      child:const Icon(Icons.remove,color: Colors.grey,),
                                    ):
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          adults--;
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue), // Set the border color
                                          borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                        ),
                                        child:const Icon(Icons.remove,color: Colors.blue,),
                                      ),
                                    ),
                                    const SizedBox(width: 15,),
                                    Text('$adults'),
                                    const SizedBox(width: 15,),
                                    adults>=4?
                                    Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey), // Set the border color
                                        borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                      ),
                                      child:const Icon(Icons.add,color: Colors.grey,),
                                    ):
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          adults++;
                                          print(adults);
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue), // Set the border color
                                          borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                        ),
                                        child:const Icon(Icons.add,color: Colors.blue,),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    const Text('children',style: TextStyle(fontSize: 16),),
                                    const Spacer(),
                                    children==0?
                                    Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey), // Set the border color
                                        borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                      ),
                                      child:const Icon(Icons.remove,color: Colors.grey,),
                                    ):
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          children--;
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue), // Set the border color
                                          borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                        ),
                                        child:const Icon(Icons.remove,color: Colors.blue,),
                                      ),
                                    ),
                                    const SizedBox(width: 15,),
                                    Text('$children'),
                                    const SizedBox(width: 15,),
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          children++;
                                          print(children);
                                        });
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blue), // Set the border color
                                          borderRadius: BorderRadius.circular(16.0), // Optional: Add rounded corners
                                        ),
                                        child:const Icon(Icons.add,color: Colors.blue,),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                children==0?
                                const SizedBox():
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: children,
                                    itemBuilder:  (context,index)=>  Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child:  Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children: [
                                              Text('Age of child ''${index+1}',style: const TextStyle(fontSize: 20),),
                                              const Spacer(),
                                              const Text('14 years',style: TextStyle(fontSize: 18,color: Colors.grey),),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 2)
                              ]),
                          child:  Padding(
                            padding:const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Pet-friendly',style: TextStyle(fontSize: 16),),
                                        Icon(Icons.no_adult_content_sharp)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Only show stays that allow pets',style: TextStyle(color: Colors.grey,fontSize: 15),)
                                  ],
                                ),
                                Switch(
                                  value: light,
                                  activeColor: Colors.blue,
                                  onChanged: (bool value) {
                                    setState(() {

                                      light = value;
                                    });
                                  },
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),

                        child: SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(onPressed: () {
                              Navigator.push(context,  MaterialPageRoute(builder: (context)=> TaskView()));
                            }, child: const Text('Add Task'))),
                      )
                    ],
                  ),
                ); },
                );
              },isScrollControlled: true,useSafeArea: true)
          ;
        },
        icon:const Icon(Icons.arrow_drop_down));
  }
}


