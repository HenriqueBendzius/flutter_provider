
import 'package:flutter/material.dart';

import 'package:todo_app/models/task_group.dart';
import 'package:todo_app/repositori/supabase_repository.dart';

class TaskGroupProvider extends ChangeNotifier {

final supabaseRepo = SupabaseRepository();
List<TaskGroup> _taskGroups = [];
List<TaskGroup> get taskGroups => _taskGroups;
bool _isLoading =false;
bool get isLoading => _isLoading;

Future<void> listaTaskGroups() async {
  _isLoading = true;
  notifyListeners();
  _taskGroups = await supabaseRepo.listaTaskGroup();
  _isLoading = false;
  notifyListeners();
}

}