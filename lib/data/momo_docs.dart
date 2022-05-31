import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class MomoDocs {
  static String image = 'assets/momo/';

  static Post momoDocs = Post(title: 'Momo', contents: [
    Content(type: ContentType.title, data: 'Tích hợp thanh toán momo: '),
    Content(type: ContentType.subtitle, data: '1. Đăng ký tài khoản doanh nghiệp với momo.'),
    Content(data: 'Link: https://business.momo.vn/signup'),
    Content(data: 'Thông tin cần bao gồm: tên đăng nhập, mật khẩu, điện thoại, email, tên doanh nghiệp, địa chỉ, mã số thuế, lĩnh vực kinh doanh, thông tin người đại diện,..).'
        '\nSau khi điền đủ thông tin Momo sẽ gửi link kích hoạt về mail đã đăng ký.'
        '\nSau khi kích hoạt, tài khoản có thể sử dụng trên môi trường test.'),
    Content(type: ContentType.subtitle, data: '2. Cài đặt app Momo Test để thực hiện thanh toán trên môi trường test.'),
    Content(data: 'Link: https://test-payment.momo.vn/download/'),
    Content(type: ContentType.subtitle, data: '3. Đăng ký tài khoản trên app Momo Test.'),
    Content(data: 'Bước 1. Nhập một số điện thoại đúng ngẫu nhiên (10 số), nên sử dụng các đầu số đúng với các Nhà mạng hiện hành.'
        '\nBước 2. Nhập OTP'
        '\nỨng dụng sẽ yêu cầu nhập mã OTP. Mã này sẽ được đặt mặc định là 0000 hoặc 000000 trên App MoMo test.'
        '\nBước 3. Tạo mật khẩu 6 chữ số'
        '\nBước 4. Điền thông tin cá nhân.'
        '\nHọ & tên: Họ [Khoảng trống] Tên'
        '\nEmail'
        '\nGiới tính'
        '\nQuốc gia: chọn Việt Nam'
        '\nSau khi điền đầy đủ thông tin, sẽ tạo thành công tài khoản mới.'),
    Content(type: ContentType.subtitle, data: '4. Set up để dùng plugin momo_vn.'),
    Content(type:ContentType.subtitle, data: 'Android'),
    Content(data: 'Thêm yêu cầu quyền truy cập Internet vài file AndroidManifest.xml'),
    Content(type: ContentType.code, data: '<uses-permission android:name="android.permission.INTERNET"'),
    Content(type:ContentType.subtitle, data: 'iOS'),
    Content(data: 'Bước 1: Thêm vào file Info.plist theo mẫu sau:'),
    Content(type: ContentType.image, data: image +'ios_info_plist.png'),
    Content(data: 'Bước 2: Định nghĩa call back url cho momo tại AppDelegate.swift.'),
    Content(type: ContentType.image, data: image +'app_delegate_swift.png'),
    Content(type: ContentType.subtitle, data: 'Lưu ý:'),
    Content(data: 'Để sửa lỗi sau khi thanh toán, quay lại app từ đa nhiệm app bị màn hình đen trên Android thêm đoạn code sau vào MainActivity.kt để set background thành transparent'),
    Content(type: ContentType.image, data: image +'fix_bug.png'),
    Content(type: ContentType.title, data: 'Cách sử dụng: '),
    Content(data: 'Khởi tạo momo và đăng ký các phương thức xử lý sau khi thanh toán thành công/lỗi'),
    Content(type: ContentType.image, data: image+'init_momo.png'),
    Content(data: 'Tạo đối tượng chứa các thông tin thanh toán. '),
    Content(type: ContentType.image, data: image+'data_object.png'),
    Content(data: 'Mở ứng dụng Momo. '),
    Content(type: ContentType.image, data: image+'open_momo.png'),
    Content(data: 'Nhận và xử lý kết quả thanh toán. '),
    Content(type: ContentType.image, data: image+'get_result.png'),
  ],);
}