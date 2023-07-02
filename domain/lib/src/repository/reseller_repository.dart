import 'package:domain/domain.dart';

abstract class ResellerRepository {
  Future<ResellerModel> getProfile(
    String userId,
  );
}
