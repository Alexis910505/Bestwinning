import 'dart:async';

// Clase para validar utilizando el partón bloc de Flutter
class Validators{
  final validatorPin = StreamTransformer<String, String>.fromHandlers(
    handleData: (pin, sink){
      if( pin.isNotEmpty &&
          _validatePin(pin.toString()) != null
      ){
        sink.add(pin);
      }else{
        sink.addError('Eso no es un pin');
      }
    }
  );

  final validatorCode = StreamTransformer<String, String>.fromHandlers(
      handleData: (code, sink){
        if( code.isNotEmpty &&
            _validateCode(code.toString()) != null
        ){
          sink.add(code);
        }else{
          sink.addError('Eso no es un código');
        }
      }
  );

  final validatorMainStreet = StreamTransformer<String, String>.fromHandlers(
      handleData: (mainStreet, sink){
        if(mainStreet.isEmpty){
          sink.addError('Llene el campo');
        }else{
          sink.add(mainStreet);
        }
      }
  );

  final validatorSecondStreet = StreamTransformer<String, String>.fromHandlers(
      handleData: (secondStreet, sink){
        if(secondStreet.isEmpty){
          sink.addError('Llene el campo');
        }else{
          sink.add(secondStreet);
        }
      }
  );

  final validatorThirdStreet = StreamTransformer<String, String>.fromHandlers(
      handleData: (thirdStreet, sink){
        if(thirdStreet.isEmpty){
          sink.addError('Llene el campo');
        }else{
          sink.add(thirdStreet);
        }
      }
  );

  final validatorCity = StreamTransformer<String, String>.fromHandlers(
      handleData: (city, sink){
        if( city.isNotEmpty &&
            _validateName(city.toString()) != null
        ){
          sink.add(city);
        }else{
          sink.addError('Esto no es una ciudad');
        }
      }
  );

  final validatorLocation= StreamTransformer<String, String>.fromHandlers(
      handleData: (location, sink){
        if( location.isNotEmpty &&
            _validateName(location.toString()) != null
        ){
          sink.add(location);
        }else{
          sink.addError('Esto no es una localidad');
        }
      }
  );

  final validatorPhone = StreamTransformer<String, String>.fromHandlers(
      handleData: (phone, sink){
        if( phone.isNotEmpty    &&
            _validatePhone(phone.toString()) != null
        ){
          sink.add(phone);
        }else{
          sink.addError('Eso no es un número telefónico');
        }
      }
  );

  final validatorName= StreamTransformer<String, String>.fromHandlers(
      handleData: (name, sink){
        if( name.isNotEmpty &&
            _validateName(name.toString()) != null
        ){
          sink.add(name);
        }else{
          sink.addError('Esto no es un nombre');
        }
      }
  );

  final validatorSurname= StreamTransformer<String, String>.fromHandlers(
      handleData: (surname, sink){
        if( surname.isNotEmpty &&
            _validateName(surname.toString()) != null
        ){
          sink.add(surname);
        }else{
          sink.addError('Esto no es un Apellido');
        }
      }
  );

  final validatorSecondSurname= StreamTransformer<String, String>.fromHandlers(
      handleData: (secondSurname, sink){
        if( secondSurname.isNotEmpty &&
            _validateName(secondSurname.toString()) != null
        ){
          sink.add(secondSurname);
        }else{
          sink.addError('Esto no es un Apellido');
        }
      }
  );

  final validatorCI= StreamTransformer<String, String>.fromHandlers(
      handleData: (ci, sink){
        if( ci.isNotEmpty &&
            _validateCI(ci.toString()) != null
        ){
          sink.add(ci);
        }else{
          sink.addError('Esto no es un carnet de identidad');
        }
      }
  );

  final validatorEmail= StreamTransformer<String, String>.fromHandlers(
      handleData: (email, sink){
        if( email.isNotEmpty    &&
            _validateEmail(email.toString()) != null
        ){
          sink.add(email);
        }else{
          sink.addError('Correo no válido');
        }
      }
  );

  final validatorPass= StreamTransformer<String, String>.fromHandlers(
      handleData: (pass, sink){
        if( pass.length < 7
        ){
          sink.addError('Contraseña no válida(menos de 8 caracteres)');
        }else{
          sink.add(pass);
        }
      }
  );
}

//Validacación de String en correspondencia de la expresión regular
 _validateEmail(String value) {
  String pattern =
      r'^\w+(\.\w+)*@(\w+\.)+\w{2,4}$';
  RegExp regExp = new RegExp(pattern);
 if (regExp.hasMatch(value))
    return " ";
 return null;
}
 _validateName(String value) {
  String pattern =
      r'^[a-zA-ZñÑáÁéÉíÍóÓúÚ\s]+$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value))
    return " ";
  return null;
}
 _validateCI(String value) {
  String pattern =
      r'^([0-9]{11})+$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value))
    return " ";
  return null;
}
 _validatePhone(String value) {
  String pattern =
      r'^([1-9][0-9]*)+$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value))
    return " ";
  return null;
}
 _validatePin(String value) {
  String pattern =
      r'^[a-z A-Z 0-9]{4}$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value))
    return " ";
  return null;
}
 _validateCode(String value) {
  String pattern =
      r'^([0-9])+$';
  RegExp regExp = new RegExp(pattern);
  if (regExp.hasMatch(value))
    return " ";
  return null;
}