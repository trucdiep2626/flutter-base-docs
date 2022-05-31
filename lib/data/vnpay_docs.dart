import 'package:flutter/material.dart';
import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class VnpayDocs {
  static String image = 'assets/vnpay/';

  static Post vnpayDocs = Post(title: 'Vnpay', contents: [
    Content(type: ContentType.title, data: 'Tích hợp thanh toán Vnpay: '),
    Content(type: ContentType.subtitle, data: '1. Tiến trình thanh toán thông qua VNPAY:'),
    Content(data: 'Thực hiện thanh toán thông qua VNPAY có tiến trình như sau:'
        '\nKhi người dùng yêu cầu thanh toàn qua VNPAY thì app sẽ gửi các thông tin cần thiết để thực hiện thanh toán lên BackEnd. Dựa trên nhưng thông tin từ app gửi lên BackEnd sẽ thực hiện tạo URL. Các Danh sách tham số bắt buộc bao gồm:'),

    Content(type: ContentType.image, data: image +'params.png'),


    Content(data:'URL có dạng như sau:'),
    Content(type: ContentType.code, data: 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=1806000&vnp_Command=pay&vnp_CreateDate=20210801153333&vnp_CurrCode=VND&vnp_IpAddr=127.0.0.1&vnp_Locale=vn&vnp_OrderInfo=Thanh+toan+don+hang+%3A5&vnp_OrderType=other&vnp_ReturnUrl=https%3A%2F%2Fdomainmerchant.vn%2FReturnUrl&vnp_TmnCode=DEMOV210&vnp_TxnRef=5&vnp_Version=2.1.0&vnp_SecureHash=3e0d61a0c0534b2e36680b3f7277743e8784cc4e1d68fa7d276e79c23be7d6318d338b477910a27992f5057bb1582bd44bd82ae8009ffaf6d141219218625c42'),

    Content( data: 'Sau khi tạo đươc url backend gửi về app, phía app sử dụng lib flutter_inappwebview để  gọi webview với link đó. Khi đó nó sẽ hiển thị cổng thanh toán vnpay. Lúc này khách hàng thao tác trên cổng. '

        '\nKhi hoàn thành thanh toán thì Vnpay họ sẽ gọi trả kết quả qua 2 đầu. Đầu url và ipn. 2 đầu link này BE phải xây dựng để xử lý kết quả vnpay trả về và cuối cùng app sẽ call api để lấy kết quả sau khi sử lý từ VNPAY.'),
    Content(type: ContentType.subtitle, data: '2. Các bước tích hợp thanh toán VNPAY:'),
    Content(data: 'Đăng ký MERCHANT môi tường test\nLink đăng ký: https://sandbox.vnpayment.vn/devreg'),
    Content(type: ContentType.image, data: image+ 'register_merchant.png'),
    Content(data: 'Các thông tin đăng ký bao gồm: tên web, địa chỉ url, mail, mật khẩu.'
        '\nSau khi đăng ký thành công vnpay sẽ gửi mail xác nhận trong mail sẽ có các thông tin như sau: '),
    Content(type: ContentType.subtitle, data: 'Thông tin cấu hình:'),
    Content(data: '\r\r\r\r- Terminal ID / Mã Website (vnp_TmnCode): CZB9ZZKO'
    '\n\r\r\r\r- Secret Key / Chuỗi bí mật tạo checksum (vnp_HashSecret): DLFXJSTYSIOZDTTDTMGEMJFFPJPXHYXS'
    '\n\r\r\r\r- Url thanh toán môi trường test(vnp_Url): https://sandbox.vnpayment.vn/paymentv2/vpcpay.html'),
    Content(type: ContentType.subtitle, data: 'Thông tin truy cập Merchant Admin để quản lý giao dịch:'),
    Content(data: '\r\r\r\r- Địa chỉ: https://sandbox.vnpayment.vn/merchantv2/'
    '\n\r\r\r\r- Tên đăng nhập: dungkey220@gmail.com'
    '\n\r\r\r\r- Mật khẩu: (Là mật khẩu nhập tại giao diện đăng ký Merchant môi trường TEST)'),
    Content(type: ContentType.subtitle, data: 'Tài liệu:'),
    Content(data: '\r\r\r\r- Tài liệu hướng dẫn tích hợp: https://sandbox.vnpayment.vn/apis/docs/gioi-thieu/'
    '\n\r\r\r\r- Code demo tích hợp: https://sandbox.vnpayment.vn/apis/vnpay-demo/code-demo-tich-hop'),
    Content(type: ContentType.subtitle, data: 'Thẻ test:'),
    Content(data: '\r\r\r\rNgân hàng: NCB'
    '\n\r\r\r\rSố thẻ: 9704198526191432198'
        '\n\r\r\r\rTên chủ thẻ: NGUYEN VAN A'
    '\n\r\r\r\rNgày phát hành: 07/15'
        '\n\r\r\r\rMật khẩu OTP: 123456'),
    Content(data: 'Các thông tin cần chú ý nhất là vnp_TmnCode, vnp_HashSecret, vnp_Url, các thông tin này dùng để cấu hình link thanh toán. '
        '\nSau khi tạo được tài khoản, có nhưng thông tin cần thiết, tiếp theo xây web BackEnd để tạo link thanh toán, web nhận kết quả thanh toán từ vnpay. '
        '\nTiếp theo về phần app sau khi có nhận được link thanh toán từ BackEnd, sử dụng plugin flutter_inappwebview để hiển web thanh toán VNPAY cho người dùng thao tác'),


    Content(type: ContentType.image, data: image+'config_webview.png'),
    Content(textAlign: TextAlign.center, data: 'Cấu hình webview'),
    Content(data: 'Sau khi người dùng thực hiện thanh toán xong VNPAY gửi kết quả về url return phía app sẽ bắt sự kiện sau khi load xong trang url return để đều hướng sang 1 screen mong muốn.'),
    Content(type: ContentType.image, data: image+'on_load_stop.png'),
  ],);
}