// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgTbltransactionStruct extends BaseStruct {
  AgTbltransactionStruct({
    String? fldid,
    String? fldcreatedAt,
    String? tblworker,
    String? tbltlot,
    int? tblamount,
    String? fldmonthof,
  })  : _fldid = fldid,
        _fldcreatedAt = fldcreatedAt,
        _tblworker = tblworker,
        _tbltlot = tbltlot,
        _tblamount = tblamount,
        _fldmonthof = fldmonthof;

  // "fldid" field.
  String? _fldid;
  String get fldid => _fldid ?? '';
  set fldid(String? val) => _fldid = val;
  bool hasFldid() => _fldid != null;

  // "fldcreated_at" field.
  String? _fldcreatedAt;
  String get fldcreatedAt => _fldcreatedAt ?? '';
  set fldcreatedAt(String? val) => _fldcreatedAt = val;
  bool hasFldcreatedAt() => _fldcreatedAt != null;

  // "tblworker" field.
  String? _tblworker;
  String get tblworker => _tblworker ?? '';
  set tblworker(String? val) => _tblworker = val;
  bool hasTblworker() => _tblworker != null;

  // "tbltlot" field.
  String? _tbltlot;
  String get tbltlot => _tbltlot ?? '';
  set tbltlot(String? val) => _tbltlot = val;
  bool hasTbltlot() => _tbltlot != null;

  // "tblamount" field.
  int? _tblamount;
  int get tblamount => _tblamount ?? 0;
  set tblamount(int? val) => _tblamount = val;
  void incrementTblamount(int amount) => _tblamount = tblamount + amount;
  bool hasTblamount() => _tblamount != null;

  // "fldmonthof" field.
  String? _fldmonthof;
  String get fldmonthof => _fldmonthof ?? '';
  set fldmonthof(String? val) => _fldmonthof = val;
  bool hasFldmonthof() => _fldmonthof != null;

  static AgTbltransactionStruct fromMap(Map<String, dynamic> data) =>
      AgTbltransactionStruct(
        fldid: data['fldid'] as String?,
        fldcreatedAt: data['fldcreated_at'] as String?,
        tblworker: data['tblworker'] as String?,
        tbltlot: data['tbltlot'] as String?,
        tblamount: castToType<int>(data['tblamount']),
        fldmonthof: data['fldmonthof'] as String?,
      );

  static AgTbltransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? AgTbltransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fldid': _fldid,
        'fldcreated_at': _fldcreatedAt,
        'tblworker': _tblworker,
        'tbltlot': _tbltlot,
        'tblamount': _tblamount,
        'fldmonthof': _fldmonthof,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fldid': serializeParam(
          _fldid,
          ParamType.String,
        ),
        'fldcreated_at': serializeParam(
          _fldcreatedAt,
          ParamType.String,
        ),
        'tblworker': serializeParam(
          _tblworker,
          ParamType.String,
        ),
        'tbltlot': serializeParam(
          _tbltlot,
          ParamType.String,
        ),
        'tblamount': serializeParam(
          _tblamount,
          ParamType.int,
        ),
        'fldmonthof': serializeParam(
          _fldmonthof,
          ParamType.String,
        ),
      }.withoutNulls;

  static AgTbltransactionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AgTbltransactionStruct(
        fldid: deserializeParam(
          data['fldid'],
          ParamType.String,
          false,
        ),
        fldcreatedAt: deserializeParam(
          data['fldcreated_at'],
          ParamType.String,
          false,
        ),
        tblworker: deserializeParam(
          data['tblworker'],
          ParamType.String,
          false,
        ),
        tbltlot: deserializeParam(
          data['tbltlot'],
          ParamType.String,
          false,
        ),
        tblamount: deserializeParam(
          data['tblamount'],
          ParamType.int,
          false,
        ),
        fldmonthof: deserializeParam(
          data['fldmonthof'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AgTbltransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AgTbltransactionStruct &&
        fldid == other.fldid &&
        fldcreatedAt == other.fldcreatedAt &&
        tblworker == other.tblworker &&
        tbltlot == other.tbltlot &&
        tblamount == other.tblamount &&
        fldmonthof == other.fldmonthof;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([fldid, fldcreatedAt, tblworker, tbltlot, tblamount, fldmonthof]);
}

AgTbltransactionStruct createAgTbltransactionStruct({
  String? fldid,
  String? fldcreatedAt,
  String? tblworker,
  String? tbltlot,
  int? tblamount,
  String? fldmonthof,
}) =>
    AgTbltransactionStruct(
      fldid: fldid,
      fldcreatedAt: fldcreatedAt,
      tblworker: tblworker,
      tbltlot: tbltlot,
      tblamount: tblamount,
      fldmonthof: fldmonthof,
    );
