import '/component/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'frm_list_dashboard_widget.dart' show FrmListDashboardWidget;
import 'package:flutter/material.dart';

class FrmListDashboardModel extends FlutterFlowModel<FrmListDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
