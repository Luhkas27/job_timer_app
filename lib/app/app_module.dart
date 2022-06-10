import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer_app/app/core/database/database.dart';
import 'package:job_timer_app/app/core/database/database_impl.dart';
import 'package:job_timer_app/app/modules/home/home_module.dart';
import 'package:job_timer_app/app/modules/login/login_module.dart';
import 'package:job_timer_app/app/modules/splash/splash_page.dart';
import 'package:job_timer_app/app/services/auth/auth_service.dart';
import 'package:job_timer_app/app/services/auth/auth_service_impl.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<AuthService>((i) => AuthServiceImpl()),
        Bind.lazySingleton<Database>((i) => DatabaseImpl()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
