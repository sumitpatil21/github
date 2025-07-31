import 'package:cubit_demo/details_view/details_view.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_cubit.dart';

part 'home_page_state.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  static const String routeName = "/home_page_name";

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(const HomePageState()),
      child: const HomePageView(),
    );
  }

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Demo"),
      ),
      body: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return Center(
            child: InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(DetailsView.routeName,arguments: 123456);
                  // context.read<HomePageCubit>().changeName(name: "My name: Bhavesh");
                },
                child: Text(state.name)),
          );
        },
      ),
    );
  }
}
