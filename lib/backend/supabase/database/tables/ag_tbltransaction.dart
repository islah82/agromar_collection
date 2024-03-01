import '../database.dart';

class AgTbltransactionTable extends SupabaseTable<AgTbltransactionRow> {
  @override
  String get tableName => 'ag_tbltransaction';

  @override
  AgTbltransactionRow createRow(Map<String, dynamic> data) =>
      AgTbltransactionRow(data);
}

class AgTbltransactionRow extends SupabaseDataRow {
  AgTbltransactionRow(super.data);

  @override
  SupabaseTable get table => AgTbltransactionTable();

  String get fldid => getField<String>('fldid')!;
  set fldid(String value) => setField<String>('fldid', value);

  DateTime get fldcreatedAt => getField<DateTime>('fldcreated_at')!;
  set fldcreatedAt(DateTime value) =>
      setField<DateTime>('fldcreated_at', value);

  String? get tblworker => getField<String>('tblworker');
  set tblworker(String? value) => setField<String>('tblworker', value);

  double? get tblamount => getField<double>('tblamount');
  set tblamount(double? value) => setField<double>('tblamount', value);

  String? get tbltlot => getField<String>('tbltlot');
  set tbltlot(String? value) => setField<String>('tbltlot', value);

  String? get fldmonthof => getField<String>('fldmonthof');
  set fldmonthof(String? value) => setField<String>('fldmonthof', value);
}
