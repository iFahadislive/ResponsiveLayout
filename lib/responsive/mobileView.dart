import 'package:flutter/material.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      appBar: AppBar(
        title: Text('M  O  B  I  L  E'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 180,
                color: Colors.red,
              ),
            ),
          ),

          // wrap the listview with expanded widget
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    color: Colors.red[200],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
