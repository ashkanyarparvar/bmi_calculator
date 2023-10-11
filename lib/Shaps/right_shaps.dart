import 'package:flutter/material.dart';



class RightShape extends StatelessWidget {
  const RightShape({Key? key,this.width = 0}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 50,
          width: width,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              
              
              
            ),
            color: Colors.green,
            
          ),
          

        )
      ],
    );
    
  }
}