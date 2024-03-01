import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://vzjronpwwgmfetleocnd.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
