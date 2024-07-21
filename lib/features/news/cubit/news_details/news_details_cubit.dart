import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sdmanewsclientflutter/common/globs.dart';
import 'package:sdmanewsclientflutter/common/service_call.dart';
import 'package:sdmanewsclientflutter/common_model/error_response.dart';
import 'package:sdmanewsclientflutter/features/news/model/news_model.dart';

part 'news_details_state.dart';

class NewsDetailsCubit extends Cubit<NewsDetailsState> {
  NewsDetailsCubit() : super(NewsDetailsInitial());

  void getNewsDetailsById(int id) {
    emit(NewsDetailsLoadingState());
    try {
      ServiceCall.get(
        {"news_id": id.toString()},
        SVKey.getNewsDetailsById,
        withFailure: (response) async {
          emit(NewsDetailsErrorState(response));
        },
        withSuccess: (response) async {
          if (response.statusCode == HttpStatus.ok) {
            emit(NewsGetDetailsApiResultState(
                item: NewsModel.fromJson(json.decode(response.body))));
            emit(NewsDetailsInitial());
          } else {
            emit(NewsDetailsErrorApiResultState(
                ErrorResponse.fromJson(json.decode(response.body))));
          }
        },
      );
    } catch (e) {
      emit(NewsDetailsErrorState(e.toString()));
    }
  }
}
