import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../models/masterdata_response.dart';
import '../../../../models/steps.dart';
import '../../../../utils/api_list.dart';

class BuildCardProvider with ChangeNotifier {
 // MasterDataResponse masterData = MasterDataResponse();
 Map<int, List<StepCardModel>> map1 = {};
  List<StepCardModel> stepCardModelList = [];
 List<CustomSelectModel> customSelectModel =[];
  Future<void> fetchMasterData() async {
    try {
      Response response = await Dio().get(Apis.getCardMasterData);

      print('User Info: ${response.data}');

      MasterDataResponse dataResponse = MasterDataResponse.fromJson(
          response.data);

      if (dataResponse.status == 1) {
        if(dataResponse.qrCodes!=null) {
          stepCardModelList = [];
          int count = 0;
          for (final qrModel in dataResponse.qrCodes!) {
            if(qrModel.qrCodeImage!=null && qrModel.qrCodeName!=null) {
              StepCardModel stepCardModel = StepCardModel(
                  cardImage: qrModel.cardImage,
                  image: qrModel.qrCodeImage!,
                  title: qrModel.qrCodeName!);
              stepCardModel.isSelected =  (count == 0);
              stepCardModel.qrCodeType = qrModel.qrCodeType!;
              stepCardModelList.add(stepCardModel);
              count++;
            }
          }
          map1[0] = stepCardModelList;
        }
        if(dataResponse.fonts!=null){
          stepCardModelList = [];
          int count = 0;
          for (final font in dataResponse.fonts!) {
            if(font.fontName!=null) {
              StepCardModel stepCardModel = StepCardModel(
                  cardImage: font.cardImage,
                  image: font.fontName!,
                  title: '',
                  );
              stepCardModel.isSelected =  (count == 0);
              stepCardModelList.add(stepCardModel);
              count++;
            }
          }
          map1[1] = stepCardModelList;
        }
        if(dataResponse.styles!=null){
          int count = 0;
          stepCardModelList = [];
          for (final style in dataResponse.styles!) {
            if(style.styleName!=null) {
              StepCardModel stepCardModel = StepCardModel(
                  cardImage: style.cardImage,
                  image: style.styleName!,
                  title: '');
              stepCardModel.isSelected =  (count == 0);
              stepCardModelList.add(stepCardModel);
              count++;
            }
          }
          map1[2] = stepCardModelList;
        }
        //testing
        stepCardModelList = [];
        stepCardModelList=[
          StepCardModel(
              cardImage: 'assets/icons/edit_card/stepCard_4.png',
              image: 'assets/icons/edit_card/step3/step3_1.png',
              title: ''),
          StepCardModel(
              cardImage: 'assets/icons/edit_card/stepCard_4.png',
              image: 'assets/icons/edit_card/step3/step3_2.png',
              title: ''),
          StepCardModel(
              cardImage: 'assets/icons/edit_card/stepCard_4.png',
              image: 'assets/icons/edit_card/step3/step3_3.png',
              title: ''),
          StepCardModel(
              cardImage: 'assets/icons/edit_card/stepCard_4.png',
              image: 'assets/icons/edit_card/step3/step3_3.png',
              title: '')
        ];
       map1[3] = stepCardModelList;
        if(dataResponse.cardTypes!=null) {
          customSelectModel = [];
          int count = 0;
          for (final cardTypes in dataResponse.cardTypes!) {
            customSelectModel.add(CustomSelectModel(cardTypes.cardName!,cardTypes.cardPrice!,(count==0)?true:false));
            count++;
          }
        }
        notifyListeners();
      } else {
        print('status failed ' + dataResponse.status.toString());
      }
    } catch (e) {
      print(e);
    }
  }
 StepCardModel? getSelectedQrData(){
    if(map1[0]!=null && map1[0]!.isNotEmpty){
      for (final qrModel in map1[0]!) {
        if(qrModel.isSelected){
         return qrModel;
        }
      }
    }
    return null;
  }
 StepCardModel? getSelectedStyle(){
   if(map1[2]!=null && map1[2]!.isNotEmpty){
     for (final styleModel in map1[2]!) {
       if(styleModel.isSelected){
         return styleModel;
       }
     }
   }
   return null;
 }
 StepCardModel? getSelectedFont(){
   if(map1[1]!=null && map1[1]!.isNotEmpty){
     for (final fontModel in map1[1]!) {
       if(fontModel.isSelected){
         return fontModel;
       }
     }
   }
   return null;
 }
}