import '../database.dart';

class JpnTblauthorTable extends SupabaseTable<JpnTblauthorRow> {
  @override
  String get tableName => 'jpn_tblauthor';

  @override
  JpnTblauthorRow createRow(Map<String, dynamic> data) => JpnTblauthorRow(data);
}

class JpnTblauthorRow extends SupabaseDataRow {
  JpnTblauthorRow(super.data);

  @override
  SupabaseTable get table => JpnTblauthorTable();

  String get fldid => getField<String>('fldid')!;
  set fldid(String value) => setField<String>('fldid', value);

  DateTime get fldcreatedAt => getField<DateTime>('fldcreated_at')!;
  set fldcreatedAt(DateTime value) =>
      setField<DateTime>('fldcreated_at', value);

  String? get fldname => getField<String>('fldname');
  set fldname(String? value) => setField<String>('fldname', value);

  String? get fldemail => getField<String>('fldemail');
  set fldemail(String? value) => setField<String>('fldemail', value);

  String? get fldworkerno => getField<String>('fldworkerno');
  set fldworkerno(String? value) => setField<String>('fldworkerno', value);

  String? get fldrole => getField<String>('fldrole');
  set fldrole(String? value) => setField<String>('fldrole', value);

  String? get fldformid => getField<String>('fldformid');
  set fldformid(String? value) => setField<String>('fldformid', value);

  String? get fldjawatan => getField<String>('fldjawatan');
  set fldjawatan(String? value) => setField<String>('fldjawatan', value);
}
