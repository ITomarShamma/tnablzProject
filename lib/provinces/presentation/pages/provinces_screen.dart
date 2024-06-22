import 'package:flutter/material.dart';
import 'package:tnablzproject/global/color.dart';

class Area extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        title: Center(child: const Text('Choose Hall location',style: TextStyle(color: ColorManager.primaryColor8),),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 80, mainAxisSpacing: 40),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                  child: Text(
                'Altal',
                style: TextStyle(
                    color:ColorManager.primaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [

                  ColorManager.primaryColor8,
                  ColorManager.primaryColor2,


                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),

                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: ColorManager.primaryColor, width: 5)),
            );
          },
        ),
      ),
    );
  }
}
