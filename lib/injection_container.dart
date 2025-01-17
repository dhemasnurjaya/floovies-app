import 'package:floovies/core/data/local/config.dart';
import 'package:floovies/core/data/local/theme_mode_config.dart';
import 'package:floovies/core/env.dart';
import 'package:floovies/core/network/network.dart';
import 'package:floovies/core/presentation/theme/theme_mode_cubit.dart';
import 'package:floovies/features/movies/data/data_sources/remote/tmdb_remote_data_source.dart';
import 'package:floovies/features/movies/data/repositories/tmdb_repository_impl.dart';
import 'package:floovies/features/movies/domain/repositories/tmdb_repository.dart';
import 'package:floovies/features/movies/domain/use_cases/search_all.dart';
import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setup() {
  // env
  getIt.registerSingleton<Env>(EnvImpl());

  // network
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<Network>(() => NetworkImpl(getIt()));

  // shared preferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () async {
      final prefs = await SharedPreferences.getInstance();
      return prefs;
    },
  );

  // configs
  getIt.registerSingletonWithDependencies<Config<ThemeMode>>(
    () => ThemeModeConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );

  // data sources
  getIt.registerLazySingleton<TmdbRemoteDataSource>(
    () => TmdbRemoteDataSourceImpl(
      env: getIt(),
      network: getIt(),
    ),
  );

  // repositories
  getIt.registerLazySingleton<TmdbRepository>(
    () => TmdbRepositoryImpl(remoteDataSource: getIt()),
  );

  // use cases
  getIt.registerLazySingleton<SearchAll>(
    () => SearchAll(getIt()),
  );

  // blocs
  getIt.registerSingletonAsync<ThemeModeCubit>(
    () async {
      final initialThemeMode = await getIt<Config<ThemeMode>>().get();
      return ThemeModeCubit(
        themeModeConfig: getIt(),
        initialThemeMode: initialThemeMode,
      );
    },
    dependsOn: [SharedPreferences, Config<ThemeMode>],
  );
  getIt.registerLazySingleton<SearchBloc>(
    () => SearchBloc(searchAll: getIt()),
  );

  // others
}

MultiBlocProvider multiBlocProvider({required Widget child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider<ThemeModeCubit>(
        create: (context) => getIt(),
      ),
      BlocProvider<SearchBloc>(
        create: (context) => getIt(),
      ),
    ],
    child: child,
  );
}
