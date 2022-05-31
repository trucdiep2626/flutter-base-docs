import 'package:flutter/cupertino.dart';
import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class FirebaseDocs {
  static String image = 'assets/firebase/';

  static Post firebaseDocs = Post(title: 'Firebase', contents: [], subPost: [
    Post(title: 'About Firebase', contents: [
      Content(type: ContentType.title, data: 'Về Firebase'),
      Content(
          type: ContentType.text,
          data:
              'Firebase là một nền tảng lập trình di động và web application được phát triển bởi Firebase, Inc năm 2011. Vào năm 2014, Firebase được Google mua lại, và đây chính là sự bùng nổ của Firebase khi được một ông lớn công nghệ như Google đứng sau. Tính đến thời điểm tháng 10 năm 2018, Firebase có 18 sản phẩm, chúng được sử dụng bởi 1.5 triệu ứng dụng.'
              '\nRất nhanh chóng, sau khi Flutter ra mắt, các plugin hỗ trợ Flutter kết nối với Firebase cũng đã được Google phát triển, họ gọi các plugin đó là FlutterFire. Tuy nhiên, do còn mới các FlutterFire này vẫn chưa chạm đến phiên bản 1.0, đây chính là nguyên nhân gây ra rất nhiều lỗi trong quá trình tích hợp Firebase vào Flutter. '
              '\n\nĐể sử dụng Firebase app cần đáp ứng các yêu cầu sau: \nAndroid: \n\r\r- Targets API level 14 (KitKat) trở lên \n\r\r- Dùng Android 4.4 trở lên'
              '\niOS: \n\r\r- iOS 10 trở lên \n\r\r- macOS 10.12,'),
      Content(
          type: ContentType.title,
          data: 'Các chức năng chính của Firebase bao gồm:'),
      Content(type: ContentType.image, data: image + 'firebase_function.png'),
      Content(type: ContentType.subtitle, data: '1. Firebase Develop'),
      Content(
          type: ContentType.text,
          data:
              '\r\r\r- Cloud Messaging là một giải pháp tin nhắn đa nền tảng đáng tin cậy miễn phí.Mỗi tin nhắn dung lượng đến 4KB trong ứng dụng client.'
              '\n\r\r\r- Firebase Authentication Hầu hết các ứng dụng cần xác thực quyền. Giúp ứng dụng lưu dữ liệu an toàn sử dụng trong các đám mây.'
              '\n\r\r\r- Firebase Realtime Database cơ sở dữ liệu đám mây NoSQL đồng bộ hóa. Dữ liệu được đồng bộ hóa trên tất cả các client trong thời gian thực, và luôn có sẵn khi ứng dụng offline.'
              '\n\r\r\r- Firebase Storage được xây dựng cho các nhà phát triển ứng dụng, để lưu trữ và phục vụ nội dung do người dùng tạo ra, chẳng hạn như hình ảnh hoặc video.'
              '\n\r\r\r- Firebase Hosting nhanh chóng và an toàn lưu trữ tĩnh cho ứng dụng web.'
              '\n\r\r\r- Firebase Test Lab cung cấp các thiết bị vật lý và ảo cho phép chạy thử nghiệm mô phỏng môi trường sử dụng thực tế'
              '\n\r\r\r- Firebase Crash Reporting Thông tin toàn diện và hành động để giúp chẩn đoán và sửa chữa các vấn đề trong ứng dụng.'),
      Content(type: ContentType.subtitle, data: '2. Firebase Grow'),
      Content(
          type: ContentType.text,
          data:
              '\r\r\r- Notifications cho phép gửi và duy trì tin nhắn của người dùng. Sử dụng là miễn phí và không giới hạn.'
              '\n\r\r\r- Remote Config Cập nhật ứng dụng không cần triển khai một phiên bản mới. Cài đặt nhanh chóng dễ dàng. App Indexing Trợ giúp người dùng khám phá và tái tham gia với các ứng dụng của bạn bằng cách hiển thị có liên quan nội dung trong ứng dụng trong kết quả tìm kiếm của Google.'
              '\n\r\r\r- Dynamic Links là các URL thông minh tự động thay đổi hành vi để cung cấp tốt nhất trên các nền tảng khác nhau. Liên kết động có thể tồn tại trong ứng dụng quá trình cài đặt và đưa người dùng tới nội dung có liên quan cho dù họ là một người dùng mới hoặc một khách hàng lâu năm.'
              '\n\r\r\r- Invites giới thiệu ứng dụng và chia sẻ.'
              '\n\r\r\r- AdWords Tự động liên kết AdWords với người dùng mà bạn xác định trong căn cứ Firebase Analytics. Cải thiện nhắm mục tiêu quảng cáo và tối ưu hóa hiệu suất chiến dịch của bạn.'),
      Content(type: ContentType.subtitle, data: '3. Earn'),
      Content(data: '\r\r\r Kiếm tiền thông qua Admod')
    ]),
    Post(title: 'Set up Firebase CLI (recommended)', contents: [
      Content(type: ContentType.title, data: '1. Cài đặt Firebase Core'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau: fultter pub add firebase_core'),
      Content(type: ContentType.title, data: '2. Cài đặt Firebase Tools'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau: npm install -g firebase-tools'),
      Content(
          type: ContentType.image, data: image + 'install_firebase_tools.png'),
      Content(type: ContentType.title, data: '3. Cài đặt FirebaseFireCLI'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh sau: dart pub global active flutterfire_cli'),
      Content(
          type: ContentType.image, data: image + 'install_flutterfire_cli.png'),
      Content(type: ContentType.title, data: '4. Đăng nhâp Firebase'),
      Content(
          type: ContentType.text,
          data:
              'Dùng lệnh sau:  firebase login \nSau đó nhập tài khoản Google để đăng nhập'),
      Content(type: ContentType.image, data: image + 'firebase_login.png'),
      Content(type: ContentType.title, data: '5. Config app để dùng Firebase'),
      Content(
          type: ContentType.text, data: 'Dùng lệnh sau: flutterfire configure'),
      Content(
          type: ContentType.text,
          data: 'Luồng công việc Flutterfire configure thực hiện như sau:'),
      Content(
          type: ContentType.text,
          data: '\r\r- Bắt đầu hỗ trợ một nền tảng mới trong ứng dụng'),

      Content(
          type: ContentType.text,
          data:
              '\r\r- Yêu cầu chọn các nền tảng (iOS, Android, Web) được hỗ trợ trong ứng dụng. Đối với mỗi nền tảng đã chọn, FlutterFire CLI tạo một ứng dụng Firebase mới trong dự án Firebase.Có thể chọn sử dụng dự án Firebase hiện có hoặc tạo dự án Firebase mới'),
      Content(
          type: ContentType.text,
          data:
              '\r\r- Tự động tạo tệp cấu hình Firebase ( firebase_options.dart ) và thêm tệp đó vào thư mục lib/'),

      Content(
          type: ContentType.text,
          data:
              'Sau lần chạy flutterfire configure đầu tiên, cần chạy lại lệnh mỗi khi: '),
      Content(
          type: ContentType.text,
          data: '\r\r- Bắt đầu hỗ trợ một nền tảng mới trong ứng dụng'),

      Content(
          type: ContentType.text,
          data: 'Luồng công việc Flutterfire configure thực hiện như sau:'),
      Content(
          type: ContentType.text,
          data: '\r\r- Bắt đầu hỗ trợ một nền tảng mới trong ứng dụng'),

      Content(
          type: ContentType.text,
          data:
              '\r\r- Bắt đầu sử dụng dịch vụ hoặc sản phẩm Firebase mới trong ứng dụng, đặc biệt nếu bắt đầu sử dụng đăng nhập bằng Google, Crashlytics, Performance Monitoring, or Realtime Database'),
      Content(
          type: ContentType.text,
          data:
              'Việc chạy lại lệnh đảm bảo rằng cấu hình Firebase của ứng dụng được cập nhật và (dành cho Android) sẽ tự động thêm mọi plugin Gradle bắt buộc vào ứng dụng.'),
      Content(
          type: ContentType.image,
          data: image + 'generate_firebase_option.png'),
      Content(
          type: ContentType.image,
          data: image + 'generate_firebase_option_ios.png'),

      Content(
          type: ContentType.title, data: '6. Khởi tạo Firebase trong ứng dụng'),
      Content(
        type: ContentType.text,
        data:
            'Trong file lib/main.dart khởi tạo Firebase bằng đối tượng DefaultFirebaseOptions được xuất bởi tệp cấu hình:',
      ),
      Content(type: ContentType.image, data: image + 'initialize_app.png'),
      // Content(
      //     type: ContentType.code,
      //     data: 'await Firebase.initializeApp\('
      //         '\n\roptions: DefaultFirebaseOptions.currentPlatform\);'),
    ]),
    Post(title: 'Set up Firebase manual', contents: [
      Content(type: ContentType.title, data: 'Thiết lập Firebase Project'),
      Content(
          type: ContentType.text,
          data:
              '\r\r- Truy cập : https://console.firebase.google.com/?hl=vi&pli=1'),
      Content(
          type: ContentType.text,
          data: '\r\r- Nhấn “Create a project” để tạo một project'),
      Content(
          type: ContentType.text,
          data:
              '\r\r- Đặt tên => Continue => Bỏ check Enable Google Analystics => Create Project'),
      Content(type: ContentType.title, data: 'Cài đặt cho Android'),
      Content(
          type: ContentType.text,
          data:
              'Ở trang chủ, nhấn vào biểu tượng Android để thêm ứng dụng Android vào project, ở đây chúng ta sẽ phải nhập applicationId.'),
      Content(
          type: ContentType.text,
          data:
              'Mở lại project flutter, vào thư mục “android/app”, mở file “build.gradle”, tìm đến dòng “applicationId”, sửa lại dòng này thành id mong muốn (lưu ý định dạng com.example.app), copy nó và dán vào phần Android package name trong Firebase.'),
      Content(type: ContentType.text, data: 'Sau đó nhấn Register App'),
      Content(
          type: ContentType.text,
          data:
              'Ở bước tiếp theo, tiến hành download file google-services.json, sau đó để nó vào trong thư mục android/app của project.'),
      Content(type: ContentType.image, data: image + 'add_config_file.png'),
      Content(
          data:
              'Tiếp theo, copy dòng “classpath ‘com.google.gms:google-services:4.3.3′”, mở project flutter, tìm đến folder android, mở file build.gradle, tìm đến phần dependencies và dán đoạn code vừa copy vào.'),
      Content(
          type: ContentType.image, data: image + 'android_build_gradle.png'),
      Content(
          data:
              'Sau đó quay lại Firebase, copy đoạn code “apply plugin: ‘com.google.gms.google-services’”, thêm vào cuối file build.gradle trong folder “android/app” và lưu lại. Quay về Firebase và nhấn Continue to console.'),
      Content(type: ContentType.image, data: image + 'app_build_gradle.png'),
      Content(type: ContentType.title, data: 'Cài đặt cho iOS'),
      Content(type: ContentType.image, data: image + 'bundle_id.png'),
      Content(
          type: ContentType.text,
          data:
              'Ở trang chủ, nhấn vào biểu tượng iOS để thêm ứng dụng iOS vào project, ở đây chúng ta sẽ phải nhập bundle ID.'),
      Content(
          type: ContentType.text,
          data:
              'Mở Xcode, vào thư mục Runner -> Targets Runner -> copy Bundle ID và dán vào phần iOS Bundle ID trong Firebase.'),
      Content(type: ContentType.text, data: 'Sau đó nhấn Register App'),
      Content(
          type: ContentType.text,
          data:
              'Ở bước tiếp theo, tiến hành download file GoogleServices-Info.plist, sau đó để nó vào trong thư mục Runner.'),
      Content(type: ContentType.text, data: 'Sau đó chọn Next cho đến hết'),
    ]),
    Post(title: 'Google Analytics', contents: [
      Content(
          data:
              'Google Analytics thu thập dữ liệu sử dụng và hành vi cho ứng dụng của bạn. SDK ghi lại hai loại thông tin chính:'
              '\n\r\r- Sự kiện: Điều gì đang xảy ra trong ứng dụng của bạn, chẳng hạn như hành động của người dùng, sự kiện hệ thống hoặc lỗi.'
              '\n\r\r- Thuộc tính người dùng: Các thuộc tính bạn xác định để mô tả các phân đoạn trong cơ sở người dùng của bạn, chẳng hạn như tùy chọn ngôn ngữ hoặc vị trí địa lý.'
              '\nAnalytics tự động ghi lại một số sự kiện và thuộc tính người dùng, bạn không cần thêm bất kỳ mã nào để kích hoạt chúng.'),
      Content(
          type: ContentType.title, data: 'Thêm Firebase Analytics SDK vào app'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh tại command: flutter pub add firebase_analytics'),
      Content(
          type: ContentType.text,
          data:
              'Hoặc thêm plugin firebase_analytics vào file pubspec.yaml sau đó chạy flutter pub get'),
      Content(
          type: ContentType.image, data: image + 'add_plugin_analytics.png'),
      Content(
          type: ContentType.title, data: 'Các Function của Google Analytics'),
      Content(
          type: ContentType.image,
          data: image + 'firebase_analytics_function.png'),
      Content(
          type: ContentType.text,
          data:
              'logEvent: thống kê các sự kiên trong app. parameters định nghĩa đổi tượng trong báo cáo. Được xuất sang bigQuery và tìm theo các truy vấn mẫu.'
              '\nlogLogin: Phương thức người dùng để login.'
              '\nsetCurrentScreen: theo dõi số lần xem màn hình.'
              '\nsetUserID: lữu trữ id người dùng và sử dụng ở truy vẫn bigQuery, liên kết dữ liệu phân tích của 1 người dùng trên nhiều ứng dụng.'
              '\nsetUserProperty: mô tả người dùng ứng dụng.'),
      Content(
          type: ContentType.image,
          data: image + 'firebase_analytics_function2.png'),
    ]),
    Post(title: 'Firebase Crashlytics', contents: [
      Content(
          type: ContentType.text,
          data:
              'Firebase Crashlytics là một trình báo cáo sự cố thời gian thực giúp theo dõi, ưu tiên và khắc phục các vấn đề về độ ổn định ảnh hưởng đến chất lượng ứng dụng. Crashlytics giúp tiết kiệm thời gian khắc phục sự cố bằng cách nhóm các sự cố một cách thông minh và làm nổi bật các trường hợp dẫn đến chúng.'
              '\nTìm hiểu xem một sự cố cụ thể có đang ảnh hưởng đến nhiều người dùng hay không. Nhận thông báo khi sự cố đột ngột tăng mức độ nghiêm trọng. Tìm ra những dòng mã nào đang gây ra sự cố.'),
      Content(
          type: ContentType.title,
          data: 'Thêm Firebase Crashlytics SDK vào app'),
      Content(
          type: ContentType.text,
          data: 'Dùng lệnh tại command: flutter pub add firebase_crashlytics'),
      Content(
          type: ContentType.text,
          data:
              'Hoặc thêm plugin firebase_crashlytics vào file pubspec.yaml sau đó chạy flutter pub get'),
      Content(
          type: ContentType.image, data: image + 'add_plugin_crashlytics.png'),
      Content(type: ContentType.title, data: 'Non-fatals vs Crashes'),
      Content(
          type: ContentType.text,
          data: 'Google Crashlytics ghi nhận 2 loại event Non-fatals và Crashes'
              '\n\r\r- Non-fatals là lỗi không gây ra sự cố cho người dùng, có thể khôi phục được và ứng dụng có thể tiếp tục'
              '\n\r\r- Crashes là các lỗi xảy ra làm ứng dụng không thể tiếp tục được nữa'),
      Content(
          type: ContentType.image, data: image + 'nonfatals_and_crashes.png'),
      Content(
          type: ContentType.title,
          data: 'Các lỗi được log tại giao diện của Firebase Crashlytics'),
      Content(
          type: ContentType.image,
          data: image + 'crashlytics_firebase_console.png'),
      Content(
          type: ContentType.image,
          data: image + 'crashlytics_firebase_console2.png'),
      Content(
          type: ContentType.title,
          data: 'Report các lỗi non-fatal trong framework Flutter'),
      Content(
          type: ContentType.text,
          data:
              'Có thể tự động ghi lại tất cả các lỗi xảy ra trong framework Flutter bằng cách ghi đè FlutterError.onError bằng FirebaseCrashlytics.instance.recordFlutterFatalError:'),
      Content(
          type: ContentType.image, data: image + 'error_from_framework.png'),
      Content(type: ContentType.title, data: 'Run zoned guarded'),
      Content(
          type: ContentType.text,
          data:
              'Không phải tất cả các lỗi đều được phát hiện bởi Flutter mà đôi khi còn được phát hiện bởi Zoned. Một trong những trường hợp phổ biến mà việc dựa vào Flutter để kiểm soát lỗi là không đủ là khi xảy ra exception bên trong onPressed của 1 Button. Để bắt những lỗi như vậy có thể sử dụng runZonedGuarded'),
      Content(type: ContentType.image, data: image + 'run_zoned_guarded.png'),
    ]),
    Post(title: 'Phone Authentication', contents: [
      Content(
          data:
              'Xác thực thông qua điện thoại cho phép user đăng nhập vào Firebase bằng cách dùng điện thoại của họ như một công cụ xác thực. '
              'Tin nhắn văn bản chưa mã code sẽ được gửi đến điện thoại của user thông qua số điện thoại đã được cung cấp. \nPhương thức xác thực qua điện thoại không hỗ trợ cho tất cả các quốc gia. '),
      Content(type: ContentType.title, data: 'Setup'),
      Content(
          data:
              'Trước khi bắt đầu với Phone Authentication, cần thực hiện các bước sau: '),
      Content(
          data:
              '1. Kích hoạt phương thức đăng nhập bằng điện thoại trong Firebase Console. '),
      Content(data: '2. Với Android, cần cài đặt SHA-1 hash cho project. '),
      Content(
          data:
              '3. Với iOS, trong Xcode cần kích hoạt push notification cho project và config APNs authentication key với FCM. '),
      Content(
          data:
              '4. Với web, cần thêm domain của ứng dụng vào Firebase Console, phía dưới OAuth redirect domains. '),
      Content(
          data:
              'Lưu ý: Xác thực bằng điện thoại chỉ hoạt động trên thiết bị thật hoặc web. '),
      Content(type: ContentType.title, data: 'Cách sử dụng'),
      Content(type: ContentType.subtitle, data: 'Native: verifyPhoneNumber'),
      Content(
          data:
              'Số điện thoại của user cần được xác thực sau đó user có thể đăng nhập hoặc liên kết tài khoản của họ với PhoneAuthCredential. '
              '\nĐầu tiên, cần yêu cầu user cung cấp số điện thoại. Mỗi lần cung cấp gọi phương thức verifyPhoneNumber(): '),
      Content(type: ContentType.image, data: image + 'verify_phone_number.png'),
      Content(data: 'Có 4 callbacks cần xử lý để cập nhật UI theo state: '),
      Content(type: ContentType.subtitle, data: '1. verificationCompleted '),
      Content(
          data:
              'Chỉ hoạt động trên thiết bị Android để tự động xử lý SMS code. '),
      Content(
          data:
              'Khi SMS code được gửi đến thiết bị, Android sẽ tự động xác thực SMS code mà không cần yêu cầu user nhập code thủ công. Khi event xảy ra, '
              'PhoneAuthCredential sẽ được cung cấp để sử dụng đăng nhập hoặc liên kết số điện thoại đó vào tài khoản của họ. '),
      Content(
          type: ContentType.image, data: image + 'verification_completed.png'),
      Content(type: ContentType.subtitle, data: '2. verificationFailed '),
      Content(
          data:
              'Nếu Firebase trả về lỗi như số điện thoại sai hoặc số lượng SMS đã đạt giới hạn, một FirebaseAuthException sẽ được gửi về handler. '),
      Content(type: ContentType.image, data: image + 'verification_failed.png'),
      Content(type: ContentType.subtitle, data: '3. codeSent '),
      Content(
          data:
              'Khi Firebase gửi mã SMS đến thiết bị, handler này sẽ được kích hoạt với verifyId và resendToken (Gửi lại chỉ được hỗ trợ trên thiết bị Android, thiết bị iOS sẽ luôn trả về null). '
              'Sau khi được kích hoạt, cần cập nhật UI để nhắc user nhập SMS code. Sau khi SMS code đã được nhập, có thể kết hợp ID xác minh với SMS code để tạo PhoneAuthCredential mới:'),
      Content(type: ContentType.image, data: image + 'code_sent.png'),
      Content(type: ContentType.subtitle, data: '4. codeAutoRetrievalTimeout '),
      Content(
          data:
              'Trên các thiết bị Android có hỗ trợ tự động xử lý code, phương thức này sẽ được gọi nếu quá timeout mà code chưa được xử lý. Mắc định timeout là 30 giây và có thể tùy chỉnh. '),
      Content(
          type: ContentType.image,
          data: image + 'code_auto_retrieval_timeout.png'),
      Content(type: ContentType.subtitle, data: 'Web: signInWithPhoneNumber'),
      Content(
          data:
              'Trên nền tảng web, để tăng cường bảo mật và tránh spam, user cần xác thực bằng cách hoàn thành Google reCAPTCHA. '
              'Sau khi hoàn thành, code sẽ được gửi đến số điện thoại đã được cung cấp. '),
      Content(
          type: ContentType.code,
          data:
              'ConfirmationResult confirmationResult = await auth.signInWithPhoneNumber(\'+44 7123 123 456\', '
              '\n\r\r\r\r\r\rRecaptchaVerifier('
              '\n\r\r\r\r\r\rcontainer: \'recaptcha\','
              '\n\r\r\r\r\r\rsize: RecaptchaVerifierSize.compact,'
              '\n\r\r\r\r\r\rtheme: RecaptchaVerifierTheme.dark,'
              '\n\r\r\r\r\r\ronSuccess: () => print(\'reCAPTCHA Completed!\'),'
              '\n\r\r\r\r\r\ronError: (FirebaseAuthException error) => print(error),'
              '\n\r\r\r\r\r\ronExpired: () => print(\'reCAPTCHA Expired!\'),'
              '));'),
    ]),
    Post(title: 'Password Authentication', contents: [
      Content(
          data:
              'Có thể sử dụng Firebase Authentication để cho phép user xác thực với Firebase bằng email và mật khẩu. '),
      Content(type: ContentType.title, data: 'Setup'),
      Content(
          data:
              'Trong phần Authentication, mở Sign in method, sau đó enable Email/password sign-in và Lưu.  '),
      Content(type: ContentType.title, data: 'Tạo tài khoản:'),
      Content(
          data:
              'Để tạo tài khoản mới bằng email và mật khẩu, dùng phương thức createUserWithEmailAndPassword():'),
      Content(
          type: ContentType.image, data: image + 'create_user_with_email.png'),
      Content(
          type: ContentType.title, data: 'Đăng nhập bằng email và mật khẩu:'),
      Content(
          data:
              'Để đăng nhập bằng email và mật khẩu, dùng phương thức signInWithEmailAndPassword():'),
      Content(type: ContentType.image, data: image + 'sign_in_with_email.png'),
      Content(type: ContentType.title, data: 'Đăng xuất:'),
      Content(data: 'Để đăng xuất, dùng phương thức signOut():'),
      Content(
          type: ContentType.code,
          data: 'await FirebaseAuth.instance.signOut();'),
    ]),
    Post(title: 'Social authentication', contents: [
      Content(type: ContentType.title, data: 'Google'),
      Content(type: ContentType.subtitle, data: 'Setup'),
      Content(data: 'Trước khi bắt đầu, cần thực hiện các bước sau: '),
      Content(
          data:
              '1. Kích hoạt phương thức đăng nhập bằng Google trong Firebase Console. '),
      Content(data: '2. Với Android, cần cài đặt SHA-1 hash cho project. '),
      Content(type: ContentType.subtitle, data: 'iOS và Android'),
      Content(data: 'Cần cài đặt google_sign_in plugin trước khi sử dụng.'),
      Content(
          type: ContentType.image, data: image + 'mobile_google_sign_in.png'),
      Content(type: ContentType.subtitle, data: 'Web'),
      Content(
          data: 'Ở web, Firebase SDK hỗ trợ tự động xử lý luồng xác thực. '
              '\n Đầu tiên cần tạo Google Auth Provider, đăng ký các quyền truy cập muốn có từ user. '),
      Content(
          type: ContentType.image, data: image + 'web_gg_auth_provider.png'),
      Content(
          data:
              'Khi sử dụng phuong thức signInWithPopup sẽ xuất hiện 1 cửa sổ mới để yêu cầu đăng nhập. Nếu muốn tiến trình xác thực chỉ xảy ra trong 1 cửa sổ dùng phương thức signInWithRedirect'),
      Content(type: ContentType.image, data: image + 'web_gg_sign_in.png'),
      Content(type: ContentType.title, data: 'Facebook'),
      Content(type: ContentType.subtitle, data: 'Setup'),
      Content(
          data:
              'Đầu tiên, cần tạo app trên facebook for developers trước. Truy cập developers.facebook.com, đăng nhập tài khoản developer của mình, nếu chưa có thì cứ dùng account facebook đăng nhập vào và thực hiện theo hướng dẫn. Ở trang chủ, vào My Apps và chọn Create App.'),
      Content(type: ContentType.image, data: image + 'fb_my_apps.png'),
      Content(
          data:
              'Tiếp theo, chọn loại ứng dụng cần tạo. Sau khi tạo xong sẽ không thể thay đổi loại ứng dụng đã chọn. '),
      Content(type: ContentType.image, data: image + 'fb_type_app.png'),
      Content(
          data:
              'Tiếp theo, nhập tên ứng dụng. Lưu ý là tên này không được chứa tên thương hiệu ví dụ như trong tên mà có chữ Fb hay Facebook thì đều bị chặn. Phần Contact Email nhập email vào và nhấn Create App ID.'),
      Content(type: ContentType.image, data: image + 'fb_info_app.png'),
      Content(
          data:
              'Sau khi tạo xong, nó sẽ chuyển chúng ta về trang quản lý, ở trang này có mục Add product, tìm mục Facebook Login và chọn Set up.'),
      Content(type: ContentType.image, data: image + 'fb_add_product_app.png'),
      Content(
          data: 'Ở phần Quick Start, chọn nền tảng cần để bắt đầu thiết lập.'),
      Content(type: ContentType.image, data: image + 'fb_choose_platform.png'),
      Content(type: ContentType.subtitle, data: 'Android'),
      Content(
          data:
              'Ở phần setup này tổng cộng có 10 step, ở hai step đầu setup SDK theo hướng dẫn. Ở step thứ ba, ta lấy applicationId trong file “android/app/build.gradle” và để vào Package Name, phần Default Activity Class Name cũng dán vào và thêm .MainActivity vào sau đó nhấn Save. '),
      Content(type: ContentType.image, data: image + 'fb_package_name.png'),
      Content(
          data: 'Ở step 4, thực hiện theo các bước sau để lấy Key Hash: '
              '\n\r\r\r\r- Tải OpenSSL của Google và giải nén. Link tải: https://code.google.com/archive/p/openssl-for-windows/downloads'
              '\n\r\r\r\r- Tìm thư mục jre/bin trong thư mục cài đặt Android Studio (vd “C:\\Program Files\\Android\\Android Studio\\jre\\bin”) và mở Git bash.'
              '\n\r\r\r\r- Copy đoạn code trong mục Windows, dán vào Git bash, sửa PATH_TO_OPENSSL_LIBRARY thành đường dẫn đến thư mục chứa OpenSSL đã giải nén. Sửa USERNAME thành tên User. '
              '\n\r\r\r\r- Nhập mật khẩu, mật khẩu mặc định sẽ là “android”. Đoạn code sẽ xuất hiện, copy và dán vào phần Key Hashes, nhấn Save và Continue để tiếp tục.'),
      Content(type: ContentType.image, data: image + 'fb_gen_key_hash.png'),
      Content(
          type: ContentType.image, data: image + 'fb_register_key_hash.png'),
      Content(
          data:
              'Ở step 5, nếu muốn thông báo của Android có thể mở ứng dụng thì Enable Single Sign On, không thì để mặc định, nhấn Save và Continue.'),
      Content(type: ContentType.image, data: image + 'fb_enable_sso.png'),
      Content(
          data:
              'Step 6: \n\r\r\r\r1. Mở file “/android/app/src/main/res/values/strings.xml”. '
              '\n\r\r\r\r2. Thêm các thành phần string có tên là facebook_app_id, fb_login_protocol_scheme và facebook_client_token, sau đó đặt những giá trị này thành ID ứng dụng và Mã ứng dụng. '),
      Content(
          type: ContentType.code,
          data: '<string name="facebook_app_id">1234</string>'
              '\n<string name="fb_login_protocol_scheme">fb1234</string>'
              '\n<string name="facebook_client_token">56789</string>'),
      Content(
          data: ': \n\r\r\r\r3. Mở file /app/manifest/AndroidManifest.xml. '
              '\n\r\r\r\r4. Thêm các thành phần meta-data vào thành phần application cho ID ứng dụng và mã ứng dụng. '),
      Content(
          type: ContentType.code,
          data:
              '<meta-data android:name="com.facebook.sdk.ApplicationId" android:value="@string/facebook_app_id"/>'
              '\n<meta-data android:name="com.facebook.sdk.ClientToken" android:value="@string/facebook_client_token"/>'),
      Content(data: '\r\r\r\r5. Thêm Facebook Activity và custom chrome tab. '),
      Content(
          type: ContentType.code,
          data: '<activity android:name="com.facebook.FacebookActivity"'
              '\n\r\r\r\randroid:configChanges="keyboard|keyboardHidden|screenLayout|screenSize|orientation"'
              '\n\r\r\r\randroid:label="@string/app_name" />'
              '\n<activity'
              '\n\r\r\r\randroid:name="com.facebook.CustomTabActivity"'
              '\n\r\r\r\randroid:exported="true">'
              '\n\r\r\r\r<intent-filter>'
              '\n\r\r\r\r\r\r\r\r<action android:name="android.intent.action.VIEW" />'
              '\n\r\r\r\r\r\r\r\r<category android:name="android.intent.category.DEFAULT" />'
              '\n\r\r\r\r\r\r\r\r<category android:name="android.intent.category.BROWSABLE" />'
              '\n\r\r\r\r\r\r\r\r<data android:scheme="@string/fb_login_protocol_scheme" />'
              '\n\r\r\r\r</intent-filter>'
              '\n</activity>'),
      Content(data: '6. Cấp quyền truy cập Internet. '),
      Content(
          type: ContentType.code,
          data:
              '<uses-permission android:name="android.permission.INTERNET"/>'),
      Content(type: ContentType.subtitle, data: 'Config tại Firebase Console'),
      Content(
          data:
              'Để config Firebase Authentication login với Facebook cần lấy được App ID và App Secret, để lấy được thông tin làm như sau: ở trên trang facebook for developers tìm mục Basic trong tab Settings và nhấn vào sẽ thấy App ID và App Secret'),
      Content(
          type: ContentType.image, data: image + 'fb_get_app_id_secret.png'),
      Content(
          data:
              'Vào Firebase Console, mở phần Authentication -> Sign In Method -> Điền các thông tin vừa lấy được, copy OAuth url và Save. '),
      Content(type: ContentType.image, data: image + 'fb_enable_method.png'),
      Content(
          data:
              'Sau đó quay lại Facebook for developer, đến mục Settings trong product Facebook Login. Sau đó dán URL vừa copy vào mục Valid OAuth Redirect URIs và nhấn Save.'),
      Content(type: ContentType.image, data: image + 'fb_oauth_url.png'),
      Content(type: ContentType.subtitle, data: 'Xử lý code Flutter đăng nhập với Facebook và Firebase'),
      Content(data: 'Để đăng nhập ')
    ])
  ]);
}
