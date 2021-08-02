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
  }) : super(const HomeState());

  final HomeRepository homeRepository;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetMoreImagesRequested) {
      yield* _mapGetMoreImagesRequestedToState();
    }
  }

  Stream<HomeState> _mapGetMoreImagesRequestedToState() async* {
    yield state.copyWith(status: HomeStatus.loading);
    try {
      final imagesPaginationResponse =
          await homeRepository.getImagesPagination(page: state.page + 1);
      yield state.copyWith(
        status: HomeStatus.success,
        page: imagesPaginationResponse.page,
        images: imagesPaginationResponse.data.toList(),
      );
    } on Exception {
      yield state.copyWith(status: HomeStatus.failure);
    }
  }
}
