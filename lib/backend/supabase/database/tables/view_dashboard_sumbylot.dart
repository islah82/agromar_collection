import '../database.dart';

class ViewDashboardSumbylotTable
    extends SupabaseTable<ViewDashboardSumbylotRow> {
  @override
  String get tableName => 'view_dashboard_sumbylot';

  @override
  ViewDashboardSumbylotRow createRow(Map<String, dynamic> data) =>
      ViewDashboardSumbylotRow(data);
}

class ViewDashboardSumbylotRow extends SupabaseDataRow {
  ViewDashboardSumbylotRow(super.data);

  @override
  SupabaseTable get table => ViewDashboardSumbylotTable();

  String? get tbltlot => getField<String>('tbltlot');
  set tbltlot(String? value) => setField<String>('tbltlot', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
