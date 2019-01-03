import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final String title;
  final String logoPath;
  final String senderName;
  final String message;

  MessageCard({this.title, this.logoPath, this.senderName, this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 290.0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: <Widget>[
                        
                        Image.asset(logoPath),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              senderName,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans'),
                            ),
                            Text(
                              message,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'OpenSans'),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class Messages extends StatelessWidget {
//   final String logoPath, title, message;

//   Messages({this.logoPath, this.title, this.message});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Image.asset(logoPath),
//         SizedBox(
//           width: 10.0,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               title,
//               style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'OpenSans'),
//             ),
//             Text(
//               message,
//               style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.black45,
//                   fontWeight: FontWeight.normal,
//                   fontFamily: 'OpenSans'),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
