import 'package:flutter/material.dart';



class LeftShape extends StatelessWidget {
  const LeftShape({Key? key, this.width = 0}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
            color: Colors.red
              
            )
              
            
          ),
       
      ],
    );
    
  }
}