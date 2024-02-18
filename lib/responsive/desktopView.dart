import 'package:flutter/material.dart';

class DeskTopView extends StatefulWidget {
  const DeskTopView({super.key});

  @override
  State<DeskTopView> createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      appBar: AppBar(
        title: Text('D  E  S  K  T  O  P'),
      ),

      body: Row(
        children: [
          Expanded(
            child: Column(
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
          ),

          // add one more container her for right side
          Container(
            width: 200,
            color: Colors.red[300],
          ),

        ],
      ),
    );
  }
}
