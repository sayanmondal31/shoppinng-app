import 'package:advancedtest/model/mycart.dart';
import 'package:advancedtest/myCatelog.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyCart>(
    create: (context) => MyCart(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCatelog(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// // --------------provider 1 ---------------------------------
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<Data>(
//       create: (context) => Data(),
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(title: Mytext()),
//           body: Level1(),
//         ),
//       ),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Level2(),
//     );
//   }
// }

// class Level2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         MyTextField(),
//         Level3(),
//       ],
//     );
//   }
// }

// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           Card(
//             elevation: 20,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 10),
//               child: Text(Provider.of<Data>(context).text),
//             ),

//           ),

//           SizedBox(height:10),
//           Center(
//             child: Text(Provider.of<Data>(context).text),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Mytext extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text(Provider.of<Data>(context,listen: false).text);
//   }
// }

// class MyTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       onChanged: (newtext) {
//         Provider.of<Data>(context,listen: false).updateText(newtext);
//         print(newtext);
//       },
//     );
//   }
// }

// class Data extends ChangeNotifier {
//   String text = "data";

//   void updateText(String newData) {
//     text = newData;
//     notifyListeners();
//   }
// }

// // // ---------------------------provider 2-------------------------------
// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider<DataText>(
// //       create: (context) => DataText(),
// //       child: MaterialApp(
// //         home: Scaffold(
// //           appBar: AppBar(title: Mytext()),
// //           body: Level1(),
// //         ),
// //       ),
// //     );
// //   }
// // }
// // class Mytext extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Text(Provider.of<DataText>(context).data);
// //   }
// // }
// // class Mytext2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Text(Provider.of<DataText>(context).data);
// //   }
// // }
// // class Level1 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider<DataText>(
// //       create: (context)=>DataText(),
// //           child: Container(
// //         child: Column(children: <Widget>[
// //           TextField(
// //             onChanged: (newData) {
// //               Provider.of<DataText>(context, listen: false).updateString(newData);
// //             },
// //           ),
// //           Level2(),
// //         ]),
// //       ),
// //     );
// //   }
// // }

// // class Level2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Level3(),
// //     );
// //   }
// // }

// // class Level3 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: <Widget>[
// //         Card(
// //           elevation: 10,
// //           child: Column(
            
// //             children: <Widget>[
// //               Center(child: Mytext2()),
// //               SizedBox(height:20),
// //               Level5(),
// //             ],
// //           ),
// //         ),
// //         Text(Provider.of<DataText>(context).data),
// //       ],
// //     );
// //   }
// // }



// // class Level5 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Level6(),
// //     );
// //   }
// // }

// // class Level6 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: <Widget>[Level60(), Level61()],
// //     );
// //   }
// // }

// // class Level60 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

// // class Level61 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

// // class DataText extends ChangeNotifier {
// //   String data = "hello";

// //   void updateString(String newData) {
// //     data = newData;
// //     notifyListeners();
// //   }
// // }
