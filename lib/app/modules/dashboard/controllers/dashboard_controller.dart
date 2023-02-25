import 'dart:convert';

import 'package:flutter_get/app/data/entertainment_response.dart';
import 'package:flutter_get/app/data/headline_response.dart';
import 'package:flutter_get/app/data/sports_response.dart';
import 'package:flutter_get/app/data/technology_response.dart';
import 'package:get/get.dart';

import '../../../utils/api.dart';

class DashboardController extends GetxController {
  final _getConnect = GetConnect();
  Future<entertainment_response> getEntertainment() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return entertainment_response.fromJson(jsonDecode(response.body));
  }

  Future<headline_response> getHeadline() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return headline_response.fromJson(jsonDecode(response.body));
  }

  Future<sports_response> getSports() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return sports_response.fromJson(jsonDecode(response.body));
  }

  Future<technology_response> getTechnology() async {
    //memanggil fungsi getConnect untuk melakukan request ke BaseUrl.headline
    final response = await _getConnect.get(BaseUrl.headline);
    //mengembalikan data response dalam bentuk HeadlineResponse setelah di-decode dari JSON
    return technology_response.fromJson(jsonDecode(response.body));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
