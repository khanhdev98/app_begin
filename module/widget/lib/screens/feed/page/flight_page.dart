import 'package:flutter/material.dart';
import '../widget/search_code_card.dart';

// import 'widget/flight_search_card.dart';

class DemoFlightPage extends StatefulWidget {
  const DemoFlightPage({Key? key}) : super(key: key);

  @override
  State<DemoFlightPage> createState() => _DemoFlightPageState();
}

class _DemoFlightPageState extends State<DemoFlightPage> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: const [
     Text("content tab1")
    ]);
  }
}