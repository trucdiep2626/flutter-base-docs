import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class FirebaseDocs {
  static String image = 'assets/firebase/';

  static Post firebaseDocs = Post(title: 'Firebase', contents: [
    Content(
        type: ContentType.text,
        data:
            'Firebase là một nền tảng lập trình di động và web application được phát triển bởi Firebase, Inc năm 2011. Vào năm 2014, Firebase được Google mua lại, và đây chính là sự bùng nổ của Firebase khi được một ông lớn công nghệ như Google đứng sau. Tính đến thời điểm tháng 10 năm 2018, Firebase có 18 sản phẩm, chúng được sử dụng bởi 1.5 triệu ứng dụng.'
            '\nRất nhanh chóng, sau khi Flutter ra mắt, các plugin hỗ trợ Flutter kết nối với Firebase cũng đã được Google phát triển, họ gọi các plugin đó là FlutterFire. Tuy nhiên, do còn mới các FlutterFire này vẫn chưa chạm đến phiên bản 1.0, đây chính là nguyên nhân gây ra rất nhiều lỗi trong quá trình tích hợp Firebase vào Flutter. '
            '\nĐể sử dụng Firebase app cần đáp ứng các yêu cầu sau: \nAndroid: \n\t Targets API level 14 (KitKat) trở lên \n\tDùng Android 4.4 trở lên'
            '\iOS: \n\tiOS 10 trở lên \n\macOS 10.12,'),
    Content(type: ContentType.title, data: 'Ứng dụng của Firebase'),
    Content(
        type: ContentType.text,
        data: '\tRealtime Database'
            '\n\tAuthentication'
            '\n\tCrash Reporting'
            '\n\tCloud Messaging'
            '\n\tRemote Config'
            '\n\tApp Indexing'
            '\n\tInvites'
            '\n\tAdMob'
            '\n\t...')
  ], subPost: [
    Post(title: 'Set up Firebase CLI (recommended)', contents: [
      Content(type: ContentType.title, data: '1. Cài đặt Firebase Core'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau:\n\tfultter pub add firebase_core'),
      Content(type: ContentType.title, data: '2. Cài đặt Firebase Tools'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau:\n\tnpm install -g firebase-tools'),
      Content(
        type: ContentType.image,
        data: image+'install_firebase_tools.png'
      ),
      Content(type: ContentType.title, data: '3. Cài đặt FirebaseFireCLI'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau:\n\tdart pub global active flutterfire_cli'),
      Content(
          type: ContentType.image,
          data: image+'install_flutterfire_cli.png'
      ),
      Content(type: ContentType.title, data: '4. Đăng nhâp Firebase'),
      Content(
          type: ContentType.text,
          data:
              'Dùng lệnh sau:\n\b firebase login \n\b Sau đó nhập tài khoản Google để đăng nhập'),
      Content(
          type: ContentType.image,
          data: image+'firebase_login.png'
      ),
      Content(type: ContentType.title, data: '5. Config app để dùng Firebase'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau:\n\tflutterfire configure'
              '\nLuồng công việc Flutterfire configure thực hiện như sau:'
              '\n\tBắt đầu hỗ trợ một nền tảng mới trong ứng dụng'
              '\n\tYêu cầu chọn các nền tảng (iOS, Android, Web) được hỗ trợ trong ứng dụng. Đối với mỗi nền tảng đã chọn, FlutterFire CLI tạo một ứng dụng Firebase mới trong dự án Firebase.Có thể chọn sử dụng dự án Firebase hiện có hoặc tạo dự án Firebase mới'
              '\n\tTự động tạo tệp cấu hình Firebase ( firebase_options.dart ) và thêm tệp đó vào thư mục lib/'
              '\n\tBắt đầu hỗ trợ một nền tảng mới trong ứng dụng'
              '\nSau lần chạy flutterfire configure đầu tiên, cần chạy lại lệnh mỗi khi: '
              '\n\tBắt đầu hỗ trợ một nền tảng mới trong ứng dụng'
              '\n\tBắt đầu sử dụng dịch vụ hoặc sản phẩm Firebase mới trong ứng dụng, đặc biệt nếu bắt đầu sử dụng đăng nhập bằng Google, Crashlytics, Performance Monitoring, or Realtime Database'
              '\nViệc chạy lại lệnh đảm bảo rằng cấu hình Firebase của ứng dụng được cập nhật và (dành cho Android) sẽ tự động thêm mọi plugin Gradle bắt buộc vào ứng dụng.'),
      Content(
          type: ContentType.image,
          data: image+'generate_firebase_option.png'
      ),

      Content(
          type: ContentType.image,
          data: image+'generate_firebase_option_ios.png'
      ),

      Content(
          type: ContentType.title, data: '6. Khởi tạo Firebase trong ứng dụng'),
      Content(
        type: ContentType.text,
        data:
            'Trong file lib/main.dart khởi tạo Firebase bằng đối tượng DefaultFirebaseOptions được xuất bởi tệp cấu hình:',
      ),
      Content(
          type: ContentType.image,
          data: image+'initialize_app.png'
      ),
      Content(
          type: ContentType.code,
          data: 'await Firebase.initializeApp\('
              '\n\toptions: DefaultFirebaseOptions.currentPlatform\);'),
    ]),
    Post(title: 'Set up Firebase manual', contents: [
      Content(type: ContentType.title, data: 'Thiết lập Firebase Project'),
      Content(
          type: ContentType.text,
          data: 'Truy cập : https://console.firebase.google.com/?hl=vi&pli=1'
              '\nNhấn “Create a project” để tạo một project'
              '\nĐặt tên => Continue => Bỏ check Enable Google Analystics => Create Project'),
      Content(type: ContentType.title, data: 'Cài đặt cho Android'),
      Content(
          type: ContentType.text,
          data:
              'Ở trang chủ, nhấn vào biểu tượng Android để thêm ứng dụng Android vào project, ở đây chúng ta sẽ phải nhập applicationId.'
              '\nMở lại project flutter, vào thư mục “android/app”, mở file “build.gradle”, tìm đến dòng “applicationId”, sửa lại dòng này thành id mong muốn (lưu ý định dạng com.example.app), copy nó và dán vào phần Android package name trong Firebase.'
              '\nSau đó nhấn Register App'
              '\nỞ bước tiếp theo, tiến hành download file google-services.json, sau đó để nó vào trong thư mục android/app của project.'
             ),

      Content(
          type: ContentType.image,
          data: image+'add_config_file.png'
      ),
      Content(
          data:
          'Tiếp theo, copy dòng “classpath ‘com.google.gms:google-services:4.3.3′”, mở project flutter, tìm đến folder android, mở file build.gradle, tìm đến phần dependencies và dán đoạn code vừa copy vào.'),
      Content(
          type: ContentType.image,
          data: image+'android_build_gradle.png'
      ),
      Content(
          data:
              'Sau đó quay lại Firebase, copy đoạn code “apply plugin: ‘com.google.gms.google-services’”, thêm vào cuối file build.gradle trong folder “android/app” và lưu lại. Quay về Firebase và nhấn Continue to console.'),
      Content(
          type: ContentType.image,
          data: image+'app_build_gradle.png'
      ),
      Content(type: ContentType.title, data: 'Cài đặt cho iOS'),
      Content(
          type: ContentType.image,
          data: image+'bundle_id.png'
      ),
      Content(
          type: ContentType.text,
          data:
              'Ở trang chủ, nhấn vào biểu tượng iOS để thêm ứng dụng iOS vào project, ở đây chúng ta sẽ phải nhập bundle ID.'
              '\nMở Xcode, vào thư mục Runner -> Targets Runner -> copy Bundle ID và dán vào phần iOS Bundle ID trong Firebase.'
              '\nSau đó nhấn Register App'
              '\nỞ bước tiếp theo, tiến hành download file GoogleServices-Info.plist, sau đó để nó vào trong thư mục Runner.'
              '\nSau đó chọn Next cho đến hết'),
    ]),
    // Post(title: 'Google Analytics', contents: [
    //   Content(
    //       data:
    //           'Google Analytics thu thập dữ liệu sử dụng và hành vi cho ứng dụng của bạn. SDK ghi lại hai loại thông tin chính:'
    //           '\n\tSự kiện: Điều gì đang xảy ra trong ứng dụng của bạn, chẳng hạn như hành động của người dùng, sự kiện hệ thống hoặc lỗi.'
    //           '\n\tThuộc tính người dùng: Các thuộc tính bạn xác định để mô tả các phân đoạn trong cơ sở người dùng của bạn, chẳng hạn như tùy chọn ngôn ngữ hoặc vị trí địa lý.'
    //           '\nAnalytics tự động ghi lại một số sự kiện và thuộc tính người dùng ; bạn không cần thêm bất kỳ mã nào để kích hoạt chúng.'),
    //   Content(type: ContentType.title, data: '')
    // ])
  ]);
}
