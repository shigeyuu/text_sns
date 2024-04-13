import 'package:text_sns/controllers/abstract/simple_form_controller.dart';

class ReauthenticateController extends SimpleFormController {
  @override
  String get title => "再認証";

  @override
  String get hintText => 'パスワードを入力してください';

  @override
  String get positiveButtonText => '再認証';

  @override
  String get validatorMsg => 'パスワードを入力してください';

  @override
  String get successMsg => '再認証に成功しました';

  @override
  String get failureMsg => '再認証に失敗しました';

  @override
  bool get obscureText => true;

  @override
  void onPositiveButtonPressed() {
    if (text.length < 8) return;
  }
}
