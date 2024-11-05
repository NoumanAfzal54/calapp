import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

 final String title;
 final Color color;
 final VoidCallback onPress;
   MyButton({super.key,
     required this.title,
     this.color=const Color(0xffa5a5a5),
     required this.onPress,

   });

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color
              ),
              child: Center(child: Text(title,style: TextStyle(fontSize: 28,color: Colors.black)),
            ),
                ),
          ),
        ));

  }
}
