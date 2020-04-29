
import 'dart:async';

import 'package:betswinning/models/validators.dart';

class Bloc with Validators{

  final _emailController = StreamController<String>.broadcast();
  final _passController = StreamController<String>.broadcast();
  final _phoneController = StreamController<String>.broadcast();

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePass => _passController.sink.add;
  Function(String) get changePhone => _phoneController.sink.add;

  Stream<String> get email =>_emailController.stream.transform(validatorEmail);
  Stream<String> get pass =>_passController.stream.transform(validatorPass);
  Stream<String> get phone =>_phoneController.stream.transform(validatorPhone);

  void dispose(){
    _emailController.close();
    _passController.close();
    _phoneController.close();
  }

  int selectedRadio = 0;
  bool selectedCheckbox = false;

  bool retun = false;
  
  var selectedValue;

  var codes = [
    Code(idcode: 1, code: "54"),
    Code(idcode: 2, code: "591"),
    Code(idcode: 3, code: "55"),
    Code(idcode: 4, code: "57"),
    Code(idcode: 5, code: "593"),
    Code(idcode: 6, code: "595"),
    Code(idcode: 7, code: "51"),
    Code(idcode: 8, code: "598"),
    Code(idcode: 9, code: "58"),
    Code(idcode: 10, code: "52")
  ];


}
final bloc = Bloc();

class Code {
  int idcode;
  String code;


  Code({this.idcode, this.code});

  @override
  String toString() {
    return '${code}'.toLowerCase() + '${idcode}'.toUpperCase();
  }
}