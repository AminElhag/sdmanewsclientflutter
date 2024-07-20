import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sdmanewsclientflutter/common/globs.dart';
import 'package:sdmanewsclientflutter/common/service_call.dart';
import 'package:sdmanewsclientflutter/common_model/error_response.dart';
import 'package:sdmanewsclientflutter/features/news/model/short_news_model.dart';

part 'news_list_state.dart';

class NewsListCubit extends Cubit<NewsListState> {
  NewsListCubit() : super(NewsListInitial());

  void getLastNewsList(
    int page,
  ) {
    if(page == 0){
      emit(NewsListHUDState());
    }
    try {
      ServiceCall.get(
        {"page": page.toString(), "page_size": "10"},
        SVKey.getLastNewsList,
        withFailure: (response) async {
          emit(NewsListErrorState(response));
        },
        withSuccess: (response) async {
          print(response.body);
          if (response.statusCode == HttpStatus.ok) {
            Iterable l = json.decode(response.body);
            List<ShortNewsModel> nps = List<ShortNewsModel>.from(
                l.map((model) => ShortNewsModel.fromJson(model)));
            emit(NewsListGetListApiResultState(items: nps));
            emit(NewsListInitial());
          } else {
            emit(NewsListErrorApiResultState(
                ErrorResponse.fromJson(jsonDecode(response.body))));
          }
        },
      );
    } catch (e) {
      emit(NewsListErrorState(e.toString()));
    }
  }
}
