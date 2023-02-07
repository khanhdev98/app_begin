import 'package:flutter/material.dart';
import 'package:theme/constant/size.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class HalokiCountrySelect extends StatelessWidget {
  final List<CountryItemModel> data;
  final Function(CountryItemModel)? onItemSelected;

  const HalokiCountrySelect({Key? key, required this.data, this.onItemSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: HaloSpace.normal, vertical: HaloSpace.large),
        child: Padding(
          padding: const EdgeInsets.all(HaloSpace.normal).copyWith(bottom: HaloSpace.smallS),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Choose Country',
                style: context.dialogTitle?.medium,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: HaloSpace.normal,bottom: HaloSpace.smallS),
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return ListTile(title: Text(item.name),
                      onTap: (){
                        onItemSelected?.call(item);
                        Navigator.pop(context,item.code);
                      },);
                    },
                    itemCount: data.length,
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () => Navigator.pop(context, _selectedData),
              //   child: Text('OK'),
              // ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              )
            ],
          ),
        ));
  }
}

class CountryItemModel {
  final String code;
  final String name;

  const CountryItemModel({required this.code, required this.name});
}
