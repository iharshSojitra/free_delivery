import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//111111111111111111111111111111111111111111111111111111111111111111111111111111
// Expanded(
// child: ListView.separated(
// itemCount: 6,
// itemBuilder: (context, index) {
// return index == 2
// ? Container(
// height: 65,
// margin:
// EdgeInsets.symmetric(horizontal: 20, vertical: 5),
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(10),
// ),
// )
//     : Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 20, vertical: 12),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 100,
// width: 100,
// decoration: BoxDecoration(
// color: Colors.grey,
// borderRadius: BorderRadius.circular(5),
// ),
// ),
// SizedBox(
// width: 15,
// ),
// Padding(
// padding:
// const EdgeInsets.symmetric(vertical: 15),
// child: Column(
// children: [
// Text(
// "New York City Pizza",
// ),
// Row(
// children: [],
// )
// ],
// ),
// ),
// ],
// ),
// );
// },
// separatorBuilder: (BuildContext context, int index) {
// return Divider(
// thickness: 1,
// color: Colors.grey,
// );
// },
// ),
// ),
