import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityPlusPackage extends StatelessWidget {
  const ConnectivityPlusPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(future: getConnect(), builder: (context, snapshot) {
          if(snapshot.hasError)
            {
              return Text(snapshot.error.toString());
            }
          if(snapshot.hasData)
            {
              if(snapshot.data!.contains(ConnectivityResult.wifi))
                {
                  return Text("Network is connect !!!");
                }
            }
          return Text("data");
        },),
      )
    );
  }
}

Future<List<ConnectivityResult>> getConnect()
async {
   return await Connectivity().checkConnectivity();
}