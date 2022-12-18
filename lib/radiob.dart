import 'package:flutter/material.dart';

class RadioB extends StatefulWidget {
  const RadioB({Key? key}) : super(key: key);

  @override
  State<RadioB> createState() => _RadioBState();
}

class _RadioBState extends State<RadioB> {
  @override
  bool isChecked1 = false;
  bool isChecked2 = false;
  int isSelected= 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Text("Red"),
                Checkbox(value: false,
                    onChanged: (bool? val)
                    {
                      setState(() {

                      });
                    },
                ),
                Text("Green"),
                Checkbox(value: true, onChanged: (value){}),

              ],

            ),
            CheckboxListTile(value: isChecked1, onChanged: (bool?value){
              setState(() {
                isChecked1 =value!;
              });
            },
            title: Text("happy"),
              secondary: Icon(Icons.face),
              activeColor: Colors.purpleAccent,
              tileColor: Colors.purple,
            ),
            CheckboxListTile(value: isChecked2, onChanged: (bool?value){
              setState(() {
              isChecked2=value!;
              });
            },
            tileColor: Colors.amberAccent,
              title: Text("sad"),
              secondary: Icon(Icons.face),
              activeColor: Colors.yellow,
            ),
            Row(
              children: [Text("Orange"),
                Radio(value: 1, groupValue: isSelected, onChanged: (value){
                  setState(() {
                    isSelected = value!;
                  });
                }),

              ],
            ),
            Row(children: [

            ],),

          ],
        ),
      ),
    );
  }
}
