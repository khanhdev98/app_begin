// import 'package:flutter/material.dart';
// import 'package:theme/material3/m3_theme_lib.dart';
//
// class SearchCodeCard extends StatelessWidget {
//   const SearchCodeCard({Key? key, this.onTap, required this.labelText}) : super(key: key);
//   final Function()? onTap;
//   final String labelText;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Card(
//         child:  Padding(
//           padding:  const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   // const Image(image: AssetImage(IconPaths.searchCode)),
//                   const SizedBox(width: 10,),
//                   Text(
//                     labelText,
//                     style: context.bodyMedium,
//                   ),
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(right: 2.0),
//                 child: Image(
//                   image: AssetImage(IconPaths.forward),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
