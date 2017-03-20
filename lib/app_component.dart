import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2_components_test/login/login_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, LoginComponent],
  providers: const [materialProviders],
)
class AppComponent {}
