import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2_components_test/services/login_service.dart';

@Component(
  selector: 'my-login',
  templateUrl: 'login_component.html',
  directives: const [materialDirectives],
)
class LoginComponent implements OnInit {
  final LoginService _loginService;
  String username;
  String password;

  @ViewChild('usernameInput')
  MaterialInputComponent usernameInput;

  @ViewChild('passwordInput')
  MaterialInputComponent passwordInput;

  @ViewChild('loginButton')
  MaterialButtonComponent loginButton;

  LoginComponent(this._loginService);

  ngOnInit() {
    usernameInput.inputEl.nativeElement.id = "username";
    passwordInput.inputEl.nativeElement.id = "password";
  }

  void login() {
    _loginService.login(username, password);
  }
}
