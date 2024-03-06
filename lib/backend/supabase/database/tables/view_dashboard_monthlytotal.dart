import '../database.dart';

class ViewDashboardMonthlytotalTable
    extends SupabaseTable<ViewDashboardMonthlytotalRow> {
  @override
  String get tableName => 'view_dashboard_monthlytotal';

  @override
  ViewDashboardMonthlytotalRow createRow(Map<String, dynamic> data) =>
      ViewDashboardMonthlytotalRow(data);
}

class ViewDashboardMonthlytotalRow extends SupabaseDataRow {
  ViewDashboardMonthlytotalRow(super.data);

  @override
  SupabaseTable get table => ViewDashboardMonthlytotalTable();

  String? get tbltlot => getField<String>('tbltlot');
  set tbltlot(String? value) => setField<String>('tbltlot', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
