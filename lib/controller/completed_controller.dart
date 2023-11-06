import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:logistic_app_driver/constant/constant.dart';
import 'package:logistic_app_driver/constant/show_toast_dialog.dart';
import 'package:logistic_app_driver/model/ride_model.dart';
import 'package:logistic_app_driver/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CompletedController extends GetxController {
  var isLoading = true.obs;
  var rideList = <RideData>[].obs;

  @override
  void onInit() {
    //getCompletedRide();
    isLoading.value = false;
    rideList.value = [
      RideData(
          id: 1,
          latitudeDepart: "6.6018",
          longitudeDepart: "3.3515",
          latitudeArrivee: "7.3775",
          longitudeArrivee: "3.9470",
          departName: "Ikeja",
          destinationName: "Ibadan",
          distance: 640,
          distanceUnit: "km",
          statut: "",
          creer: "50",
          idUserApp: 2,
          idConducteur: 3,
          numberPoeple: 5,
          nom: "Doe",
          prenom: "John",
          photoPath: "assets/images/male.png",
          nomConducteur: "09040705634",
          //numberplate: "0knghtyre34",
          //model: "",
          montant: 56,
          moyenne: 45,
          moyenneDriver: 5,
          duree: "1hr20mins",
          dateRetour: "22/02/06",
          prenomConducteur: "Clement",
          discount: 10.0,
          tax: 10,
          tipAmount: 100)
    ];
    getUsrData();
    super.onInit();
  }

  UserModel? userModel;

  getUsrData() {
    userModel = Constant.getUserData();
  }

  Future<dynamic> getCompletedRide() async {
    /*try {
      final response = await http.get(
          Uri.parse(
              "${API.getCompletedRide}?id_driver=${Preferences.getInt(Preferences.userId)}"),
          headers: API.header);
      Map<String, dynamic> responseBody = json.decode(response.body);

      if (response.statusCode == 200 && responseBody['success'] == "Success") {
        isLoading.value = false;
        RideModel model = RideModel.fromJson(responseBody);
        rideList.value = model.rideData!;
        log("Completed Ride Response ${response.body}");
      } else if (response.statusCode == 200 &&
          responseBody['success'] == "Failed") {
        rideList.clear();
        isLoading.value = false;
      } else {
        isLoading.value = false;
        ShowToastDialog.showToast(
            'Something want wrong. Please try again later');
        throw Exception('Failed to load album');
      }
    } on TimeoutException catch (e) {
      isLoading.value = false;
      ShowToastDialog.showToast(e.message.toString());
    } on SocketException catch (e) {
      isLoading.value = false;
      ShowToastDialog.showToast(e.message.toString());
    } on Error catch (e) {
      isLoading.value = false;
      ShowToastDialog.showToast(e.toString());
    } catch (e) {
      ShowToastDialog.closeLoader();
      ShowToastDialog.showToast(e.toString());
    }
    return null;*/
  }

  Future<dynamic> conformPaymentByCache(String id) async {
    /*try {
      ShowToastDialog.showLoader("Please wait");
      Map<String, dynamic> bodyParams = {
        'id_ride': id,
      };
      final response = await http.post(Uri.parse(API.conformPaymentByCash),
          headers: API.header, body: jsonEncode(bodyParams));
      Map<String, dynamic> responseBody = json.decode(response.body);
      if (response.statusCode == 200) {
        ShowToastDialog.closeLoader();
        return responseBody;
      } else {
        ShowToastDialog.closeLoader();
        ShowToastDialog.showToast(
            'Something want wrong. Please try again later');
        throw Exception('Failed to load album');
      }
    } on TimeoutException catch (e) {
      ShowToastDialog.closeLoader();
      ShowToastDialog.showToast(e.message.toString());
    } on SocketException catch (e) {
      ShowToastDialog.closeLoader();
      ShowToastDialog.showToast(e.message.toString());
    } on Error catch (e) {
      ShowToastDialog.closeLoader();
      ShowToastDialog.showToast(e.toString());
    } catch (e) {
      ShowToastDialog.closeLoader();
      ShowToastDialog.showToast(e.toString());
    }
    return null;*/
  }
}
