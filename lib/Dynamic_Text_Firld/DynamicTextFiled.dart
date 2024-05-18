import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
TextEditingController text=TextEditingController();
class DynaimcTextField extends StatefulWidget {
  const DynaimcTextField({super.key});

  @override
  State<DynaimcTextField> createState() => _DynaimcTextFieldState();
}

class _DynaimcTextFieldState extends State<DynaimcTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ...List.generate(
              textField.length,
              (index) => Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListTile(
                    title: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5
                          )
                        )
                      ),
                    ),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                            onTap: () {
                              TextEditingController text =TextEditingController();
                              setState(() {
                                textField.add(text);
                              });
                            },
                            child: Icon(
                              Icons.add_circle,
                              size: 30,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              textField.remove(textField[index]);
                            });
                          },
                          child: Icon(
                            Icons.delete_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

List textField = [
  text,
];
