import 'package:flutter/material.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

class DropDownTest extends StatefulWidget {
  const DropDownTest({super.key});

  @override
  State<DropDownTest> createState() => _DropDownTestState();
}

class _DropDownTestState extends State<DropDownTest> {
  String selectedValue = 'Orange';
  String selectedVagis = 'Carrot';
  String selectedSports = 'Cricket';
  var itemVegies = ['Carrot', "Chilli", 'Cabbage', 'Peas', 'Potato'];

  var sportdArray = [
    'Cricket',
    "Football",
    "Hockey",
    "Volleyball",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          titleText: 'DropDown',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 70,
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,

                child: DropdownButton<String>(
                  elevation: 8,
                  isExpanded: true,
                  hint: const Text('select fruits'),
                  icon: const Icon(Icons.arrow_drop_down),
                  value: selectedValue,
                  items: <String>[
                    'Orange',
                    'Banana',
                    'Apple',
                    'Mango',
                    'Papaya',
                    'Grapes',
                    'Guava'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newValue) {
                    selectedValue = newValue!;
                    setState(() {});
                  },
                  underline: const SizedBox.shrink(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    elevation: 8,
                    value: selectedVagis,
                    hint: const Text('select vegetable'),
                    dropdownColor: Colors.blueGrey,
                    padding: const EdgeInsets.all(8),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    items: itemVegies
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(color: Colors.white),
                          ));
                    }).toList(),
                    onChanged: (String? newVale) {
                      selectedVagis = newVale!;
                      setState(() {});
                    },
                    underline: const SizedBox.shrink(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                    border: Border.all(
                      color: Colors.orange,
                      width: 2,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: selectedVagis,
                    icon: const Icon(Icons.arrow_downward),
                    items: itemVegies
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 12),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      selectedVagis = newValue!;
                      setState(() {});
                    },
                    underline: Container(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DropdownButton(
                    isExpanded: true,
                    value: selectedSports,
                    items: sportdArray
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                                color: Colors.orange, fontSize: 14),
                          ));
                    }).toList(),
                    onChanged: (newValue) {
                      selectedSports = newValue!;
                      setState(() {});
                    },
                    underline: Container(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
