import 'package:amazon_clone_demo/data/itemListModel.dart';

class Success {
  int code ;
  Object response;
  Success({required this.code, required this.response});
}

class Failure {
  int code;
  Object errorResponse;
  Failure({this.code = 0, required this.errorResponse});
}