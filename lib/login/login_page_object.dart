import 'dart:async';
import 'package:pageloader/objects.dart';

@EnsureTag('material-input')
class LoginInputElementPO {
  @ByTagName('input')
  PageLoaderElement input;

  Future setText(String value) async {
    await input.type(value);
  }

  Future<String> getText() async => await input.seleniumAttributes['value'];
}

class LoginComponentPO {
  @ById('username')
  LoginInputElementPO _username;

  @ById('password')
  LoginInputElementPO _password;

  @ByTagName('material-button')
  PageLoaderElement _loginButton;

  Future setUsername(String value) async {
    _username.setText(value);
  }
  Future setPassword(String value) async {
    _password.setText(value);
  }

  Future click() => _loginButton.click();
}
