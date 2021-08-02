import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upday_app/blocs/home/bloc.dart';
import 'package:upday_app/data/constants/index.dart';
import 'package:upday_app/data/repositories/home/index.dart';

import 'components/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final HomeRepository homeRepository = HomeRepository();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => homeRepository,
        child: DefaultTabController(
          length: queries.length,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  floating: true,
                  forceElevated: true,
                  pinned: true,
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: List.generate(
                      queries.length,
                      (int index) => Tab(text: queries[index]),
                    ),
                  ),
                  title: const Text('Upday Application'),
                ),
              ];
            },
            body: TabBarView(
              children: List.generate(
                queries.length,
                (int index) {
                  return BlocProvider(
                    create: (context) => HomeBloc(
                      homeRepository: homeRepository,
                      query: queries[index],
                    ),
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
                                  content:
                                      Text('Failure due to getting Images!'),
                                ),
                              );
                            break;
                          default:
                            break;
                        }
                      },
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state.status == HomeStatus.initial) {
                            BlocProvider.of<HomeBloc>(context)
                                .add(const GetImagesRequested());
                          }
                          return NotificationListener<ScrollNotification>(
                            onNotification: (ScrollNotification scrollInfo) {
                              if (state.hasMoreData &&
                                  state.status != HomeStatus.moreLoading &&
                                  scrollInfo.metrics.extentAfter < 500) {
                                BlocProvider.of<HomeBloc>(context)
                                    .add(const GetMoreImagesRequested());
                              }
                              return true;
                            },
                            child: CustomScrollView(
                              slivers: [
                                if (!(state.status == HomeStatus.success ||
                                    state.status == HomeStatus.moreLoading))
                                  SliverToBoxAdapter(
                                    child: Center(
                                      child: Text(
                                        state.status == HomeStatus.loading
                                            ? 'Loading...'
                                            : 'Failed!',
                                      ),
                                    ),
                                  )
                                else
                                  SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int imageIndex) {
                                        if (imageIndex ==
                                                state.images!.length &&
                                            state.hasMoreData &&
                                            state.status ==
                                                HomeStatus.moreLoading) {
                                          return Center(
                                            child: Container(
                                              child:
                                                  const CircularProgressIndicator(),
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                            ),
                                          );
                                        }
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ImageCard(
                                              image: state.images![imageIndex]),
                                        );
                                      },
                                      childCount: state.hasMoreData &&
                                              state.status ==
                                                  HomeStatus.moreLoading
                                          ? state.images!.length + 1
                                          : state.images!.length,
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
