// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(History());
// }
//
// class History extends StatelessWidget {
//   static const String id = "History";
//   final String userinput;
//   final String answer;
//
//    History({Key? key, required this.userinput, required this.answer})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('History'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'User Input:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(userinput),
//             SizedBox(height: 20),
//             Text(
//               'Answer:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             Text(answer),
//           ],
//         ),
//       ),
//     );
//   }
// }
