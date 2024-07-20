import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdmanewsclientflutter/common_widget/error_page.dart';
import 'package:sdmanewsclientflutter/features/news/cubit/news_list/news_list_cubit.dart';
import 'package:sdmanewsclientflutter/features/news/model/short_news_model.dart';
import 'package:sdmanewsclientflutter/features/news/widget/shimmer_list.dart';
import 'package:sdmanewsclientflutter/features/news/widget/short_news_item.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const NewsListPage(),
      );

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  List<ShortNewsModel> apiList = [];
  bool isLoading = true;
  String errorMessage = "";
  int page = 0;
  late ScrollController _controller;
  bool isRequesting = false;
  bool isEndOfPage = false;
  bool isEndOfList = false;

  @override
  void initState() {
    context.read<NewsListCubit>().getLastNewsList(page);
    _controller = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  void _onScroll() async {
    final offset = _controller.offset;
    final minOffset = _controller.position.minScrollExtent;
    final maxOffset = _controller.position.maxScrollExtent;
    final isOutOfRange = _controller.position.outOfRange;
    if (offset >= maxOffset && !isOutOfRange) {
      if (isRequesting) {
        return;
      }
      if (isEndOfPage) {
        return;
      }
      setState(() {
        isRequesting = true;
      });
      context.read<NewsListCubit>().getLastNewsList(page);
    } else if (offset <= minOffset && !isOutOfRange) {
      isEndOfList = false;
    } else {
      isEndOfList = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("سدما"),
      ),
      body: BlocConsumer<NewsListCubit, NewsListState>(
        listener: (context, state) {
          if (state is NewsListHUDState) {
            setState(() {
              isLoading = true;
            });
          } else if (state is NewsListErrorState) {
            setState(() {
              isLoading = false;
              errorMessage = state.errorMessage;
              isRequesting = false;
              page = 0;
            });
          } else if (state is NewsListGetListApiResultState) {
            setState(() {
              isLoading = false;
              if (page == 0) {
                apiList.clear();
              }
              if (state.items.isEmpty) {
                isEndOfPage = true;
              }
              apiList.addAll(state.items);
              isRequesting = false;
              page++;
            });
          } else if (state is NewsListErrorApiResultState) {
            setState(() {
              isLoading = false;
              errorMessage = state.errorResponse.message;
              isRequesting = false;
              page = 0;
              if (kDebugMode) {
                print(state);
              }
            });
          }
        },
        builder: (context, state) {
          return (isLoading)
              ? const ShimmerList()
              : (errorMessage.isNotEmpty)
                  ? ErrorPage(
                      errorMessage: errorMessage,
                      onRetry: () {
                        setState(() {
                          page = 0;
                          isEndOfPage = false;
                          context.read<NewsListCubit>().getLastNewsList(page);
                        });
                      },
                    )
                  : Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            controller: _controller,
                            itemCount: apiList.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item = apiList[index];
                              if (index == apiList.length) {
                                return const Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 40),
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }
                              return ShortNewsItem(
                                item: item,
                                onPressed: () {},
                              );
                            },
                          ),
                        ),
                        if (isRequesting)
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 40),
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                      ],
                    );
        },
      ),
    );
  }
}
