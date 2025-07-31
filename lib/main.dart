import 'package:cubit_demo/details_view/details_view.dart';
import 'package:cubit_demo/home_page/home_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: HomePageView.routeName,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomePageCubit(const HomePageState()),
          )
        ],
        child: const HomePageView(),
      ),
    );
  }

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        HomePageView.routeName: HomePageView.builder,
        DetailsView.routeName: DetailsView.builder,
      };
}
