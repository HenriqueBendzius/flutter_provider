import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/models/task_group.dart';


class SupabaseRepository {
Future<List<TaskGroup>> listaTaskGroup() async {
  final client = Supabase.instance.client;
  final response = await client.from('Task_group').select();
  final taskGroup = response.map((m) => TaskGroup.fromMap(m)).toList();
  return taskGroup;

  }

}