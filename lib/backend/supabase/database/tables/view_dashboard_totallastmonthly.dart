import '../database.dart';

class ViewDashboardTotallastmonthlyTable
    extends SupabaseTable<ViewDashboardTotallastmonthlyRow> {
  @override
  String get tableName => 'view_dashboard_totallastmonthly';

  @override
  ViewDashboardTotallastmonthlyRow createRow(Map<String, dynamic> data) =>
      ViewDashboardTotallastmonthlyRow(data);
}

class ViewDashboardTotallastmonthlyRow extends SupabaseDataRow {
  ViewDashboardTotallastmonthlyRow(super.data);

  @override
  SupabaseTable get table => ViewDashboardTotallastmonthlyTable();

  String? get tbltlot => getField<String>('tbltlot');
  set tbltlot(String? value) => setField<String>('tbltlot', value);

  String? get month => getField<String>('month');
  set month(String? value) => setField<String>('month', value);

  double? get totalSum => getField<double>('total_sum');
  set totalSum(double? value) => setField<double>('total_sum', value);
}
