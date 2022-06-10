import 'package:job_timer_app/app/entities/project_status.dart';
import 'package:job_timer_app/app/view_models/project_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectModel projectModel);
  Future<List<ProjectModel>> findByStatus(ProjectStatus status);
}
