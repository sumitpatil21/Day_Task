import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Tic Tac Toe Game ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: AutofillHints.addressCity,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Wrap(
                    children: [
                      ...List.generate(
                          GameValue.length,
                          (index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    if (x % 2 == 1) {
                                      GameValue[index] = "x";
                                      x++;
                                    } else {
                                      GameValue[index] = "o";
                                      x++;
                                    }

                                  });
                                },
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: Text(
                                      GameValue[index],
                                      style: TextStyle(
                                        fontSize: 60,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

List GameValue = ["", "", "", "", "", "", "", "", ""];
int x = 1;
