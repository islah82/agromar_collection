import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_transaction_widget.dart' show EditTransactionWidget;
import 'package:flutter/material.dart';

class EditTransactionModel extends FlutterFlowModel<EditTransactionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtWorkerControllerValidator = _txtWorkerControllerValidator;
    txtAmountControllerValidator = _txtAmountControllerValidator;
  }

  @override
  void dispose() {
    txtWorkerFocusNode?.dispose();
    txtWorkerController?.dispose();

    txtAmountFocusNode?.dispose();
    txtAmountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
