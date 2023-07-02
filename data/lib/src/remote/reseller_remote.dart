import 'dart:async';

import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class ResellerRemote {
  static const RESELLER_TABLE = 'resellers';
  final SupabaseClient _sb;

  ResellerRemote(
    this._sb,
  );

  Future<ResellerModel> getProfile(String userId) async {
    final data = await _sb.from(RESELLER_TABLE).select().single();
    return ResellerModel.fromJson(data);
  }
}
