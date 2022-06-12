import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer_app/app/modules/project/detail/project_detail.module.dart';
import 'package:job_timer_app/app/modules/project/register/project_register_module.dart';

class ProjectModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/register', module: ProjectRegisterModule()),
        ModuleRoute('/detail', module: ProjectDetailModule()),
      ];
}
