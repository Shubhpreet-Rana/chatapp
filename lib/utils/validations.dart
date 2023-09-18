class Validations{

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
}

