import 'package:worksample/src/users/user.dart';
import 'package:worksample/src/api/api_service.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final userDataProvider = FutureProvider<List<User>>((ref) async {
  return ref.read(apiServiceProvider).getUsers();
});