import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart' as d;
import 'package:dio/dio.dart';
import 'package:fahras/sp_helper.dart';
import 'package:fahras/values/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'get/app_get.dart';

class ServerUser {
  ServerUser._();

  static ServerUser serverUser = ServerUser._();


  Appget appGet = Get.find();
  d.Dio dio;

  inialDio() {
    if (dio == null) {
      dio = d.Dio();
      return dio;
    } else {
      return dio;
    }
  }

  regCompany(String name ,String mobNum, String password,String email ,String address,
      File file
      )async{
    try {

      inialDio();

      d.FormData data = d.FormData.fromMap(
          {'mobile': mobNum, 'password': password, 'email': email,'name':name ,'address': address,
            'logo_url' :await d.MultipartFile.fromFile(
              file.path,
              // filename: fileName,
            ),
          });
      d.Response response = await dio.post(
        baseUrl + RegisterCompanyUrl,
        data: data,
      );
      if (response.data['code'] == 200) {
        appGet.setRegisterCompanyMap(response.data);

        print('Register successfully');
        return true;
      } else {
        print("falied Register ${response.statusCode}");
      }
    } catch (e) {
      print("Register error $e");
      return false;
    }
  }
  getHomeCompany()async{
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      d.Response response = await dio.post(
        baseUrl + HomeCompnyUrl,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );

      if (response.statusCode == 200) {
        appGet.setHomeCompanyMap(response.data);
        print("response.data");

      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee  Company $e");
    }
  }

  getMyWork()async{
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      d.Response response = await dio.post(
        baseUrl + myWorkUrl,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );

      if (response.statusCode == 200) {
        appGet.setMyworkMap(response.data);
        print("response.data my work");

      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee  my work $e");
    }
  }

  getMyProduct()async{
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      d.Response response = await dio.post(
        baseUrl + myProductUrl,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );

      if (response.statusCode == 200) {
        appGet.setmyProductMap(response.data);
        print("response.data my product");

      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee  my product $e");
    }
  }
  getHomeUser() async {
    try {
      inialDio();
      d.Response response = await dio.post(
        baseUrl + homeUserUrl,
      );

      if (response.statusCode == 200) {
        appGet.setHomeMAp(response.data);
        // print(response.data['data']['categories'][1]['name']);
        // return response.data;
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee $e");
    }
  }

  getAllVendors() async {
    try {
      inialDio();
      d.Response response = await dio.post(
        baseUrl + allVendorsUrl,
      );
      if (response.statusCode == 200) {
        print("dddddddddddddddddddd ${response.data}");
        appGet.setVenderByCategory(response.data);
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee $e");
    }
  }

  getallCategory() async {
    try {
      inialDio();
      d.Response response = await dio.post(
        baseUrl + allCategoryUrl,
      );
      if (response.statusCode == 200) {
        appGet.setallCategoryMap(response.data);
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee $e");
    }
  }

  getWishList() async {
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      print("ttttttttttttt $token");
      d.Response response = await dio.post(
        baseUrl + wishlistUrl,
        options: Options(

          headers: {
            Headers.contentTypeHeader: 'application/json',
            'Authorization': 'Bearer $token'
          }
        ),
      );

      if (response.statusCode == 200) {
        print('statuseCode not ${response.data}');
        appGet.setWishList(response.data);
      } else {
        print('statuseCode not 200');
      }
    } catch (e) {
      print('${e.toString()} favvvvvvv');
    }
  }

  addToWishList(int vendorId)async{
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      d.FormData data = d.FormData.fromMap({'vendor_id': vendorId});
      d.Response response = await dio.post(
        baseUrl + addToWishlistUrl,
        data: data,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );

      if (response.statusCode == 200) {
        print(response.data);

      } else {
        print('statuseCode not 200');
      }
    } catch (e) {
      print('${e.toString()} favvvvvvv Addd');
    }
  }

  RemoveFromWishlist(int vendorId)async{
    try {
      inialDio();
      String token = await SPHelper.spHelper.getToken();
      d.FormData data = d.FormData.fromMap({'vendor_id': vendorId});
      d.Response response = await dio.post(
        baseUrl + removeFromWishlistUrl,
        data: data,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );

      if (response.statusCode == 200) {
        print(response.data);
      } else {
        print('statuseCode not 200');
      }
    } catch (e) {
      print('${e.toString()} favvvvvvv remove');
    }
  }

  getVendorsByCategory(int CategoryId) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({'category_id': CategoryId});
      d.Response response = await dio.post(
        baseUrl + VendorsByCategoryUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setVenderByCategory(response.data);
        print('get Vendor by category done');
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee $e");
    }
  }

  getVendorWorks(int vendorId) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({'vendor_id': vendorId});
      d.Response response = await dio.post(
        baseUrl + VendorsWorksUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setVendorWork(response.data);
        print('get Vendor Work done');
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeee $e");
    }
  }

  getWorkPage(int workId) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({'work_id': workId});
      d.Response response = await dio.post(
        baseUrl + VendorsWorkPageUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setWorkPage(response.data);
        print('get Vendor Work  page done');
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print("work page $e");
    }
  }

  getVendorDetails(int vendorId) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({'vendor_id': vendorId});
      d.Response response = await dio.post(
        baseUrl + VendorsByIdUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setVendorDetails(response.data);
        print('get Vendor Details done');
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print(" Vendor Details $e");
    }
  }

  getProductByVendor(int vendorId) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({'vendor_id': vendorId});
      d.Response response = await dio.post(
        baseUrl + ProductByVenderUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setProductVendor(response.data);
        print('get product vendor done');
      } else {
        print("dddddddddddddddddddd");
      }
    } catch (e) {
      print(" product vendor  $e");
    }
  }

  Register(String mobNum, String password) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap(
          {'mobile': mobNum, 'password': password, 'email': "dd@ghj.com"});
      d.Response response = await dio.post(
        baseUrl + registerUrl,
        data: data,
      );
      if (response.data['code'] == 200) {
        appGet.registerMap(response.data);

        print('Register successfully');
      } else {
        print("falied Register ${response.statusCode}");
      }
    } catch (e) {
      print("Register error $e");
    }
  }

  Login(String mobNum, String password) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({
        'mobile': mobNum,
        'password': password,
      });
      d.Response response = await dio.post(
        baseUrl + loginUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.loginMap(response.data);
        SPHelper.spHelper.setToken(response.data['accessToken']);
        print('Login successfully');

      } else {
        print("falied login");
      }
    } catch (e) {
      print("login error $e");
    }
  }





  getProductCompanyId(String productId)async{
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap(
          {
          'product_id':productId
          });
      d.Response response = await dio.post(
        baseUrl + productCompanyByIdUrl,
        data: data,
      );
      if (response.data['code'] == 200) {
        appGet.setProductCompanyByIdMap(response.data);

        print('grt product successfully');
      } else {
        print("falied get product ${response.statusCode}");
      }
    } catch (e) {
      print("get product by id  error $e");
    }
  }
  LoginComapny(String mobNum, String password) async {
    try {
      inialDio();
      d.FormData data = d.FormData.fromMap({
        'mobile': mobNum,
        'password': password,
      });
      d.Response response = await dio.post(
        baseUrl + LoginCompanyUrl,
        data: data,
      );
      if (response.statusCode == 200) {
        appGet.setLoginCompanyMap(response.data);
        print(response.data);
        SPHelper.spHelper.setToken(response.data['accessToken']);
        print(response.data['accessToken']);
        print('Login successfully');

      } else {
        print("falied login");
      }
    } catch (e) {
      print("login error $e");
    }
  }



  addWork(String name , String des ,File file)async{
    try {
      inialDio();
    //  String fileName = file.path.split('/').last;
      String token = await SPHelper.spHelper.getToken();
      print(token);
      d.FormData data = d.FormData.fromMap({
         'name':name,
        'description':des,
        'image_url' :await d.MultipartFile.fromFile(
          file.path,
         // filename: fileName,
        ),
      });
      d.Response response = await dio.post(
        baseUrl + addWorkUrl,
        data: data,
        options: Options(
            headers: {
              Headers.contentTypeHeader: 'application/json',
              'Authorization': 'Bearer $token'
            }
        ),
      );
      if (response.statusCode == 200) {
        appGet.setAddWorkMap(response.data);
print('done');

      } else {
        print("falied Add work");
      }
    } catch (e) {
      print("adding work  error $e");
    }
  }
addProduct(String name , String category_id,String price,String description,File file)async{
  try {
    inialDio();
    String token = await SPHelper.spHelper.getToken();
    print(token);
    d.FormData data = d.FormData.fromMap({
      'name':name,
      'description':description,
      'category_id':category_id,
      'price':price,
      'image_url' : await d.MultipartFile.fromFile(
        file.path,
        // filename: fileName,
      ),
    });
    d.Response response = await dio.post(
      baseUrl + addProductUrl,
      data: data,
      options: Options(
          headers: {
            Headers.contentTypeHeader: 'application/json',
            'Authorization': 'Bearer $token'
          }
      ),
    );
    if (response.statusCode == 200) {
      appGet.setaddProductMap(response.data);
      print('done');

    } else {
      print("falied Add product");
    }
  } catch (e) {
    print("adding product  error $e");
  }
}





}
