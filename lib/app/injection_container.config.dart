// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'results%20page/cubit/last_month_cubit.dart' as _i6;
import 'root%20Page/cubit/root_cubit.dart' as _i5;
import 'root%20Page/data%20source/remote_data_source.dart' as _i3;
import 'root%20Page/repositories/repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.RemoteDataSource>(() => _i3.RemoteDataSource());
  gh.factory<_i4.Repository>(() => _i4.Repository(get<_i3.RemoteDataSource>()));
  gh.factory<_i5.RootCubit>(() => _i5.RootCubit(get<_i4.Repository>()));
  gh.factory<_i6.LastMonthCubit>(
      () => _i6.LastMonthCubit(get<_i4.Repository>()));
  return get;
}
