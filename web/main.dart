import 'package:angular2/platform/browser.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2_components_test/app_component.dart';
import 'package:angular2_components_test/services/login_service.dart';

void main() {
  bootstrap(AppComponent, [LoginService, materialProviders]);
}
