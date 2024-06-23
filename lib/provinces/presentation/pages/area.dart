import 'package:flutter/material.dart';
import 'package:tnablzproject/provinces/presentation/pages/provinces_screen.dart';

import '../../../global/color.dart';

class Provinces extends StatelessWidget {
  const Provinces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primaryColor,
          title: Center(
            child: const Text(
              'Choose Hall location',
              style: TextStyle(color: ColorManager.primaryColor8),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (context, int) => GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Area()));
                },
                child: Container(
                 height: 80,
                      child: Center(
                          child: Text(
                        'Damascus',
                        style: TextStyle(
                            color: ColorManager.primaryColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            ColorManager.primaryColor8,
                            ColorManager.primaryColor2,
                          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: ColorManager.primaryColor, width: 5)),
                    ),
              ),
              separatorBuilder: (context, int) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 14),
        ));
  }
}
