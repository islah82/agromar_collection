import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'frm_list_o_f_l_o_t_c_month2_model.dart';
export 'frm_list_o_f_l_o_t_c_month2_model.dart';

class FrmListOFLOTCMonth2Widget extends StatefulWidget {
  const FrmListOFLOTCMonth2Widget({
    super.key,
    required this.currentDatepara,
  });

  final String? currentDatepara;

  @override
  State<FrmListOFLOTCMonth2Widget> createState() =>
      _FrmListOFLOTCMonth2WidgetState();
}

class _FrmListOFLOTCMonth2WidgetState extends State<FrmListOFLOTCMonth2Widget> {
  late FrmListOFLOTCMonth2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmListOFLOTCMonth2Model());

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
                        'fldmonthof',
                        widget.currentDatepara,
                      )
                      .eq(
                        'tbltlot',
                        _model.choiceChipsValue,
                      )
                      .order('fldcreated_at', ascending: true),
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
        List<AgTbltransactionRow> frmListOFLOTCMonth2AgTbltransactionRowList =
            snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                      child: FutureBuilder<List<AgTblshoplotRow>>(
                        future: AgTblshoplotTable().queryRows(
                          queryFn: (q) => q,
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
                          List<AgTblshoplotRow> choiceChipsAgTblshoplotRowList =
                              snapshot.data!;
                          return FlutterFlowChoiceChips(
                            options: choiceChipsAgTblshoplotRowList
                                .map((e) => e.fldlot)
                                .withoutNulls
                                .toList()
                                .map((label) => ChipData(label))
                                .toList(),
                            onChanged: (val) async {
                              setState(() =>
                                  _model.choiceChipsValue = val?.firstOrNull);
                              setState(() => _model.requestCompleter = null);
                              await _model.waitForRequestCompleted();
                              setState(() {
                                FFAppState().datalistdhow = false;
                              });
                              await Future.delayed(
                                  const Duration(milliseconds: 500));
                              setState(() => _model.requestCompleter = null);
                              await _model.waitForRequestCompleted();
                              setState(() {
                                FFAppState().datalistdhow = true;
                              });
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              elevation: 4.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Space Grotesk',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            chipSpacing: 12.0,
                            rowSpacing: 12.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          );
                        },
                      ),
                    ),
                    Text(
                      'Month of: ${widget.currentDatepara}',
                      style: FlutterFlowTheme.of(context).titleMedium,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (FFAppState().datalistdhow)
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      11.0, 0.0, 11.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final queryListcMonth =
                                          frmListOFLOTCMonth2AgTbltransactionRowList
                                              .toList();
                                      return FlutterFlowDataTable<
                                          AgTbltransactionRow>(
                                        controller:
                                            _model.paginatedDataTableController,
                                        data: queryListcMonth,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'DATE',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Space Grotesk',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Space Grotesk',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              'Space Grotesk',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder: (queryListcMonthItem,
                                                queryListcMonthIndex,
                                                selected,
                                                onSelectChanged) =>
                                            DataRow(
                                          color: MaterialStateProperty.all(
                                            queryListcMonthIndex % 2 == 0
                                                ? FlutterFlowTheme.of(context)
                                                    .alternate
                                                : FlutterFlowTheme.of(context)
                                                    .accent3,
                                          ),
                                          cells: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'dd/MMM',
                                                    queryListcMonthItem
                                                        .fldcreatedAt),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  queryListcMonthItem.tblworker,
                                                  'nnmk',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Text(
                                                formatNumber(
                                                  queryListcMonthItem.tblamount,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                  currency: 'RM',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ].map((c) => DataCell(c)).toList(),
                                        ),
                                        paginated: false,
                                        selectable: false,
                                        height: 500.0,
                                        headingRowHeight: 56.0,
                                        dataRowHeight: 48.0,
                                        columnSpacing: 20.0,
                                        headingRowColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
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
                            ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 18.0, 0.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: TotaltblamountofMonthCall.call(
                              varLot: _model.choiceChipsValue,
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
                              final containerTotaltblamountofMonthResponse =
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
                                      'TOTAL: RM ${TotaltblamountofMonthCall.totalofmonth(
                                        containerTotaltblamountofMonthResponse
                                            .jsonBody,
                                      ).toString()}.00',
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 11.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FFButtonWidget(
                            onPressed: (_model.choiceChipsValue == null ||
                                    _model.choiceChipsValue == '')
                                ? null
                                : () async {
                                    context.pushNamed(
                                      'frmListOFLOTCmonth',
                                      queryParameters: {
                                        'shop': serializeParam(
                                          _model.choiceChipsValue,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    setState(() {
                                      FFAppState().datalistdhow = false;
                                    });
                                  },
                            text: 'VIEW',
                            icon: const Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
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
                          FFButtonWidget(
                            onPressed: () async {
                              context.safePop();
                              setState(() {
                                FFAppState().datalistdhow = false;
                              });
                            },
                            text: 'BACK',
                            icon: const Icon(
                              Icons.chevron_left,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
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
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('frmfilteramount_bydate');
                            },
                            text: 'DETAILS',
                            icon: const Icon(
                              Icons.filter_list,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
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
