//! Main code.

import 'package:flutter/material.dart';
import 'package:shootto/constant.dart';

class historyScreen extends StatefulWidget {
  historyScreen({super.key});

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<historyScreen> {
  String selectedFileType = "Sent";

  List<Map<String, String>> data = [
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
    {
      "fileType": "Sent",
      "fileName": "photo.png",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
    {
      "fileType": "Received",
      "fileName": "video.mp4",
    },
  ];

  List<Map<String, String>> getFilteredData() {
    return data.where((type) => type["fileType"] == selectedFileType).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: Text(
          'History File',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedFileType = "Sent";
                  });
                },
                child: Text('Sent Files',
                    style: TextStyle(
                        color: Blue3,
                        fontSize: 18,
                        wordSpacing: 5,
                        decoration: TextDecoration.underline,
                        decorationColor: Blue,
                        decorationThickness: 1)),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.18),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedFileType = "Received";
                  });
                },
                child: Text('Received Files',
                    style: TextStyle(
                        color: Gray2,
                        wordSpacing: 5,
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                        decorationColor: Gray2,
                        decorationThickness: 1)),
              ),
            ],
          ),
          Expanded(
            child: FilesList(dataList: getFilteredData()),
          ),
        ],
      ),
    );
  }
}

class FilesList extends StatelessWidget {
  final List<Map<String, String>> dataList;
  const FilesList({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        String fileType = dataList[index]["fileType"] ?? "";
        Color cardColor = fileType == "Sent" ? Blue3 : Gray2;

        return Card(
          //! First border style
          // elevation: 5,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomRight: Radius.circular(10),
          //         topRight: Radius.circular(10)),
          //     side: BorderSide(width: 5, color: cardColor)),
          //! Secend borders
          elevation: 5,
          shape: Border(left: BorderSide(color: cardColor, width: 7)),
          //!
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Icon(
                fileType == "Sent" ? Icons.send : Icons.download_done,
                size: 34,
                color: Gray2,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                dataList[index]["fileName"] ?? '',
                style: TextStyle(fontSize: 19.5),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                fileType,
                style: TextStyle(fontSize: 17),
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_forever,
                color: Gray2,
                size: 30,
              ),
              onPressed: () {},
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Blue,
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: const Text(
                          'Open with:',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  actionsAlignment: MainAxisAlignment.spaceBetween,
                  actions: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '       Always       ',
                        style: TextStyle(color: Gray1),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '  Just for Now  ',
                        style: TextStyle(color: Gray1),
                      ),
                    ),
                  ],
                ),
              );
            },
            onLongPress: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Blue,
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: const Text(
                          'File Info:',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                                'Size:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Type:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Path:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Date & Time:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  actionsAlignment: MainAxisAlignment.spaceBetween,
                  actions: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          '       Close       ',
                          style: TextStyle(
                            color: Gray1,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
//! Main code end.

//! Optimized code by AI.
// import 'package:flutter/material.dart';
// import 'package:shootto/constant.dart';

// class historyScreen extends StatefulWidget {
//   historyScreen({Key? key}) : super(key: key);

//   @override
//   _HistoryScreenState createState() => _HistoryScreenState();
// }

// class _HistoryScreenState extends State<historyScreen> {
//   String selectedFileType = "Sent";

//   List<Map<String, String>> data = List.generate(
//     12,
//     (index) => {
//       "fileType": index % 2 == 0 ? "Sent" : "Received",
//       "fileName": "photo.png",
//     },
//   );

//   List<Map<String, String>> getFilteredData() {
//     return data.where((type) => type["fileType"] == selectedFileType).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Blue,
//         title: Text(
//           'History File',
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.sort,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // Handle sorting action
//               print('Sort icon clicked!');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               buildFileTypeButton("Sent", Blue3),
//               SizedBox(width: MediaQuery.of(context).size.width * 0.18),
//               buildFileTypeButton("Received", Gray2),
//             ],
//           ),
//           Expanded(
//             child: FilesList(dataList: getFilteredData()),
//           ),
//         ],
//       ),
//     );
//   }

//   TextButton buildFileTypeButton(String fileType, Color textColor) {
//     return TextButton(
//       onPressed: () {
//         setState(() {
//           selectedFileType = fileType;
//         });
//       },
//       child: Text(
//         '$fileType Files',
//         style: TextStyle(
//           color: textColor,
//           fontSize: 18,
//           wordSpacing: 5,
//           decoration: TextDecoration.underline,
//           decorationColor: textColor,
//           decorationThickness: 1,
//         ),
//       ),
//     );
//   }
// }

// class FilesList extends StatelessWidget {
//   final List<Map<String, String>> dataList;

//   const FilesList({
//     Key? key,
//     required this.dataList,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: dataList.length,
//       itemBuilder: (context, index) {
//         String fileType = dataList[index]["fileType"] ?? "";
//         Color cardColor = fileType == "Sent" ? Blue3 : Gray2;

//         return Card(
//           elevation: 5,
//           shape: Border(left: BorderSide(color: cardColor, width: 7)),
//           child: ListTile(
//             leading: Padding(
//               padding: const EdgeInsets.only(left: 7),
//               child: Icon(
//                 fileType == "Sent" ? Icons.send : Icons.download_done,
//                 size: 34,
//                 color: Gray2,
//               ),
//             ),
//             title: Padding(
//               padding: const EdgeInsets.only(left: 5.0),
//               child: Text(
//                 dataList[index]["fileName"] ?? '',
//                 style: TextStyle(fontSize: 19.5),
//               ),
//             ),
//             subtitle: Padding(
//               padding: const EdgeInsets.only(left: 5.0),
//               child: Text(
//                 fileType,
//                 style: TextStyle(fontSize: 17),
//               ),
//             ),
//             trailing: IconButton(
//               icon: Icon(
//                 Icons.delete_forever,
//                 color: Gray2,
//                 size: 30,
//               ),
//               onPressed: () {
//                 // Handle delete action
//                 print('Delete icon clicked!');
//               },
//             ),
//             onTap: () {
//               showAlertDialog(context, 'Open with:');
//             },
//             onLongPress: () {
//               showAlertDialog(context, 'File Info:');
//             },
//           ),
//         );
//       },
//     );
//   }

//   void showAlertDialog(BuildContext context, String title) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: Blue,
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Center(
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         actionsAlignment: MainAxisAlignment.spaceBetween,
//         actions: [
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.white,
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(17.0),
//               ),
//             ),
//             onPressed: () {},
//             child: Text(
//               '       Always       ',
//               style: TextStyle(color: Gray1),
//             ),
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.white,
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(17.0),
//               ),
//             ),
//             onPressed: () {},
//             child: Text(
//               '  Just for Now  ',
//               style: TextStyle(color: Gray1),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//! Optimized code end.