import 'package:domain/domain.dart';

abstract class ResellerRepository {
  Future<ResellerModel> getProfile(
    String userId,
  );

  Future<void> addProfile(
    String userId,
    RegisterRequestModel registerModel,
  );

  Future<void> updateProfile(
    ResellerModel profileModel,
  );
}
