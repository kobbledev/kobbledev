import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kobble_dev/design_tools/styles.dart';

import '../../../../design_tools/colors.dart';
import '../../../../global_widgets/header2.dart';
import '../../../../models/add_address_response.dart';
import '../../../../models/user_address.dart';
import '../../../../utils/api_controller.dart';
import '../../../../utils/api_list.dart';
import '../../../../utils/local_storage.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({Key? key}) : super(key: key);

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  bool oncheck = true;
  final GlobalKey<FormState> addressKey = GlobalKey<FormState>();

  final addressTypeController = TextEditingController();
  final addressNameController = TextEditingController();
  final addressStreetController = TextEditingController();
  final addressCityController = TextEditingController();
  final addressStateController = TextEditingController();
  final addressPincodeController = TextEditingController();
  final addressCountryController = TextEditingController();
  final addressContactNumberController = TextEditingController();

  //Address FocusNodes
  final typeFocusNode = FocusNode();
  final countryFocusNode = FocusNode();
  final mobileNoFocusNode = FocusNode();
  final houseNoFocusNode = FocusNode();
  final landmarkFocusNode = FocusNode();
  final fullnameFocusNode = FocusNode();
  final pincodeFocusNode = FocusNode();
  final areaFocusNode = FocusNode();
  final townFocusNode = FocusNode();

  // final checkFocusNode = FocusNode();

  Map<String, dynamic> addAddress() {
    AddAddress address = AddAddress(
        addressType: 1,
        addressName: addressNameController.text.trim(),
        addressStreet: addressStreetController.text.trim(),
        addressCity: addressCityController.text.trim(),
        addressState: addressStateController.text.trim(),
        addressPincode: addressPincodeController.text.trim(),
        addressCountry: addressCountryController.text.trim(),
        addressContactNumber: addressContactNumberController.text.trim());
    return address.toJson();
  }

  void onSubmit(GlobalKey<FormState> addressKey) {
    if (addressKey.currentState!.validate()) {
      addUserAddressApi(jsonEncode(addAddress()));
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    var labelStyle = const TextStyle(
        fontFamily: FontFamily.nunito,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xff0F1010));

    var formFieldStyle = const TextStyle(
        fontFamily: FontFamily.nunito,
        fontWeight: FontWeight.w600,
        fontSize: 17,
        color: Color(0xff9D9F9E)); // Color(0xffF0F0F0));

    var formFieldBg = const Color(0xffF0F0F0);

    var countryField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Country / Region",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: const Color(0xff0F1010),
              style: formFieldStyle,
              controller: addressCountryController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.3),
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: 'India',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Country is Required';
                } else {
                  return null;
                }
              },
              focusNode: countryFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                //  countryFocusNode.unfocus();
                FocusScope.of(context).requestFocus(fullnameFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    var fullnameField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Full name",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: const Color(0xff0F1010),
              style: formFieldStyle,
              controller: addressNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: 'Mary Jhane',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Full Name is Required';
                } else {
                  return null;
                }
              },
              focusNode: fullnameFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                fullnameFocusNode.unfocus();
                FocusScope.of(context).requestFocus(mobileNoFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    var mobileField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Mobile Number",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: const Color(0xff0F1010),
              style: formFieldStyle,
              controller: addressContactNumberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: '99660 89977',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Mobile Number is Required';
                } else {
                  return null;
                }
              },
              focusNode: mobileNoFocusNode,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                mobileNoFocusNode.unfocus();
                FocusScope.of(context).requestFocus(pincodeFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    var pincodeField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Pincode",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: const Color(0xff0F1010),
              style: formFieldStyle,
              controller: addressPincodeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: '500084',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Pincode is Required';
                } else {
                  return null;
                }
              },
              focusNode: pincodeFocusNode,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                pincodeFocusNode.unfocus();
                FocusScope.of(context).requestFocus(houseNoFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    var houseAddressfield = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Flat, House no, Building , Company, Apartment",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: const Color(0xff0F1010),
              style: formFieldStyle,
              controller: addressStreetController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: 'Eg. flat no 102, CRS Estate',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'House Number is Required';
                } else {
                  return null;
                }
              },
              focusNode: houseNoFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                houseNoFocusNode.unfocus();
                FocusScope.of(context).requestFocus(areaFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    var areaField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Area, Sector, village",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: Colors.black,
              style: formFieldStyle,
              controller: addressStateController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: 'Hyderabad',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Area is Required';
                } else {
                  return null;
                }
              },
              focusNode: areaFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                areaFocusNode.unfocus();
                FocusScope.of(context).requestFocus(landmarkFocusNode);
              },
            ),
          ),
        ),
      ],
    );
    var townField = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            "Town, City",
            style: labelStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21),
          child: SizedBox(
            width: 350,
            child: TextFormField(
              cursorColor: Colors.black,
              style: formFieldStyle,
              controller: addressCityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:
                      const BorderSide(color: Color(0xff0F1010), width: 1.3),
                ),
                filled: true,
                fillColor: formFieldBg,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 23),
                hintText: 'Hyderabad',
                hintStyle: formFieldStyle,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Town is Required';
                } else {
                  return null;
                }
              },
              focusNode: townFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) {
                townFocusNode.unfocus();
                //FocusScope.of(context).requestFocus(checkFocusNode);
              },
            ),
          ),
        ),
      ],
    );

    return Theme(
      data: ThemeData(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent),
      child: Scaffold(
        appBar: Header2.stepHeader(screenheight),
        body: SizedBox(
          width: screenwidth,
          height: screenheight,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/icons/global_icons/location_bg.png",
                  fit: BoxFit.contain,
                  width: screenwidth * 0.42, //800,
                  height: screenheight * 0.531, //583,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Add a New Address",
                          style: TextStyle(
                              fontFamily: FontFamily.nunito,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F1010)),
                        ),
                        SizedBox(
                          height: 35,
                          width: 87,
                          child: OutlinedButton(
                            onPressed: () {
                              //_showCustomDialog(context);
                            },
                            child: const Text(
                              "Home",
                              style: TextStyle(
                                  fontFamily: FontFamily.nunito,
                                  color: Color(0Xff0F1010),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: OutlinedButton.styleFrom(
                                primary: const Color(0Xff006432),
                                backgroundColor: const Color(0XffBCFCE5),
                                side: const BorderSide(
                                    color: Colors1.green, width: 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                          key: addressKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 90),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    countryField,
                                    const SizedBox(
                                      width: 21,
                                    ),
                                    fullnameField,
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    mobileField,
                                    const SizedBox(
                                      width: 21,
                                    ),
                                    pincodeField,
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    houseAddressfield,
                                    const SizedBox(
                                      width: 21,
                                    ),
                                    areaField,
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    townField,
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 28),
                                  child: ListTile(
                                    onTap: () {
                                      setState(() {
                                        if (oncheck == true) {
                                          oncheck = false;
                                        } else {
                                          oncheck = true;
                                        }
                                      });
                                    },
                                    title: Row(
                                      children: [
                                        Container(
                                          child: oncheck == true
                                              ? const Icon(
                                                  Icons.check_box,
                                                  color: Colors1.green,
                                                  size: 30,
                                                )
                                              : const Icon(
                                                  Icons.check_box_outline_blank,
                                                  color: Colors1.green,
                                                  size: 30,
                                                ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        const Flexible(
                                          child: Text(
                                            "Make this my default address.",
                                            style: TextStyle(
                                              fontFamily: FontFamily.nunito,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color(0xff0F1010),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 11, bottom: 30),
                                      child: Container(
                                        margin: EdgeInsets.zero,
                                        height: 65,
                                        width: 500,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            return onSubmit(addressKey);
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) => const ThanksPage()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: const Color(0xff0F1010),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9))),
                                          child: const Text(
                                            "Save & Continue",
                                            style: TextStyle(
                                              fontFamily: FontFamily.nunito,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void addUserAddressApi(var addAddress) {
    Map<String, String> headers = {};
    print('addaddress req: ${addAddress}');

    LocalStorage.getToken().then((token) => {
          headers["x-auth"] = token,
          // headers["Content-Type"] = 'application/x-www-form-urlencoded',
          print('addaddress header: ${headers}'),

          ApiController.postAPI(
                  Apis.addUserAddress, headers, jsonEncode(addAddress))
              .then((value) {
            if (value.statusCode == 200 || value.statusCode == 201) {
              if (kDebugMode) {
                print('register Response: ${value.body}');

                AddAddressResponse response =
                    AddAddressResponse.fromJson(jsonDecode(value.body));
                //showToastMessage('${response.message}');
                if (response.status == 1) {
                  Navigator.pop(context);
                }
              }
            }
          })
        });
  }

  // void showToastMessage(String s) {
  //   Fluttertoast.showToast(
  //       msg: s,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: const Color(0XffF0F0F0),
  //       textColor: Colors.black,
  //       fontSize: 16.0);
  // }
//}
}
