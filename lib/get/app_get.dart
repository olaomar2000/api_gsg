import 'package:get/get.dart';

class Appget extends GetxController {

  var registerMap = {}.obs;

  setRegister(var value) {
    this.registerMap.value = value;
  }


  var loginMap = {}.obs;
  var homeUserMap = {}.obs;
  var allVendorsMap = {}.obs;
  var allCategoryMap = {}.obs;
  var wishListMap = {}.obs;
  var VendersByCategoryMap = {}.obs;
  var VendorWorksMap = {}.obs;

  setLogin(var value) {
    this.loginMap.value = value;
  }



  setVendorWork(var value) {
    this.VendorWorksMap.value = value;
  }

  setVenderByCategory(var value) {
    this.VendersByCategoryMap.value = value;
  }

  setWishList(var value) {
    this.wishListMap.value = value;
    update();
  }

  setallCategoryMap(var value) {
    this.allCategoryMap.value = value;
  }

  setHomeMAp(var value) {
    this.homeUserMap.value = value;
  }

  setallVendors(var value) {
    this.allVendorsMap.value = value;
  }

  var workPageMap = {}.obs;

  setWorkPage(var value) {
    this.workPageMap.value = value;
  }

  var VendorDetailsMap = {}.obs;

  setVendorDetails(var value) {
    this.VendorDetailsMap.value = value;
  }

  var ProductVendorMap = {}.obs;

  setProductVendor(var value) {
    this.ProductVendorMap.value = value;
  }

  var registerCompanyMap = {}.obs;

  setRegisterCompanyMap(var value) {
    this.registerCompanyMap.value = value;
  }

  var loginCompanyMap = {}.obs;

  setLoginCompanyMap(var value) {
    this.loginCompanyMap.value = value;
  }

  var homeCompanyUrl = {}.obs;

  setHomeCompanyMap(var value) {
    this.homeCompanyUrl.value = value;
  }

  var myWorkMap = {}.obs;

  setMyworkMap(var value) {
    this.myWorkMap.value = value;
  }

  var myProductMap = {}.obs;

  setmyProductMap(var value) {
    this.myProductMap.value = value;
  }

  var addWorkMap = {}.obs;

  setAddWorkMap(var value) {
    this.addWorkMap.value = value;
  }

  var addProductMap = {}.obs;

  setaddProductMap(var value) {
    this.addProductMap.value = value;
  }

  var productCompanyByIdMap = {}.obs;

  setProductCompanyByIdMap(var value) {
    this.productCompanyByIdMap.value = value;
  }
}
