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
