import 'package:flutter/material.dart';

class RadioB extends StatefulWidget {
  const RadioB({Key? key}) : super(key: key);

  @override
  State<RadioB> createState() => _RadioBState();
}

class _RadioBState extends State<RadioB> {
  @override
  bool isChecked1 = false;
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
                Checkbox(value: isChecked1,
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

          ],
        ),
      ),
    );
  }
}
