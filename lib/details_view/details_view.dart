import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_cubit.dart';

part 'details_state.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  static const String routeName = "/details_view";

  static Widget builder(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as int;
    print("GetArguments: $arguments");

    return BlocProvider(
      create: (context) => DetailsCubit(const DetailsState(name: "Samsung A33")),
      child: const DetailsView(),
    );
  }

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details View"),
      ),
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          return Center(
            child: InkWell(
                onTap: () {
                  context.read<DetailsCubit>().setProductName(name: "Samsung S22 Ultra");
                },
                child: Text("Product Name : ${state.name}")),
          );
        },
      ),
    );
  }
}
