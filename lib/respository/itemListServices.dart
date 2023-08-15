import 'dart:convert';
import 'dart:io';
import 'package:amazon_clone_demo/data/itemListModel.dart';
import 'package:amazon_clone_demo/respository/apiStatus.dart';
import 'package:amazon_clone_demo/utils/constants.dart';
import 'package:http/http.dart' as http;

class ItemListServices {

  static Future<Object> getItemList() async {
    try {
      var response = await http.get(Uri.parse(ITEM_LIST_URL),headers: {"X-Master-Key" : "\$2b\$10\$DXjy/zF7RFgCq3M28m.Fv.IKmLR/nJk2mM3EUMVxsLbnXYDjXQSC.",
      "X-Access-Key": "\$2b\$10\$09g5dQfky19EXuSgTuG6ju4ZiK7LmxUeujH0j60yPrv1udSVk6R22"});
      print(response.statusCode.toString());
      print("r" + response.body);
      // var jsonData = jsonDecode(response.body);
      // var products = .map((productJson) {
      //   return ItemListModel.fromJson(productJson);
      // }).toList();

      // var jsonData = jsonDecode(response.body);
      // print(jsonData);
      if (SUCCESS == response.statusCode) {
        // final List<Map<String, dynamic>> jsonData = ;

        ItemListModel items = ItemListModel.fromJson(jsonDecode(response.body));
        print(items.record?[0].description);

        List<Record>  itemrecords = items.record!.map((productJson) {
          return productJson ;
        }).toList();
        //
        // print(products?[0].category);
        //ItemListModel items = ItemListModel.fromJson(response.body) //itemListModelFromJson(response.body);
        //var items = ItemListModel.fromJson(jsonDecode(response.body));


        return Success(code: SUCCESS,response: itemrecords );
      }
      return Failure(
          code: USER_INVALID_RESPONSE, errorResponse: 'Invalid Response');
    } on HttpException {
      return Failure(
          code: NO_INTERNET, errorResponse: 'No Internet Connection');
    } on SocketException {
      return Failure(
          code: NO_INTERNET, errorResponse: 'No Internet Connection');
    } on FormatException {
      return Failure(code: INVALID_FORMAT, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: UNKNOWN_ERROR, errorResponse: 'Unknown Error');
    }
  }
}
