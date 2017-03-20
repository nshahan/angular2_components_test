import 'package:pageloader/objects.dart';

class LoginComponentPO {
  @ById('username')
  PageLoaderElement _username;

  @ById('password')
  PageLoaderElement _password;

// TODO Retrieve button element by id
//  @ById('login')
//  PageLoaderElement _loginButton;

  set username(String value) => _username.type(value);
  set password(String value) => _password.type(value);

// TODO Click on button
//  Future click() => _loginButton.click();
}
