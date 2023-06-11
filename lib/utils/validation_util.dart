class CustomValidators {
  static String? validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username cannot be empty.';
    }
    // Add more validation logic if needed
    return null; // Return null if the input is valid
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password cannot be empty.';
    }
    // Add more validation logic if needed
    return null; // Return null if the input is valid
  }
}
