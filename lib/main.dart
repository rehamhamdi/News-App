import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/data/cubit/bloc_observer.dart';
import 'package:news/data/cubit/theme_cubit.dart';
import 'package:news/data/services/api_services.dart';
import 'package:news/ui/screens/home_layout.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  ApiServices.intit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, themeState) {
          return MaterialApp(
            home: const HomeLayout(),
            debugShowCheckedModeBanner: false,
            theme: themeState,
          );
        },
      ),
    );
  }
}
