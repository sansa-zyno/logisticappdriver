import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:logistic_app_driver/constant/show_toast_dialog.dart';
import 'package:logistic_app_driver/model/ride_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RejectedController extends GetxController {
  var isLoading = true.obs;
  var rideList = <RideData>[].obs;

  @override
  void onInit() {
    //getRejectedRide();
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
        statut: "rejected",
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
      )
    ];
    super.onInit();
  }

  Future<dynamic> getRejectedRide() async {
    /*try {
      final response = await http.get(
          Uri.parse(
              "${API.getRejectRequest}?id_driver=${Preferences.getInt(Preferences.userId)}"),
          headers: API.header);
      Map<String, dynamic> responseBody = json.decode(response.body);
      if (response.statusCode == 200 && responseBody['success'] == "success") {
        isLoading.value = false;
        RideModel model = RideModel.fromJson(responseBody);
        rideList.value = model.rideData!;
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
}
