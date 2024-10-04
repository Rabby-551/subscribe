import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _cardHolder = TextEditingController();
  final TextEditingController _cardinformation = TextEditingController();
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _country;

  List ListItem = ['Bangladesh', 'India', 'USA', 'Japan', 'Argentina'];
  final _cirrentItemSelected = '';

  int _shift = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscribe'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trendy UI pro',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ('\$100'),
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 14,
                ),
              const  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Membership'),
                        Text(
                          'Yearly',
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
              const  SizedBox(
                  height: 14,
                ),
             const   Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$100',
                        ),
                      ],
                    ),
                  ],
                ),
              const  SizedBox(
                  height: 14,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const  Text('Discount'),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: _onAddButton,
                          child:const Text('Add'),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
               const SizedBox(
                  height: 16,
                ),
             const   Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$100',
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
              const  SizedBox(
                  height: 14,
                ),
              const  Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Pay With',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
             const   SizedBox(
                  height: 14,
                ),
              const  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Cardholder name'),
                      ],
                    ),
                  ],
                ),

                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Shamim Hossen',
                  ),
                ),

              const  SizedBox(
                  height: 14,
                ),
              const  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Card information'),
                      ],
                    ),
                  ],
                ),

                TextFormField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: '123 1234 1234 1234',

                  ),
                ),
               const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: 'MM / YY',
                        ),
                      ),
                    ),
                   const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          hintText: 'CVC',
                        ),
                      ),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 14,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text('Country or region'),
                      ],
                    ),
                    DropdownButtonFormField(
                      value: _country,
                      items: ListItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(
                          () {
                            _country = newValue as String?;
                          },
                        );
                      },
                      icon:const Icon(Icons.keyboard_arrow_down),
                      decoration: InputDecoration(
                       hintText: 'Select Country',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(0.0),
                    //   child: Container(
                    //     padding: EdgeInsets.only(left: 5),
                    //     decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.white, width: 1),
                    //       borderRadius: BorderRadius.circular(6),
                    //     ),
                    //     child: DropdownButton(
                    //       hint: Text('Select Country :'),
                    //       icon: Icon(Icons.arrow_drop_down),
                    //       iconSize: 36,
                    //       isExpanded: true,
                    //       underline: SizedBox(),
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 18,
                    //       ),
                    //       value: _country,
                    //       onChanged: (newValue) {
                    //         setState(
                    //           () {
                    //             _country = newValue as String?;
                    //           },
                    //         );
                    //       },
                    //       items: ListItem.map((valueItem) {
                    //         return DropdownMenuItem(
                    //           value: valueItem,
                    //           child: Text(valueItem),
                    //         );
                    //       }).toList(),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
               const SizedBox(
                  height: 14,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    width: 1000,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      onPressed: _onPayButton,
                      child: const Text(
                        'Pay \$100',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                // Form(
                //   key: _formKey,
                //   child: Padding(
                //     padding: EdgeInsets.all(2),
                //     child: Column(
                //       children: [
                //         TextFormField(
                //           controller: _cardHolder,
                //           decoration: const InputDecoration(
                //             hintText: 'Shamim Hossen',
                //             labelText: 'Cardholder name',
                //           ),
                //         ),
                //         const SizedBox(
                //           height: 8,
                //         ),
                //         TextFormField(
                //           controller: _cardinformation,
                //           decoration: const InputDecoration(
                //             hintText: '123 1234 1234 1234',
                //             labelText: 'Card information',
                //           ),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Expanded(
                //             child: Column(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Row(
                //                   children: [TextFormField(
                //                     decoration: const InputDecoration(
                //                       hintText: 'MM / YY',
                //                     ),
                //                   ),]
                //                 ),
                //                 Row(
                //                   children: [TextFormField(
                //                     decoration: const InputDecoration(
                //                       hintText: 'CVC',
                //                     ),
                //                   ),]
                //                 ),
                //               ],
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            )),
      ),
    );
  }
}

void _onAddButton() {
  return;
}

void _onPayButton() {
  return;
}

// void _onDropDownSelected(String newValueSelected){
//   setState((){
//     _currentItemSelected = newValueSelected;
//   });
// }
