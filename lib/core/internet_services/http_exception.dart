class HttpExceptionObj implements Exception{
  String errorMessage = "Base Error Message";
  HttpExceptionObj.fromHttpException(Exception exp){
    errorMessage = "New  Error Message";
  }
  @override
  String toString() => errorMessage;
}

class CustomException implements Exception{
  final String message;
  CustomException(this.message);

  @override
  String toString() {
    return message;
  }
}