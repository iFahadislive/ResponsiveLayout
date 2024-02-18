import 'package:flutter/material.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      appBar: AppBar(
        title: Text('T  A  B  L  E  T'),
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
