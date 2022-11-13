// import 'package:app_trac_nghiem/models/post.dart';
// import 'package:app_trac_nghiem/services/remote_service.dart';
// import 'package:flutter/material.dart';

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   List<Post>? posts;
//   var isLoaded = false;
//   @override
//   void initState() {
//     super.initState();

// //fetch data from API
//     getData();
//   }

//   getData() async {
//     posts = await RemoteService().getPosts();
//     if (posts != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('post'),
//       ),
//       body: Visibility(
//         visible: isLoaded,
//         replacement: const Center(child: CircularProgressIndicator()),
//         child: ListView.builder(
//           itemCount: posts?.length,
//           itemBuilder: (context, index) {
//             return Container(
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
//                   Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue),
//                   ),
//                   SizedBox(
//                     width: 16,
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           posts![index].title,
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           style: TextStyle(fontSize: 24),
//                         ),
//                         Text(
//                           posts![index].body ?? '',
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           //  style: TextStyle(fontSize: 24),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
