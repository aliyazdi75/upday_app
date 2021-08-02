import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:upday_app/data/models/image/index.dart';
import 'package:upday_app/data/repositories/home/index.dart';

part 'event.dart';
part 'state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.homeRepository,
    required this.query,
  }) : super(HomeState(query: query));

  final HomeRepository homeRepository;
  final String query;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetImagesRequested) {
      yield state.copyWith(status: HomeStatus.loading);
      yield* _mapGetImagesRequestedToState();
    } else if (event is GetMoreImagesRequested) {
      yield state.copyWith(status: HomeStatus.moreLoading);
      yield* _mapGetImagesRequestedToState();
    }
  }

  Stream<HomeState> _mapGetImagesRequestedToState() async* {
    try {
      final imagesPaginationResponse = await homeRepository.getImagesPagination(
        query: state.query,
        page: state.page + 1,
      );
      yield state.copyWith(
        status: HomeStatus.success,
        page: imagesPaginationResponse.page,
        hasMoreData: imagesPaginationResponse.data.isNotEmpty,
        images: imagesPaginationResponse.data.toList(),
      );
    } on Exception {
      yield state.copyWith(status: HomeStatus.failure);
    }
  }
}
