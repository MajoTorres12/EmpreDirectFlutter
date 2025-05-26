import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaRecord extends FirestoreRecord {
  EmpresaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "sitioweb" field.
  String? _sitioweb;
  String get sitioweb => _sitioweb ?? '';
  bool hasSitioweb() => _sitioweb != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _correo = snapshotData['correo'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _sitioweb = snapshotData['sitioweb'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresa');

  static Stream<EmpresaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaRecord.fromSnapshot(s));

  static Future<EmpresaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaRecord.fromSnapshot(s));

  static EmpresaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaRecordData({
  String? correo,
  String? direccion,
  String? nombre,
  String? telefono,
  String? sitioweb,
  String? imagen,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correo': correo,
      'direccion': direccion,
      'nombre': nombre,
      'telefono': telefono,
      'sitioweb': sitioweb,
      'imagen': imagen,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaRecordDocumentEquality implements Equality<EmpresaRecord> {
  const EmpresaRecordDocumentEquality();

  @override
  bool equals(EmpresaRecord? e1, EmpresaRecord? e2) {
    return e1?.correo == e2?.correo &&
        e1?.direccion == e2?.direccion &&
        e1?.nombre == e2?.nombre &&
        e1?.telefono == e2?.telefono &&
        e1?.sitioweb == e2?.sitioweb &&
        e1?.imagen == e2?.imagen &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(EmpresaRecord? e) => const ListEquality().hash([
        e?.correo,
        e?.direccion,
        e?.nombre,
        e?.telefono,
        e?.sitioweb,
        e?.imagen,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresaRecord;
}
