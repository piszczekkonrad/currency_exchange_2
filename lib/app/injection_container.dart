import 'package:currency_exchange/app/results%20page/cubit/last_month_cubit.dart';
import 'package:currency_exchange/app/root%20Page/cubit/root_cubit.dart';
import 'package:currency_exchange/app/root%20Page/data%20source/remote_data_source.dart';
import 'package:currency_exchange/app/root%20Page/repositories/repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void configureDependencies() {
  getIt.registerFactory(() => RootCubit(getIt()));
  getIt.registerFactory(() => LastMonthCubit(getIt()));
  getIt.registerFactory(() => Repository(getIt()));
  getIt.registerFactory(() => RemoteDataSource());
}
