import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final passportUploadStatusProvider = StateProvider((ref) => false);
final idCardUploadStatusProvider = StateProvider((ref) => false);
final pdfUploadStatusProvider = StateProvider((ref) => false);

enum UploadDocType {
  notSelected,
  passport,
  idCard,
  pdf;

  @override
  String toString() {
    return switch (this) {
      (UploadDocType.passport) => "Passport",
      (UploadDocType.idCard) => "ID Card",
      (UploadDocType.pdf) => "PDF",
      (UploadDocType.notSelected) => ""
    };
  }
}

extension ToUploadDocType on String {
  UploadDocType toUploadDocTypeEnum() {
    return switch (this) {
      ("Passport") => UploadDocType.passport,
      ("ID Card") => UploadDocType.idCard,
      ("PDF") => UploadDocType.pdf,
      (_) => UploadDocType.notSelected
    };
  }
}

final docTypeProvider = StateProvider((ref) => UploadDocType.notSelected);

// Documents
// Passport
final passportFrontSideProvider = StateProvider((ref) => Uint8List(0));
final passportBackSideProvider = StateProvider((ref) => Uint8List(0));
// Id Card
final idCardFrontSideProvider = StateProvider((ref) => Uint8List(0));
final idCardBackSideProvider = StateProvider((ref) => Uint8List(0));
// Pdf
final pdfDocProvider = StateProvider((ref) => "");
