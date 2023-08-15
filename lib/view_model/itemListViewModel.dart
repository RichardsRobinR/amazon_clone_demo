import 'package:amazon_clone_demo/data/itemListError.dart';
import 'package:amazon_clone_demo/data/itemListModel.dart';
import 'package:amazon_clone_demo/respository/apiStatus.dart';
import 'package:amazon_clone_demo/respository/itemListServices.dart';
import 'package:flutter/material.dart';


class ItemListViewModel extends ChangeNotifier {
  //
  bool _loading = false;
  List<Record> _itemRecords = [];
  late ItemListError _itemListError;
  // UserModel _selectedUser;
  // UserModel _addingUser = UserModel();

  bool get loading => _loading;
  List<Record> get itemRecords => _itemRecords;
  ItemListError get itemListError => _itemListError;
  // UserModel get selectedUser => _selectedUser;
  // UserModel get addingUser => _addingUser;

  ItemListViewModel() {
    getItemList();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setItemListModel(List<Record> itemRecords) {
    _itemRecords = itemRecords;
  }

  setItemListError(ItemListError itemListError) {
    _itemListError =  itemListError;
  }

  // setSelectedUser(UserModel userModel) {
  //   _selectedUser = userModel;
  // }

  // addUser() async {
  //   if (!isValid()) {
  //     return;
  //   }
  //   _userListModel.add(addingUser);
  //   _addingUser = UserModel();
  //   notifyListeners();
  //   return true;
  // }
  //
  // isValid() {
  //   if (addingUser.name == null || addingUser.name.isEmpty) {
  //     return false;
  //   }
  //   if (addingUser.email == null || addingUser.email.isEmpty) {
  //     return false;
  //   }
  //   return true;
  // }

  getItemList() async {
    setLoading(true);
    var  response = await ItemListServices.getItemList() ;
    // Success obj = response as Success;
    // print("response" + success.response.toString());
    if (response is Success) {
      setItemListModel(response.response as List<Record>);
      print("set Item${response.response}" );
    }
    if (response is Failure) {
      ItemListError itemListError = ItemListError(
        code: response.code,
        message: response.errorResponse as String,
      );
      setItemListError(itemListError);
    }
    setLoading(false);
  }
}
