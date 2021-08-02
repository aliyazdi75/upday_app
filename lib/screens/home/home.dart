import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upday_app/blocs/home/bloc.dart';
import 'package:upday_app/data/repositories/home/index.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeRepository homeRepository = HomeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => homeRepository,
        child: BlocProvider(
          create: (context) => HomeBloc(homeRepository: homeRepository),
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              switch (state.status) {
                case HomeStatus.success:
                  break;
                case HomeStatus.failure:
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text('Failure due to getting Images!'),
                      ),
                    );
                  break;
                default:
                  break;
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('asd'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
