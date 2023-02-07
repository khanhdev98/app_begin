// 1015	Invalid value
// 1016	Code is expired
// 1017	Max verified
// 2002	Data not exists in DB	Dữ liệu không tìm thấy trên hệ thống
// 2004
// 6001	No param
// 3001	The amount has exceeded	Số tiền nhỏ hơn min hoặc lớn hơn max (Dùng cho bên Hahalolo)
// 3002	Account not available	"Không tìm thấy Account Haloki
// - Không tồn tại
// - Không khả dụng (blocked hoặc chưa verify)"
// 3003	Balance not available	"Không tìm thấy thông tin Balance
// - Không tồn tại
// - Có tồn tại nhưng không khả dụng"
// 3004	Linked bank account not available	"Tài khoản liên kết với Plaid không khả dụng
// - Không tồn tại
// - Có tồn tại nhưng không khả dụng"
// 3005	Balance not enough (Bên thứ 3 - Plaid)	Tài khoản liên kết với Plaid không đủ số dư để thực hiện giao dịch (thông tin này là realtime)
// 3006	link token not available	link token not available
// 3007	Total mount request not available	Số tiền request lớn hơn Max limit hoặc nhỏ hơn Min limit
// 3008	Haloki transaction not exist	Giao dịch không tồn tại
// 3009	Balance not available (Bên thứ 3 - Plaid)	"Gọi qua bên thứ 3 để check balance
// - Không thành công
// - Không tồn tại (vì lý do gì đó)"
// 3010	Email not available	Không có email trong N300 để thực hiện chức năng gửi mail
// 3011	Account not verified	Account haloki chưa verify
// 3012	Account  is blocked	Account haloki đã bị inactive
// 5005	Wait a few minutes	Gửi request token từ 1 tới 6 lần
// 5006	Wait a 24h	Gửi request token lớn hơn 6 lần

import '../../models/mongo_model.dart';

const int kAccountNotActive = 4124;
const int kAccountHalokiNotVerify = 3011;
const int kAccountWasWrong = 4139;
const int kOtpWaitting24h = 5006;
const int kOtpWaittingMunites = 5005;
const int kAccountNotVerify = 4103;

class HalokiErrorCode {
  HalokiErrorCode._();
  // ignore: slash_for_doc_comments
  /** 
  1015	Invalid value - sai mã code			
  1016	Code is expired - hết thời gian hiệu lực sau 5 phút			
  1017	Max verify - sai code trên 5 lần		

  2002	Data not exists in DB	Dữ liệu không tồn tại trên hệ thống		
  5005	Wait a few minutes	Yêu cầu chờ trong vài phút để thử lại yêu cầu tạo mã OTP		
  5006	Wait a 24h	"Yêu cầu chờ trong vài giờ để thử lại yêu cầu tạo mã OTP Áp dụng với yêu cầu từ lần thứ 6 trở lên"		
  6001	No param	Param được yêu cầu không được cung cấp hoặc cung cấp không đúng		
  2004	No content			
  500	Internal Server Error	"Lỗi hệ thống
  Yêu cầu thử lại"				
  */
  static List<int> verifyOtpCode = [
    1016,
    1015,
    1017,
    kOtpWaittingMunites,
    kOtpWaitting24h,
    6001,
  ];

  /// ==== Authentication failed ===
  /// The login informaion provided does not match any accounts . Please try again
  /// 4012 account đã đăng xuất
  /// 4001 lỗi token
  /// 4124 Account chưa verify
  /// 5006 wait a 24h
  /// 4125 User delete account, bị block tài khoản
  /// 4011 Confirm password is wrong
  static List<int> unauthor = [
    401,
    4012,
    4001,
    4138,
    4011,
    kAccountNotActive,
    kAccountWasWrong,
    4125,
  ];
  // 401	Unauthorized
  // 6001	No Param
  // 1015	Invalid value
  // 2004	No Content
  // 500	Internal Server Error
  // 3202	Request identity verification already exists
  // 3011	Haloki account not verified
  static List<int> indentify = [
    1015,
    3202,
    kAccountHalokiNotVerify,
  ];

  // 6001	No param - thiếu param
  // 3006	link token not available
  // 3007	exchange token not available
  // 3002	Account not available (sai id n300 or id không đúng)
  // 3004 Linked bank account not available
  // 3003 Balance not available
  static List<int> addBank = [601, 3006, 3007, 3002, 3003, 3004];

  // 2004	Lỗi
  // 2018	Currency not support
  // 6001	No param - Thiếu param
  // 401	Token non-login
  // 3001	"Số tiền cần chuyển không hợp lệ
  // Nhỏ hơn x || Lớn hơn y (x, y BA chưa define)"
  // - Không tồn tại"
  // 3011	Haloki account not verified
  // 3012	Haloki account is blocked
  // 3005	Balance not enough. Số dư trong tài khoản liên kết không đủ để nạp vào Tài khoản Haloki
  // 4001	Incorrect password
  // 2018	Currency not support
  // 3002	"Account not available. Tài khoản Haloki không khả dụng - Không tồn tại"
  // 3008	Haloki transaction not exist	Giao dịch không tồn tại
  // 3000 Tổng tiền giao dịch vượt quá giới hạn cho phép trong ngày / trong năm / ...
  // 3008 Haloki transaction not exist
  static List<int> transfer = [
    2009,
    2018,
    3000,
    3001,
    3002,
    3008,
    3011,
    3012,
    3005,
    4001,
  ];

  static List<int> sendMoney = [
    2009,
    2018,
    3001,
    3002,
    3008,
    3011,
    3012,
    3005,
    4001,
  ];

  //4005 -> account exists
  static List<int> signUp = [
    4005
  ];
}

extension HaloCodeEXT on StatusEntity {
  bool get isErrorIndentify => HalokiErrorCode.indentify.contains(code);
  bool get isErrorUnauthor => HalokiErrorCode.unauthor.contains(code);
  bool get isErrorAddBank => HalokiErrorCode.addBank.contains(code);
}

extension HaloCodeEXT_INT on int {
  bool get isErrorIndentify => HalokiErrorCode.indentify.contains(this);
  // bool get isErrorUnauthor =>
  //     NetWorkStatus.isClientError(this) ||
  //     HalokiErrorCode.unauthor.contains(this);
  bool get isErrorOtp => HalokiErrorCode.verifyOtpCode.contains(this);

  bool get isErrorBalanceEnough => HalokiErrorCode.transfer[7] == this;

  bool get isErrorSignUp => HalokiErrorCode.signUp.contains(this);
}
