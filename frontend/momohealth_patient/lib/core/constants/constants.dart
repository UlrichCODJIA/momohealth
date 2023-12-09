import 'package:momohealth_patient/core/app_export.dart';
import 'package:momohealth_patient/repositories/user_repository.dart';
import 'package:momohealth_patient/repositories/wallet_repository.dart';

UserRepository userRepository = Get.put(UserRepository());
WalletRepository walletRepository = Get.put(WalletRepository());
