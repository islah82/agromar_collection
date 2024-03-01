import '../database.dart';

class JpnTblpegawaibertugasTable
    extends SupabaseTable<JpnTblpegawaibertugasRow> {
  @override
  String get tableName => 'jpn_tblpegawaibertugas';

  @override
  JpnTblpegawaibertugasRow createRow(Map<String, dynamic> data) =>
      JpnTblpegawaibertugasRow(data);
}

class JpnTblpegawaibertugasRow extends SupabaseDataRow {
  JpnTblpegawaibertugasRow(super.data);

  @override
  SupabaseTable get table => JpnTblpegawaibertugasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get namapb => getField<String>('namapb');
  set namapb(String? value) => setField<String>('namapb', value);

  String? get jawatanpb => getField<String>('jawatanpb');
  set jawatanpb(String? value) => setField<String>('jawatanpb', value);

  String? get note => getField<String>('note');
  set note(String? value) => setField<String>('note', value);

  String? get idnopb => getField<String>('idnopb');
  set idnopb(String? value) => setField<String>('idnopb', value);
}
