import '../database.dart';

class AgTblshoplotTable extends SupabaseTable<AgTblshoplotRow> {
  @override
  String get tableName => 'ag_tblshoplot';

  @override
  AgTblshoplotRow createRow(Map<String, dynamic> data) => AgTblshoplotRow(data);
}

class AgTblshoplotRow extends SupabaseDataRow {
  AgTblshoplotRow(super.data);

  @override
  SupabaseTable get table => AgTblshoplotTable();

  String get fldid => getField<String>('fldid')!;
  set fldid(String value) => setField<String>('fldid', value);

  DateTime get fldcreatedAt => getField<DateTime>('fldcreated_at')!;
  set fldcreatedAt(DateTime value) =>
      setField<DateTime>('fldcreated_at', value);

  String? get fldlot => getField<String>('fldlot');
  set fldlot(String? value) => setField<String>('fldlot', value);
}
