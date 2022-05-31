import 'dart:developer';

import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class AutoTestDocs {
  static String image = 'assets/autotest/';

  static Post autoTestDocs = Post(title: 'Autotest', contents: [], subPost: [
    Post(title: 'Overview', contents: [
      Content(type: ContentType.title, data: 'Overview'),
      Content(
          type: ContentType.text,
          data:
              'Kiểm thử là một trong những giai đoạn quan trọng nhất trong quá trình phát triển ứng dụng di động, giúp đảm bảo chất lượng của ứng dụng. Việc này yêu cầu cần lên kế hoạch và thực thi cẩn thận. Đây cũng là phần tốn nhiều thời gian nhất của quá trình phát triển.'),
      Content(type: ContentType.title, data: 'Vì sao cần dùng auto test?'),
      Content(
          data: '\r\r- Tiết kiệm thời gian và chi phí'
              '\n\r\r- Cải thiện chất lượng kiểm thử'
              '\n\r\r- Auto test có thể thực hiện các công việc test mà manual test không thể thực hiện')
    ]),
    Post(title: 'Unit Test', contents: [
      Content(type: ContentType.title, data: 'Unit Test'),
      Content(
          data:
              'Unit test kiểm tra các function, method riêng lẻ. Unit test sẽ đảm bảo cho các thành phần nhỏ của ứng dụng chạy tốt và như mong đợi. '
              'Các unit test không thực hiện đọc, ghi vào đĩa, render ra màn hình hoặc nhận các tương tác từ người dùng trong quá trình chạy. '
              'Unit test thực thi nhanh chóng, cho phép chạy hàng trăm thậm chí hàng nghìn bài test chỉ trong vài giây.'),
      Content(type: ContentType.title, data: 'Các bước viết unit test'),
      Content(
          type: ContentType.title,
          data:
              'Bước 1: Thêm plugin test hoặc flutter_test vào file pubspec.yaml'),
      Content(
          type: ContentType.code,
          data: 'dev_dependencies:\n\r\r\r\rtest: <latest_version>'),
      Content(type: ContentType.title, data: 'Bước 2: Tạo file test'),
      Content(
          data:
              'Tạo 2 file counter.dart và counter_test.dart. File counter.dart chứa class cần test và nằm trong folder lib. File counter_test.dart chứa nội dung test và nằm trong folder test.'),
      Content(
          type: ContentType.code,
          data:
              'counter_app/ \n\r\r\r\rlib/ \n\r\r\r\r\r\rcounter.dart \n\r\r\r\rtest/ \n\r\r\r\r\r\rcounter_test.dart'),
      Content(type: ContentType.title, data: 'Bước 3: Tạo class để test'),
      Content(
          type: ContentType.code,
          data: 'class Counter {'
              '\n\r\r\r\rint value = 0;'
              '\n\r\r\r\rvoid increment() => value++;'
              '\n\r\r\r\rvoid decrement() => value--;'
              '\n}'),
      Content(
          type: ContentType.title, data: 'Bước 4: Viết test cho class vừa tạo'),
      Content(type: ContentType.image, data: image + 'counter_test.png'),
      Content(
          type: ContentType.subtitle, data: 'Kết hợp nhiều test trong 1 group'),
      Content(type: ContentType.image, data: image + 'counter_group_test.png'),
    ]),
    Post(title: 'Widget Test', contents: [
      Content(type: ContentType.title, data: 'Widget Test'),
      Content(
          data:
              'Widget test kiểm tra các widget riêng lẻ, tập trung vào test các UI như button, text field,... nhằm đảm bảo giao diện hoạt động và tương tác với các phần khác đúng như mong đợi. Widget test toàn diện hơn so với so với Unit Test.'),
      Content(type: ContentType.title, data: 'Các bước viết Widget test'),
      Content(
          type: ContentType.title,
          data: 'Bước 1: Thêm plugin flutter_test vào file pubspec.yaml'),
      Content(
          type: ContentType.code,
          data: 'dev_dependencies:\n\r\r\r\rflutter_test: <latest_version>'),
      Content(type: ContentType.title, data: 'Bước 2: Tạo widget để test'),
      Content(type: ContentType.image, data: image + 'widget_to_test.png'),
      Content(
          type: ContentType.title, data: 'Bước 3: Viết test cho class vừa tạo'),
      Content(
          data:
              'Sử dụng hàm testWidgets để thực hiện test. Hàm testWidgets cho phép định nghĩa 1 widget test và tạo ra 1 WidgetTester để làm việc với nó. '
              'Để build MyWidget trong môi trường test ta dùng phương thức pumpWidget được cung cấp bởi WidgetTester, phương thức này sẽ build và render widget đã được cung cấp.'),
      Content(type: ContentType.image, data: image + 'test_widget.png'),
      Content(
          type: ContentType.subtitle,
          data: 'Lưu ý khi sử dụng các phương thức pump()'),
      Content(
          data:
              'Sau lần gọi đầu tiên đến pumpWidget(), WidgetTester cung cấp các phương thức bổ sung để rebuild các widget, cần thiết khi sử dụng StatefulWidget hoặc các animation.'
              '\nVí dụ: khi nhấn vào 1 nút gọi đến setState() Flutter sẽ không tự động rebuild lại widget này trong môi trường test mà cần sử dụng một trong các phương thức để sau yêu cầu rebuild widget. '),
      Content(type: ContentType.subtitle, data: 'tester.pump(Duration duration)'),
      Content(
          data:
              'Lập lịch và tiến hành rebuild widget sau 1 khoảng thời gian được chỉ định.'),
      Content(type: ContentType.subtitle, data: 'tester.pumpAndSettle()'),
      Content(
          data:
              'Lặp lại các lời gọi pump() với khoảng cách thời gian nhất định cho đến khi không còn frames nào được lên lịch cần để đợi tất cả animations hoàn thành.'),
      Content(
          type: ContentType.title,
          data: 'Bước 5: Tìm kiếm widget sử dụng Finder'),
      Content(
          data:
              'Trong môi trường test, để tìm kiếm widget có hiển thị đúng như mong đợi hay không ta sử dụng Finder. '
              'Để tạo Finder ta sử dụng phương thức find() do flutter_test cung cấp. '),
      Content(type: ContentType.image, data: image + 'find_widget.png'),
      Content(
          type: ContentType.title,
          data: 'Bước 6: Kiểm tra widget sử dụng Matcher'),
      Content(
          data:
              'Cuối cùng, để kiểm tra các widget để xuất hiện đúng như mong đợi hay không ta sử dụng Matcher.'
              '\nCác phương thức thường được sử dụng của Matcher:'
              '\n\r\r\r\rfindOneWidget: kiểm tra rằng widget nào đó xuất hiện 1 lần trong widget tree.'
              '\n\r\r\r\rfindNothing: kiểm tra rằng không có widget nào được tìm thấy.'
              '\n\r\r\r\rfindWidgets: kiểm tra rằng widget nào đó xuất hiện 1 hoặc nhiều lần trong widget tree.'
              '\n\r\r\r\rfindNWidget: kiểm tra rằng widget nào đó xuất hiện N lần trong widget tree.'),
      Content(type: ContentType.image, data: image + 'expect_n_widget.png'),
    ]),
    Post(title: 'Integration Test', contents: [
      Content(type: ContentType.title, data: 'Integration Test'),
      Content(
          data:
              'Integration Test kiểm tra toàn bộ app hoặc 1 phần chức năng. Là sự kết hợp giữa Unit test và Widget test. Integration test là kỹ thuật test cấp cao nhất được tích hợp trong Flutter SDK. '
              'Để thực thi Integration Test, bạn cần có simulator hoặc thiết bị thật. Trong quá trình thử nghiệm, ứng dụng sẽ xuất hiện trên simulator hoặc thiết bị thật và chạy ứng dụng tự động. '
              'Kiểm thử tích hợp rất hữu ích để kiểm tra một tính năng hoặc toàn bộ ứng dụng trong quá trình phát triển. Nó sẽ hiệu quả hơn việc chúng ta phải chạy ứng dụng và kiểm tra các tính năng hoặc toàn bộ ứng dụng theo cách thủ công.'),
      Content(type: ContentType.title, data: 'Các bước viết Integration test'),
      Content(
          type: ContentType.title,
          data: 'Bước 1: Thêm plugin integration_test vào file pubspec.yaml'),
      Content(type: ContentType.image, data: image + 'integration_test.png'),
      Content(type: ContentType.title, data: 'Bước 2: Tạo file test'),
      Content(
          type: ContentType.code,
          data:
              'counter_app/ \n\r\r\r\rlib/ \n\r\r\r\r\r\rmain.dart \n\r\r\r\rintegration_test/ \n\r\r\r\r\r\rapp_test.dart'),
      Content(type: ContentType.title, data: 'Viết integration_test'),
      Content(
          data:
              '1. Khởi tạo IntegrationTestWidgetsFlutterBinding, một singleton hỗ trợ thực hiện các test trên một thiết bị vật lý.'
              '\n2. Tương tác và kiểm tra các widget bằng cách sử dụng WidgetTester.'
              '\n3. Test các tương tác theo kịch bản.'),
      Content(
          type: ContentType.image, data: image + 'integration_test_class.png'),
      Content(type: ContentType.title, data: 'Bước 3: Run Integration Test'),
      Content(type: ContentType.title, data: 'Mobile'),
      Content(
          data:
              'Để test trên thiết bị iOS/Android thật, đầu tiên cần kết nói với thiết bị và chạy lệnh sau'),
      Content(
          type: ContentType.code,
          data: 'flutter test integration_test/app_test.dart'),
      Content(data: 'Hoặc lệnh'),
      Content(type: ContentType.code, data: 'flutter test integration_test'),
      Content(type: ContentType.subtitle, data: 'Web'),
      Content(
          data:
              'Để test trên web cần download ChromeDriver tại: https://chromedriver.chromium.org/downloads'),
      Content(
          data:
              'Sau đó tạo directory test_driver chứa file mới tên integration_test.dart'),
      Content(
          type: ContentType.code,
          data: 'flutter test integration_test/app_test.dart'),
      Content(
          type: ContentType.code,
          data:
              'import \'package:integration_test/integration_test_driver.dart\';'
              '\nFuture<void> main() => integrationDriver();\''),
      Content(data: 'Chạy WebDriver. Ví dụ'),
      Content(type: ContentType.code, data: 'chromedriver --port=4444'),
      Content(data: 'Tại file root của project, chạy lệnh:'),
      Content(
          type: ContentType.code,
          data: 'flutter drive \ '
              '\n\r--driver=test_driver/integration_test.dart \ '
              '\n\r--target=integration_test/app_test.dart \ '
              '\n\r-d web-server'),
    ]),
  ]);
}
