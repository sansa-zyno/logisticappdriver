import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:logistic_app_driver/constant/show_toast_dialog.dart';
import 'package:logistic_app_driver/model/ride_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewRideController extends GetxController {
  var isLoading = true.obs;
  var rideList = <RideData>[].obs;
  Timer? timer;
  @override
  void onInit() {
    //getNewRide();
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
        statut: "new",
        creer: "50",
        idUserApp: 2,
        numberPoeple: 5,
        nom: "Doe",
        prenom: "John",
        photoPath: "assets/images/male.png",
        nomConducteur: "09040705634",
        montant: 56,
        moyenne: 45,
        moyenneDriver: 5,
        duree: "1hr20mins",
        dateRetour: "22/02/06",
        prenomConducteur: "Clement",
      ),
      RideData(
        id: 1,
        latitudeDepart: "6.5018",
        longitudeDepart: "3.2515",
        latitudeArrivee: "7.3775",
        longitudeArrivee: "3.9470",
        departName: "Ojodu",
        destinationName: "Ibadan",
        distance: 640,
        distanceUnit: "km",
        statut: "",
        creer: "50",
        idUserApp: 2,
        numberPoeple: 5,
        nom: "Doe",
        prenom: "John",
        photoPath: "assets/images/male.png",
        nomConducteur: "09040705634",
        montant: 56,
        moyenne: 45,
        moyenneDriver: 5,
        duree: "50mins",
        dateRetour: "22/02/06",
        prenomConducteur: "Samson",
      ),
      RideData(
          id: 1,
          latitudeDepart: "5.6018",
          longitudeDepart: "2.3515",
          latitudeArrivee: "7.3775",
          longitudeArrivee: "3.9470",
          departName: "Ikorodu",
          destinationName: "Ibadan",
          distance: 640,
          distanceUnit: "km",
          statut: "",
          creer: "50",
          idUserApp: 2,
          numberPoeple: 5,
          nom: "Doe",
          prenom: "John",
          photoPath: "assets/images/male.png",
          nomConducteur: "09040705634",
          montant: 56,
          moyenne: 45,
          moyenneDriver: 5,
          duree: "1hr10mins",
          dateRetour: "22/02/06",
          prenomConducteur: "Joshua")
    ];
    timer = Timer.periodic(const Duration(seconds: 30), (timer) {
      //getNewRide();
    });

    super.onInit();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }

  Future<dynamic> getNewRide() async {
    /*try {
      final response = await http.get(
          Uri.parse(
              "${API.newRide}?id_driver=${Preferences.getInt(Preferences.userId)}"),
          headers: API.header);
      Map<String, dynamic> responseBody = json.decode(response.body);
      log(API.header.toString());
      log(response.request.toString());
      log(response.body);

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
        ShowToastDialog.showToast('Unauthorized');
        // throw Exception('Failed to load album');
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
