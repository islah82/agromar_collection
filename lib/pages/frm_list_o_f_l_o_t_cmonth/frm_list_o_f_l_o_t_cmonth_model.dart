import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'frm_list_o_f_l_o_t_cmonth_widget.dart' show FrmListOFLOTCmonthWidget;
import 'package:flutter/material.dart';

class FrmListOFLOTCmonthModel
    extends FlutterFlowModel<FrmListOFLOTCmonthWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<List<AgTbltransactionRow>>? requestCompleter;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<AgTbltransactionRow>();
  // Stores action output result for [Backend Call - Delete Row(s)] action in IconButton widget.
  List<AgTbltransactionRow>? foundMatchDelete;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
