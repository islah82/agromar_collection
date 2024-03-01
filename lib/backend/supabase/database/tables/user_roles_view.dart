import '../database.dart';

class UserRolesViewTable extends SupabaseTable<UserRolesViewRow> {
  @override
  String get tableName => 'user_roles_view';

  @override
  UserRolesViewRow createRow(Map<String, dynamic> data) =>
      UserRolesViewRow(data);
}

class UserRolesViewRow extends SupabaseDataRow {
  UserRolesViewRow(super.data);

  @override
  SupabaseTable get table => UserRolesViewTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get fldname => getField<String>('fldname');
  set fldname(String? value) => setField<String>('fldname', value);

  String? get fldemail => getField<String>('fldemail');
  set fldemail(String? value) => setField<String>('fldemail', value);

  String? get fldrole => getField<String>('fldrole');
  set fldrole(String? value) => setField<String>('fldrole', value);

  String? get fldavatar => getField<String>('fldavatar');
  set fldavatar(String? value) => setField<String>('fldavatar', value);

  bool? get fldref => getField<bool>('fldref');
  set fldref(bool? value) => setField<bool>('fldref', value);

  String? get fldid => getField<String>('fldid');
  set fldid(String? value) => setField<String>('fldid', value);
}
