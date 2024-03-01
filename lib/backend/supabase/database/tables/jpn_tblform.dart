import '../database.dart';

class JpnTblformTable extends SupabaseTable<JpnTblformRow> {
  @override
  String get tableName => 'jpn_tblform';

  @override
  JpnTblformRow createRow(Map<String, dynamic> data) => JpnTblformRow(data);
}

class JpnTblformRow extends SupabaseDataRow {
  JpnTblformRow(super.data);

  @override
  SupabaseTable get table => JpnTblformTable();

  DateTime get fldcreatedAt => getField<DateTime>('fldcreated_at')!;
  set fldcreatedAt(DateTime value) =>
      setField<DateTime>('fldcreated_at', value);

  String? get fldbahagian => getField<String>('fldbahagian');
  set fldbahagian(String? value) => setField<String>('fldbahagian', value);

  String? get fldnama => getField<String>('fldnama');
  set fldnama(String? value) => setField<String>('fldnama', value);

  String? get fldjawatan => getField<String>('fldjawatan');
  set fldjawatan(String? value) => setField<String>('fldjawatan', value);

  bool? get fldsatu => getField<bool>('fldsatu');
  set fldsatu(bool? value) => setField<bool>('fldsatu', value);

  bool? get flddua => getField<bool>('flddua');
  set flddua(bool? value) => setField<bool>('flddua', value);

  bool? get fldtiga => getField<bool>('fldtiga');
  set fldtiga(bool? value) => setField<bool>('fldtiga', value);

  bool? get fldempat => getField<bool>('fldempat');
  set fldempat(bool? value) => setField<bool>('fldempat', value);

  bool? get fldlima => getField<bool>('fldlima');
  set fldlima(bool? value) => setField<bool>('fldlima', value);

  bool? get fldenam => getField<bool>('fldenam');
  set fldenam(bool? value) => setField<bool>('fldenam', value);

  bool? get fldtujuh => getField<bool>('fldtujuh');
  set fldtujuh(bool? value) => setField<bool>('fldtujuh', value);

  bool? get fldlapan => getField<bool>('fldlapan');
  set fldlapan(bool? value) => setField<bool>('fldlapan', value);

  bool? get fldsembilan => getField<bool>('fldsembilan');
  set fldsembilan(bool? value) => setField<bool>('fldsembilan', value);

  bool? get fldsepuluh => getField<bool>('fldsepuluh');
  set fldsepuluh(bool? value) => setField<bool>('fldsepuluh', value);

  String? get fldsebelas => getField<String>('fldsebelas');
  set fldsebelas(String? value) => setField<String>('fldsebelas', value);

  String? get fldduabelas => getField<String>('fldduabelas');
  set fldduabelas(String? value) => setField<String>('fldduabelas', value);

  String? get fldtigabelas => getField<String>('fldtigabelas');
  set fldtigabelas(String? value) => setField<String>('fldtigabelas', value);

  String? get fldtandatanganPh => getField<String>('fldtandatangan_ph');
  set fldtandatanganPh(String? value) =>
      setField<String>('fldtandatangan_ph', value);

  String? get fldphNama => getField<String>('fldph_nama');
  set fldphNama(String? value) => setField<String>('fldph_nama', value);

  DateTime? get fldphTarikh => getField<DateTime>('fldph_tarikh');
  set fldphTarikh(DateTime? value) => setField<DateTime>('fldph_tarikh', value);

  PostgresTime? get fldmulatugas => getField<PostgresTime>('fldmulatugas');
  set fldmulatugas(PostgresTime? value) =>
      setField<PostgresTime>('fldmulatugas', value);

  PostgresTime? get fldtamattugas => getField<PostgresTime>('fldtamattugas');
  set fldtamattugas(PostgresTime? value) =>
      setField<PostgresTime>('fldtamattugas', value);

  String? get fldtandatanganPpb => getField<String>('fldtandatangan_ppb');
  set fldtandatanganPpb(String? value) =>
      setField<String>('fldtandatangan_ppb', value);

  String? get fldppbNama => getField<String>('fldppb_nama');
  set fldppbNama(String? value) => setField<String>('fldppb_nama', value);

  DateTime? get fldppbTarikh => getField<DateTime>('fldppb_tarikh');
  set fldppbTarikh(DateTime? value) =>
      setField<DateTime>('fldppb_tarikh', value);

  String? get fldtandatanganPpkj => getField<String>('fldtandatangan_ppkj');
  set fldtandatanganPpkj(String? value) =>
      setField<String>('fldtandatangan_ppkj', value);

  String? get fldppkjNama => getField<String>('fldppkj_nama');
  set fldppkjNama(String? value) => setField<String>('fldppkj_nama', value);

  DateTime? get fldppkjTarikh => getField<DateTime>('fldppkj_tarikh');
  set fldppkjTarikh(DateTime? value) =>
      setField<DateTime>('fldppkj_tarikh', value);

  String get fldformid => getField<String>('fldformid')!;
  set fldformid(String value) => setField<String>('fldformid', value);

  DateTime? get fldtarikh => getField<DateTime>('fldtarikh');
  set fldtarikh(DateTime? value) => setField<DateTime>('fldtarikh', value);

  String? get fldpbworkerno => getField<String>('fldpbworkerno');
  set fldpbworkerno(String? value) => setField<String>('fldpbworkerno', value);

  String? get relatetblPb => getField<String>('relatetbl_pb');
  set relatetblPb(String? value) => setField<String>('relatetbl_pb', value);

  String? get fldppbsah => getField<String>('fldppbsah');
  set fldppbsah(String? value) => setField<String>('fldppbsah', value);

  String? get fldppkjsah => getField<String>('fldppkjsah');
  set fldppkjsah(String? value) => setField<String>('fldppkjsah', value);
}
