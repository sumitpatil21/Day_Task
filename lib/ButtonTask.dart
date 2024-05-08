import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonTask extends StatefulWidget {
  const ButtonTask({super.key});

  @override
  State<ButtonTask> createState() => _ButtonTaskState();
}

class _ButtonTaskState extends State<ButtonTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Actions",style: TextStyle(fontSize: 30),),
      ),
      body: Column(
        children: [
          Text("Common Button !"),
          Container(
            margin: EdgeInsets.all(5),
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.black26
              ),
              borderRadius:BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 15),
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text("Elevated",style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 25  ,),
                      ElevatedButton(onPressed: (){}, child:Row(
                        children: [
                          Icon(Icons.add,size: 20,),
                          Text("Icon",style: TextStyle(fontSize: 18),)
                        ],
                      ) ),
                      SizedBox(width: 25  ,),
                      ElevatedButton(onPressed: (){}, child: Text("Elevated",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffD5D1D6))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [
                      FilledButton(onPressed: (){},child: Text("   Filled   ",style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 25  ,),
                      FilledButton(onPressed: (){}, child:Row(
                      children: [
                      Icon(Icons.add,size: 20,),
                      Text("Icon",style: TextStyle(fontSize: 18),)
                    ],
                  )),
                      SizedBox(width: 25  ,),
                      FilledButton(onPressed: (){}, child: Text("Fillled"),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffD5D1D6))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [
                      FilledButton.tonal(onPressed: (){},child: Text("Filled Tonal",style: TextStyle(fontSize: 18,letterSpacing:-1.5),)),
                      SizedBox(width: 25  ,),
                      FilledButton.tonal(onPressed: (){}, child:Row(
                        children: [
                          Icon(Icons.add,size: 20,),
                          Text("Icon",style: TextStyle(fontSize: 18),)
                        ],
                      )),
                      SizedBox(width: 25  ,),
                      FilledButton(onPressed: (){}, child: Text("Fillled"),style: ElevatedButton.styleFrom(backgroundColor: Color(0xffD5D1D6))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [

                      OutlinedButton(onPressed: (){},child: Text("Outlined",style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 28,),
                      OutlinedButton(onPressed: (){}, child:Row(
                        children: [
                          Icon(Icons.add,size: 20,),
                          Text("Icon",style: TextStyle(fontSize: 18),)
                        ],
                      )),
                      SizedBox(width: 25  ,),
                      OutlinedButton(onPressed: (){}, child: Text("Fillled")),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      TextButton(onPressed: (){},child: Text("Text",style: TextStyle(fontSize: 18),)),
                      SizedBox(width: 65  ,),
                      TextButton(onPressed: (){}, child:Row(
                        children: [
                          Icon(Icons.add,size: 20,),
                          Text("Icon",style: TextStyle(fontSize: 18),)
                        ],
                      )),
                      SizedBox(width: 50  ,),
                      TextButton(onPressed: (){}, child: Text("Text",style: TextStyle(fontSize: 18),)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Text("Floating Action Button !"),
          Container(
            margin: EdgeInsets.all(5),
            height: 160,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: Colors.black26
              ),
              borderRadius:BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(5)),
                      FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.add),),
                      Padding(padding: EdgeInsets.all(8)),
                      SizedBox(height: 70,width: 70,child: FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.add,),)),
                      Padding(padding: EdgeInsets.all(8)),
                      SizedBox(height: 90,width: 115,child: FloatingActionButton(onPressed: (){}, child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,size: 22 ,),
                          Text("Create",style: TextStyle(fontSize: 18),)
                        ],
                      ))),
                      Padding(padding: EdgeInsets.all(8)),
                      SizedBox(height: 100,width: 100,child: FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.add,),)),
                      Padding(padding: EdgeInsets.all(8)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text("Icon Buttons !"),
          Container(
            margin: EdgeInsets.all(5),
            height: 180,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: Colors.black26
              ),
              borderRadius:BorderRadius.circular(15),
            ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.settings)),
                      FilledButton(onPressed: (){},child: Icon(Icons.settings)),
                      FilledButton.tonal(onPressed: (){},child: Icon(Icons.settings)),
                      OutlinedButton(onPressed: (){},child: Icon(Icons.settings),),
                      TextButton(onPressed: (){},child: Icon(Icons.settings)),

                    ],
                  ),
                ),
      ]));
  }
}
