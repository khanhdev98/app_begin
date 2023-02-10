import 'package:content/content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../widget/search_code_card.dart';

class DemoHotelPage extends StatefulWidget {
  const DemoHotelPage({Key? key}) : super(key: key);

  @override
  State<DemoHotelPage> createState() => _DemoHotelPageState();
}

class _DemoHotelPageState extends State<DemoHotelPage> {

  // DateTimeRange _initDate =
  // DateTimeRange(start: DateTime.now(), end: DateTime.now().add(Duration(days: 1)));
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  // HotelCityLocation? _location;
  @override
  void initState() {
    // _controller.text = formatDateTimeRange(_initDate);
    super.initState();
  }

  // String formatDateTimeRange(DateTimeRange range) {
  //   // return range.start.formatDdMmYyyy() + " - " + range.end.formatDdMmYyyy();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(labelText: "Where?"),
                    readOnly: true,
                    onTap: () {
                      // showCupertinoModalPopup(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return HotelSearchCityScreen(
                      //         onSubmit: (location) {
                      //           _location = location;
                      //           setState(() {
                      //             _locationController.text = location.cityName ?? "";
                      //           });
                      //         },
                      //       );
                      //     });
                    }),
                HaloSpacing.normal,
                TextFormField(
                  controller: _controller,
                  readOnly: true,
                  decoration: const InputDecoration(labelText: "Date"),
                  onTap: () async {
                    // await showHaloDateRangePicker(context, _initDate, DateTime.now(),
                    //     DateTime.now().add(Duration(days: 100)))
                    //     .then((dateRange) {
                    //   if (dateRange != null) {
                    //     _controller.text =  formatDateTimeRange(dateRange);
                    //     _initDate = dateRange;
                    //   }
                    // });
                  },
                ),
                HaloSpacing.normal,
                const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'search',
                    )),
              ],
            ),
          ),
        ),
        HaloSpacing.normal,
        // SearchCodeCard(
        //   onTap: () {},
        //   labelText: "Look up booking code",
        // ),
        HaloSpacing.normal,
        _hotelCard(context),
      ],
    );
  }

  _searchHotel() {

  }

  Widget _hotelCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Resort real", style: context.titleMedium,),
            Image.network("https://test-media.hahalolo.com/2022/05/11/08/03/afd739e03c96932905d1ca1bc9df3b97-1652256212.webp"),
            Text("Lô 200, Tú Mỡ, Phường Hòa An, Quận Cẩm Lệ, Thành Phố Đà Nẵng"),
            ElevatedButton(
                onPressed: () {
                    // Navigator.pushNamed(context, HotelRoutes.hotelDetail,
                    // arguments: HotelInputSearchEntity(
                    //   hotelId: "627b69ddbe611322e5744297",
                    //   hotelName: "Resort real",
                    //   fromAppNative: false,
                    //   dateData: HotelDateEntity(
                    //       startDateString: _initDate.start.toString(),
                    //       endDateString: _initDate.end.toString()),
                    //   rooms: [HotelRoomEntity(numAdult: 2)],
                    // ));
                    },
                child: const Text(
                  "Select room",
                )),
          ],
        ),
      ),
    );
  }
}
