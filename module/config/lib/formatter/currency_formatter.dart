import 'package:intl/intl.dart';

import '../injectable/app_injector.dart';

abstract class NumberFormatter {
  String? priceFormatWithCurr(
    double? value,
    String? curr, {
    bool isCompatFormat = false,
  });

  String? formatPrice(double? value, String? curr);

// ///Get price from price and currency from api
// /// Price =
// /// @param price price from api
// /// @param srcCurr currency from api
// double transformPriceWithCurrency(String curr, double price);
//
// double transformPriceWithSrcCurrency(double price, double srcCurrencyPrice);

// /// Tính toán giá trị tỉ giá bằng mã currency được trã về theo từng sản phẩm, tour, khách sạn
// ///Trước đó đã có danh sách tỉ giá hiện tại trên thế được được lấy về khi mở app
// double getSrcCurrencyPriceValue(String curr);
}

/// Number formatter in application
class NumberFormatImp extends NumberFormatter {
  NumberFormatImp();

  @override
  String? priceFormatWithCurr(
    double? value,
    String? curr, {
    bool isCompatFormat = false,
  }) {
    if (curr == null) return null;
    NumberFormat numberFormat = NumberFormat();

    // var localeName = "en_US";
    var localeName = 'vi';

    try {
      if (curr.toUpperCase() == "VND" ||
          curr.toUpperCase() == "USD" ||
          curr.toUpperCase() == "EUR") {
        if (isCompatFormat) {
          numberFormat = NumberFormat.compactSimpleCurrency(
            locale: localeName,
            name: curr.toUpperCase(),
          );
        } else {
          numberFormat = NumberFormat.simpleCurrency(
            locale: localeName,
            name: curr.toUpperCase(),
          );
        }
      } else {
        if (isCompatFormat) {
          numberFormat = NumberFormat.compactSimpleCurrency(
            locale: localeName,
            name: curr.toUpperCase(),
          );
        } else {
          numberFormat = NumberFormat.currency(
            locale: localeName,
            name: curr.toUpperCase(),
          );
        }
      }

      return numberFormat.format(this);
    } catch (e) {
      return null;
    }
  }

  @override
  String? formatPrice(double? value, String? curr, {String? currTransform}) {
    return priceFormatWithCurr(
      value,
      curr,
    );
  }

// ///Get price from price and currency from api
// /// Price =
// /// @param price price from api
// /// @param srcCurr currency from api
// @override
// double transformPriceWithCurrency(String curr, double price) {
//   try {
//     if (curr.isEmpty) return price;
//     return transformPriceWithSrcCurrency(getSrcCurrencyPriceValue(curr), price);
//   } catch (e) {
//     return price;
//   }
// }

// @override
// double transformPriceWithSrcCurrency(double price, double srcCurrencyPrice) {
//   // Tỉ giá hiện tại mà người dùng muốn hiển thị
//   double? targetRate;
//   targetRate = CommonTransform.instance.targetRate;
//   // Công thức tính giá tiền được quy từ giá tiền trên api gửi về để thành giá tiền mà người dùng muốn nhìn thấy
//   // GIÁ NGƯỜI DÙNG MUỐN NHÌN THẤY = GIÁ TIỀN API / TỈ GIÁ API * TỈ GIÁ NGƯỜI DÙNG MUỐN THẤY
//   // Tỉ giá người dùng muốn thấy: Người dùng đã chọn trong cài đặt
//   if (srcCurrencyPrice == 0.0) {
//     return price;
//   } else {
//     return price / srcCurrencyPrice * (targetRate ?? -1.0).ceilToDouble();
//   }
// }
//
// /// Tính toán giá trị tỉ giá bằng mã currency được trã về theo từng sản phẩm, tour, khách sạn
// ///Trước đó đã có danh sách tỉ giá hiện tại trên thế được được lấy về khi mở app
// @override
// double getSrcCurrencyPriceValue(String curr) {
//   try {
//     return CommonTransform.instance.getRateOfCurrency(curr) ?? 0.0;
//   } catch (e) {
//     return 0.0;
//   }
// }
}
