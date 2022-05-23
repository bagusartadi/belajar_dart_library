class ValException implements Exception {
  String messagex;
  ValException(this.messagex);
}

class Validation {
  static void validate(String username, String password) {
    if (username == '') {
      throw ValException('username is blank');
    } else if (password == '') {
      throw ValException('password is blank');
    } else if (username != 'eko' || password != 'eko') {
      throw Exception('login failed');
    }
  }
}

void main() {
  try {
    Validation.validate('eko', 'eko');
  } on ValException catch (except) {
    print('validation error ${except.messagex}.');
  } on Exception catch (dda) {
    print('error ${dda.toString()}');
  }
  print('selesai');

  try {
    Validation.validate('', 'eko');
  } on ValException catch (exception, stackTrace) {
    print('validation error: ${exception.messagex}');
    print('stackTrace error: ${stackTrace.toString()}');
  } catch (exception, stackTrace) {
    print('error catch: ${exception.toString()}');
    print('stackTrace error: ${stackTrace.toString()}');
  }
  print('selesai kedua');
}
