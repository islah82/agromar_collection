import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/component/edit_transaction/edit_transaction_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'frm_list_o_f_l_o_t_cmonth_model.dart';
export 'frm_list_o_f_l_o_t_cmonth_model.dart';

class FrmListOFLOTCmonthWidget extends StatefulWidget {
  const FrmListOFLOTCmonthWidget({
    super.key,
    required this.shop,
  });

  final String? shop;

  @override
  State<FrmListOFLOTCmonthWidget> createState() =>
      _FrmListOFLOTCmonthWidgetState();
}

class _FrmListOFLOTCmonthWidgetState extends State<FrmListOFLOTCmonthWidget> {
  late FrmListOFLOTCmonthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmListOFLOTCmonthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<AgTbltransactionRow>>(
      future:
          (_model.requestCompleter ??= Completer<List<AgTbltransactionRow>>()
                ..complete(AgTbltransactionTable().queryRows(
                  queryFn: (q) => q
                      .eq(
                        'tbltlot',
                        widget.shop,
                      )
                      .order('fldcreated_at'),
                )))
              .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<AgTbltransactionRow> frmListOFLOTCmonthAgTbltransactionRowList =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            floatingActionButton: Align(
              alignment: const AlignmentDirectional(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: FloatingActionButton(
                  onPressed: () async {
                    context.safePop();
                  },
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  elevation: 15.0,
                  child: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                      child: Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/agromar_transparent512x512.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(11.0, 0.0, 11.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction: ${widget.shop}',
                            style: FlutterFlowTheme.of(context).titleMedium,
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              setState(() => _model.requestCompleter = null);
                              await _model.waitForRequestCompleted();
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('Sync Data'),
                                    content: const Text('Data sync sucess'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            text: 'SYNC',
                            icon: const Icon(
                              Icons.restore_sharp,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent3,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                11.0, 0.0, 11.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final queryDataTable =
                                    frmListOFLOTCmonthAgTbltransactionRowList
                                        .toList();
                                return FlutterFlowDataTable<
                                    AgTbltransactionRow>(
                                  controller:
                                      _model.paginatedDataTableController,
                                  data: queryDataTable,
                                  columnsBuilder: (onSortChanged) => [
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'DATE',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Space Grotesk',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'WORKER',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Space Grotesk',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'AMOUNT ',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Space Grotesk',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                        ),
                                      ),
                                    ),
                                    DataColumn2(
                                      label: DefaultTextStyle.merge(
                                        softWrap: true,
                                        child: Text(
                                          'Action',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Space Grotesk',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  dataRowBuilder: (queryDataTableItem,
                                          queryDataTableIndex,
                                          selected,
                                          onSelectChanged) =>
                                      DataRow(
                                    color: MaterialStateProperty.all(
                                      queryDataTableIndex % 2 == 0
                                          ? FlutterFlowTheme.of(context)
                                              .alternate
                                          : FlutterFlowTheme.of(context)
                                              .accent3,
                                    ),
                                    cells: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          dateTimeFormat('dd/MMM',
                                              queryDataTableItem.fldcreatedAt),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            queryDataTableItem.tblworker,
                                            'nnmk',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Text(
                                          'RM ${queryDataTableItem.tblamount?.toString()}.00',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 2.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              icon: Icon(
                                                Icons.delete_forever,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 15.0,
                                              ),
                                              onPressed: () async {
                                                var confirmDialogResponse =
                                                    await showDialog<bool>(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Delete Data'),
                                                              content: Text(
                                                                  'Are you sure to delete transaction of RM ${queryDataTableItem.tblamount?.toString()}.00, created at ${dateTimeFormat('dd/MMM/yyyy', queryDataTableItem.fldcreatedAt)} by ${queryDataTableItem.tblworker}'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                  child: const Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                  child: const Text(
                                                                      'Confirm'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ) ??
                                                        false;
                                                if (confirmDialogResponse) {
                                                  _model.foundMatchDelete =
                                                      await AgTbltransactionTable()
                                                          .delete(
                                                    matchingRows: (rows) =>
                                                        rows.eq(
                                                      'fldid',
                                                      queryDataTableItem.fldid,
                                                    ),
                                                    returnRows: true,
                                                  );
                                                }
                                                setState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();

                                                setState(() {});
                                              },
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 30.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            icon: FaIcon(
                                              FontAwesomeIcons.penAlt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 15.0,
                                            ),
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          EditTransactionWidget(
                                                        transactionid:
                                                            queryDataTableItem
                                                                .fldid,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ],
                                      ),
                                    ].map((c) => DataCell(c)).toList(),
                                  ),
                                  paginated: false,
                                  selectable: false,
                                  height: 500.0,
                                  headingRowHeight: 56.0,
                                  dataRowHeight: 48.0,
                                  columnSpacing: 10.0,
                                  headingRowColor:
                                      FlutterFlowTheme.of(context).primary,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                  addHorizontalDivider: true,
                                  addTopAndBottomDivider: false,
                                  hideDefaultHorizontalDivider: false,
                                  horizontalDividerColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  horizontalDividerThickness: 2.0,
                                  addVerticalDivider: false,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 11.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: GettotalamountCall.call(
                              vallot: widget.shop,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final containerGettotalamountResponse =
                                  snapshot.data!;
                              return Container(
                                width: 176.0,
                                height: 38.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 11.0, 0.0),
                                    child: SelectionArea(
                                        child: Text(
                                      'TOTAL: RM ${GettotalamountCall.jasonTotalAmount(
                                        containerGettotalamountResponse
                                            .jsonBody,
                                      )?.toString()}.00',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Space Grotesk',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontWeight: FontWeight.w900,
                                          ),
                                    )),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
