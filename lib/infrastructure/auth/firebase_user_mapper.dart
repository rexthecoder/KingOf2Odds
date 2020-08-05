import 'package:firebase_auth/firebase_auth.dart';
import 'package:kingof2odds/domain/auth/user.dart';
import 'package:kingof2odds/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
