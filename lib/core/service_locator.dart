import 'package:freelancer_test_prject/core/service/firebase_phone_auth_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  locator.registerSingleton<FirebasePhoneAuthService>(
    FirebasePhoneAuthService(),
  );
}
