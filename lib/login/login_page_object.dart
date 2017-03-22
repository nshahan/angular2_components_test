import 'dart:async';
import 'package:pageloader/objects.dart';

class LoginComponentPO {
  @ById('username')
  PageLoaderElement _username;

  @ById('password')
  PageLoaderElement _password;

  @ById('login-button')
  PageLoaderElement _loginButton;

  set username(String value) => _username.type(value);
  set password(String value) => _password.type(value);
  Future click() => _loginButton.click();
}
