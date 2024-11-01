import 'package:floovies/core/presentation/bloc/app_bloc_observer.dart';
import 'package:floovies/core/presentation/theme/app_theme.dart';
import 'package:floovies/core/presentation/theme/theme_mode_cubit.dart';
import 'package:floovies/core/router/app_router.dart';
import 'package:floovies/features/movies/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as ic;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // dependency injection setup
  ic.setup();
  await ic.getIt.allReady();

  // register bloc observer
  Bloc.observer = AppBlocObserver();

  runApp(FlooviesApp());
}

class FlooviesApp extends StatelessWidget {
  FlooviesApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeModeCubit>(
          create: (context) => ic.getIt(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => ic.getIt(),
        ),
      ],
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Floovies',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
