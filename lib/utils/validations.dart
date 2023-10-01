import 'package:chatapp/utils/app_toasts/app_toast.dart';
class Validations{

  Validations(){

  }

  String? handleFirst(String value) {
    if (value.length >= 3) {
      return null;
    }
    return "First name should be more than 3 characters";
  }

  String? handleLast(String value) {
    if (value.length >= 3) {
      return null;
    }
    return "Last name should be more than 3 characters";
  }

  String? handelPhone(String value) {
    if (RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
        .hasMatch(value)) {
      return null;
    }
    return "Invalid Phone";
  }

  String? handelBirthday(String value) {
    if (value.isNotEmpty) {
      return null;
    }
    return "Please enter your date of birth";
  }  String? handelCountry(String value) {
    if (value.isNotEmpty) {
      return null;
    }
    return "Please Select a country";
  }


  bool isEmailValid(String email) {
    const pattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
    final regExp = RegExp(pattern);
    bool isValid = regExp.hasMatch(email);
    if(!isValid)AppToast.error(title: "Invalid Email", message: "Please enter a valid email");
    return isValid;
  }

  bool isPasswordValid(String password) {
    bool isValid = password.length>=8;
    if(!isValid)AppToast.error(title: "Invalid Password", message: "Password must be minimum 8 characters");
    return isValid;
  }
}

