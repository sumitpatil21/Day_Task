import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Button usage demo'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FavoriteButton(
                isFavorite: true,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) {
                  print('Is Favorite : $_isFavorite');
                },
              ),
              StarButton(
                isStarred: false,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isStarred) {
                  print('Is Starred : $_isStarred');
                },
              )
            ],
          )),
    );
  }
}
