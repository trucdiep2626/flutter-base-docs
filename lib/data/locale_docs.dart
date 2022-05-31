import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/models/post.dart';

class LocaleDocs {
  static String image = 'assets/locale/';

  static Post localeDocs = Post(title: 'Locale', contents: [
    Content(type: ContentType.title, data: 'Cài đặt hỗ trợ đa ngôn ngữ'),
    Content(type: ContentType.subtitle, data: '1. Cài đặt Plugin Flutter Intl'),
    Content(data: 'Link: https://plugins.jetbrains.com/plugin/13666-flutter-intl'),
    Content(type: ContentType.image, data: image +'install_intl.png'),
    Content( data:'2. Sau khi cài xong -> tạo một Flutter project như thông thường'),
    Content( data: '3. Sau khi tạo project xong, trên thanh công cụ android studio chọn Tools -> Flutter Intl -> Initialize for the Project để plugin tiến hành generate ra các file cần thiết. '),
    Content( data: '4. Lúc này chạy xong sẽ xuất hiện hai folder mới trong folder lib, là l10n và generated. Không nên sửa đổi bất kỳ file nào trong thư mục generated. \nTrong thư mục l10n sẽ có file intl_en.arb đây chính là file chứa string cho ngôn ngữ en. Mặc định khi run xong ngôn ngữ en sẽ được gen tự động'
  '\n5. Để add thêm một language mới các bạn tiếp tục chọn Tools -> Flutter Intl -> Add locale rồi nhập tên viết tắt của language đó rồi bấm add. Lúc này trong thư mục l10n sẽ tạo thêm một file mới tên là intl_vi.arb. Ở đây add thêm ngôn ngữ Việt Nam nên sẽ có đuôi vi ở phía sau chính là ký tự viết tắt của tiếng Việt'
  '\n6. Setup App widget để có thể support multiple language'),
    Content(type:ContentType.image, data: image +'setup_support_multiple_language.png'),
    Content(data: '7. Bước tiếp theo là add String resrouce vào file arb trương ứng của mỗi ngôn ngữ intl_en.arb' ),
    Content(data: 'intl_en.arb'),
    Content(type: ContentType.code, data: '{\n\r\r\r\r\r\r"hello": "Hello everybody"\n}'),
    Content(data: 'intl_vi.arb'),
    Content(type: ContentType.code, data: '{\n\r\r\r\r\r\r"hello": "Xin chào tất cả các b"\n}'),
    Content(data: '8. Lúc này các file trong thư mục generated sẽ được update tự động để thêm các string resoure mới. '),
    Content(data: '9. Cách sử dụng'),
    Content(type: ContentType.code, data: 'Text(S.of(context).hello)')
  ],);
}