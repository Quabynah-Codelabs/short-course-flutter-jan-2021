/*
 MULTILINE COMMENT
 */

/// documentations

// user class -> used to create User objects
class User {
  /// fields
  String id, email, firstName, lastName;

  /// method
  bool isAuthenticated() {
    return false;
  }

  /// getters
  String get fullName => '$firstName $lastName';
}
