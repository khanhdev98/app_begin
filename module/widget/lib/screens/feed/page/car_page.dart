// import 'package:car/car_router.dart';
// import 'package:common/prevent_click_faster.dart';
// import 'package:constant/constant.dart';
// import 'package:data/entities/location/car_locat_entity.dart';
// import 'package:car/bloc/car_view_model_base.dart';
// import 'package:car/feature/car_search/screen/advanced_search/bloc/bloc_search_advanced.dart';
// import 'package:car/feature/car_search/model/location_model.dart';
// import 'package:car/feature/car_search/model/time_range_model.dart';
// import 'package:car/feature/car_search/widget/picker_time_widget.dart';
// import 'package:reusable/export.dart';
//import 'package:theme/theme.dart';
// import 'package:car/car_image_path.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:flutter/material.dart';

class DemoCarPage extends StatefulWidget {
  static const String router = '/carAdvancedV2';
  final bool initDefault;

  const DemoCarPage({Key? key, this.initDefault = false}) : super(key: key);

  @override
  State<DemoCarPage> createState() => _DemoCarPageState();
}

class _DemoCarPageState extends State<DemoCarPage> {
  // CarState<DemoCarPage, BlocSearchAdvanced>
  String locationIcon = "packages/theme/assets/images/local_blue.png";

  bool isOldLocal = false;
  bool showAdvancedSearch = false;

  @override
  void initState() {
    // if (widget.initDefault) {
    //   blocProvider.addPickUp(Location(
    //     address: "Los Angeles International Airport",
    //     loca: "33.94251,-118.40897",
    //     iataCode: "LAX",
    //   ));
    //   blocProvider.setDateTime(DateTimeModel.createDefault());
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}