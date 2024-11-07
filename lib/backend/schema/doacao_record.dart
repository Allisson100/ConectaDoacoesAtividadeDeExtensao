import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoacaoRecord extends FirestoreRecord {
  DoacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nome_item" field.
  String? _nomeItem;
  String get nomeItem => _nomeItem ?? '';
  bool hasNomeItem() => _nomeItem != null;

  // "nome_pessoa" field.
  String? _nomePessoa;
  String get nomePessoa => _nomePessoa ?? '';
  bool hasNomePessoa() => _nomePessoa != null;

  // "tel" field.
  String? _tel;
  String get tel => _tel ?? '';
  bool hasTel() => _tel != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  void _initializeFields() {
    _foto = snapshotData['foto'] as String?;
    _nomeItem = snapshotData['nome_item'] as String?;
    _nomePessoa = snapshotData['nome_pessoa'] as String?;
    _tel = snapshotData['tel'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _descricao = snapshotData['descricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doacao');

  static Stream<DoacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoacaoRecord.fromSnapshot(s));

  static Future<DoacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoacaoRecord.fromSnapshot(s));

  static DoacaoRecord fromSnapshot(DocumentSnapshot snapshot) => DoacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoacaoRecordData({
  String? foto,
  String? nomeItem,
  String? nomePessoa,
  String? tel,
  String? endereco,
  String? descricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foto': foto,
      'nome_item': nomeItem,
      'nome_pessoa': nomePessoa,
      'tel': tel,
      'endereco': endereco,
      'descricao': descricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoacaoRecordDocumentEquality implements Equality<DoacaoRecord> {
  const DoacaoRecordDocumentEquality();

  @override
  bool equals(DoacaoRecord? e1, DoacaoRecord? e2) {
    return e1?.foto == e2?.foto &&
        e1?.nomeItem == e2?.nomeItem &&
        e1?.nomePessoa == e2?.nomePessoa &&
        e1?.tel == e2?.tel &&
        e1?.endereco == e2?.endereco &&
        e1?.descricao == e2?.descricao;
  }

  @override
  int hash(DoacaoRecord? e) => const ListEquality().hash(
      [e?.foto, e?.nomeItem, e?.nomePessoa, e?.tel, e?.endereco, e?.descricao]);

  @override
  bool isValidKey(Object? o) => o is DoacaoRecord;
}
