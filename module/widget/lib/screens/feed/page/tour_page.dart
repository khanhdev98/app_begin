import 'dart:convert';

import 'package:content/content.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/icons/app_icon.dart';
import 'package:theme/material3/icons/tour_icon_paths.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class DemoTourPage extends StatefulWidget {
  const DemoTourPage({Key? key, this.onTapDetail, this.onTapPlace, this.onTapDate})
      : super(key: key);

  final void Function()? onTapDetail;
  final void Function()? onTapPlace;
  final void Function()? onTapDate;

  @override
  State<DemoTourPage> createState() => _DemoTourPageState();
}

class _DemoTourPageState extends State<DemoTourPage> with AutomaticKeepAliveClientMixin {
  final List<String> medias = [
    "https://test-media.hahalolo.com/2022/10/11/07/06/5f880835182022d0a76f42d3d8e9add9-1665471976.jpg",
    "https://test-media.hahalolo.com/2022/11/25/08/21/a88e86871daa736f5cec00ba09c52a10-1669364505.png",
  ];
  var idTour = "61bb01c511094b2aa4afb23a";
  final desNormal =
      "Tour này là:\n  - Tour thường\n  - Tour combo\n  - Có khuyến mãi\n  - Có đánh giá\n  - Có dịch đi kèm";
  final desInst = "Tour này là:\n  - Tour trả góp\n  - Có đánh giá\n  - Có dịch đi kèm";
  var isLike = false;
  DateTime _initDate = DateTime.now();

  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    // if (haloEnv.appHost == "test") {
    //   //id tour test
    //   idTour = "61bb01c511094b2aa4afb23a";
    // } else {
    //   //id tour staging
    //   idTour = "6384620ab01b2f1579444ed3";
    // }
    // _dateController.text = _initDate.formatDdMmYyyy();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(3, (index) {
        if (index == 0) {
          return _tourEditorCard(context);
        } else if (index == 1) {
          return _tourDetailCard(
              context, medias[0], "TOUR THƯỜNG", "Tour đuối nước", desNormal, jsonEncode(idTour));
        } else {
          return _tourDetailCard(context, medias[1], "TOUR TRẢ GÓP", "Tour trả góp", desInst,
              jsonEncode("5f2bd4a6bc502605ccb9a101"),
              isInstallment: true);
        }
      }).toList(),
    );
  }

  Widget _tourEditorCard(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _locationController,
              decoration: const InputDecoration(labelText: "Where?"),
              readOnly: true,
              onTap: () async {
                // await SearchPlaceSuggestion.showSearch(context).then((value) {
                //   setState(() {
                //     _locationController.text = value?.name ?? "";
                //   });
                // });
              },
            ),
            HaloSpacing.normal,
            TextFormField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: "Start date"),
              readOnly: true,
              onTap: () {
                // showHaloDatePicker(context, _initDate, DateTime.now(),
                //         DateTime.now().add(const Duration(days: 366)))
                //     .then((value) {
                //   if (value != null) {
                //     _initDate = value;
                //     _dateController.text = value.formatDdMmYyyy();
                //   }
                // });
              },
            ),
            HaloSpacing.normal,
            const ElevatedButton(
                onPressed: null,
                child: Text(
                  'Search',
                )),
          ],
        ),
      ),
    );
  }

  Widget _tourDetailCard(BuildContext context, img, title, tourName, description, id,
      {bool isInstallment = false}) {
    var jsonTour = '''{
        "adep": "Kiên Giang",
        "onna": "[ TEXT ]page test",
        "onav": "https://test-media.hahalolo.com/2022/03/14/09/43/709e6de507407db3849ff9e6978b4bf4-1647251022.jpg",
        "countPromsApply": 0,
        "countReviewed": 0,
        "curr": "VND",
        "dsta": "",
        "id": $id ,
        "installment": 0 ,
        "isCombo": false,
        "nday": 0,
        "parts": [{"aarr": "Qui Nhơn"}],
        "percentPromotion": 107100.0,
        "price": 119000.0,
        "rateReview": 0.0,
        "starReview": 0.0,
        "thumbnails": [
          {
            "isLive": false,
            "ratio": 1.0,
            "thumb": "https://test-media.hahalolo.com/2022/04/01/04/23/3e46af8cb724e4bf7b88094e64e7b479-1648787038_640xauto_high.jpg"
          }
        ],
        "title": "Mobile mãi đỉnh"
    }''';
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
              child: _headerView(
                  context,
                  "https://test-media.hahalolo.com/2022/03/14/09/43/709e6de507407db3849ff9e6978b4bf4-1647251022.jpg",
                  title),
            ),
            HaloSpacing.xxSmall,
            Stack(alignment: Alignment.topRight, children: [
              FadeInImage.assetNetwork(
                height:200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                placeholder: TourAssetPaths.imgHaloName,
                fadeInDuration: const Duration(milliseconds: 300),
                image: img,
                imageErrorBuilder: (context, url, error) => ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  child: Image.asset(
                    TourAssetPaths.imgHaloName,
                    fit: BoxFit.cover,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              if (isInstallment)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: context.orangeColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12))),
                  child: Image.asset(
                    TourAssetPaths.icInstallmentTour,
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                  ),
                ),
            ]),
            HaloSpacing.small,
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed("/tourDetail", arguments: jsonTour),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Text(
                  tourName,
                  style: context.titleMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                description,
                style: context.bodyMedium?.light,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed("/tourDetail", arguments: jsonTour),
                child: const Text("View detail"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _headerView(BuildContext context, avt, pageName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Image.network(
            avt,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              pageName,
              style: context.cardSubTitle,
            ),
          ),
        ),
        IconButton(
          icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: context.colorScheme.disableColor, borderRadius: BorderRadius.circular(24)),
              child: AppIcons.like.apply(iconColor: !isLike ? null : Colors.blue)),
          onPressed: () {
            // if (PreventClickFaster.isRedundantClick()) {
            //   return;
            // } else {
            //   setState(() {
            //     isLike = !isLike;
            //     HaloToastWidgets.buildToastWithStatus(
            //       context,
            //       "Cảm ơn",
            //       behavior: SnackBarBehavior.floating,
            //     );
            //   });
            // }
          }, //
          // HaloNavigation.of(context).popRoot(finishIfHome: true),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
