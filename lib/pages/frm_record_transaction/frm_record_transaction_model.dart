import '/component/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'frm_record_transaction_widget.dart' show FrmRecordTransactionWidget;
import 'package:flutter/material.dart';

class FrmRecordTransactionModel
    extends FlutterFlowModel<FrmRecordTransactionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for drpShopList widget.
  String? drpShopListValue;
  FormFieldController<String>? drpShopListValueController;
  // State field(s) for txtWorker widget.
  FocusNode? txtWorkerFocusNode;
  TextEditingController? txtWorkerController;
  String? Function(BuildContext, String?)? txtWorkerControllerValidator;
  String? _txtWorkerControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtAmount widget.
  FocusNode? txtAmountFocusNode;
  TextEditingController? txtAmountController;
  String? Function(BuildContext, String?)? txtAmountControllerValidator;
  String? _txtAmountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtWorkerControllerValidator = _txtWorkerControllerValidator;
    txtAmountControllerValidator = _txtAmountControllerValidator;
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtWorkerFocusNode?.dispose();
    txtWorkerController?.dispose();

    txtAmountFocusNode?.dispose();
    txtAmountController?.dispose();

    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
