import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdmanewsclientflutter/common/time-extension.dart';
import 'package:sdmanewsclientflutter/common_widget/empty_page.dart';
import 'package:sdmanewsclientflutter/common_widget/error_page.dart';
import 'package:sdmanewsclientflutter/features/news/cubit/news_details/news_details_cubit.dart';
import 'package:sdmanewsclientflutter/features/news/model/news_model.dart';
import 'package:sdmanewsclientflutter/features/news/widget/shimmer_details.dart';

// NewsModel item = NewsModel(
//   id: 0,
//   imageUrl:
//       "https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/4f39/live/da2299b0-4375-11ef-b74c-bb483a802c97.jpg.webp",
//   title:
//       "لسودان: هل يبدو المشهد متناقضا بين مؤتمرات السلام وحدة المعارك على الأرض؟",
//   updateTime: "2024-07-14T11:50:19.213921Z",
//   content: """
//             لم تنقطع المؤتمرات الدولية أو الإقليمية، التي هدفت إلى إيجاد حل للأزمة السودانية ،على مدى السنوات الماضية، لكن الشهر الجاري شهد ومايزال يشهد زخما، وتتاليا لهذه المؤتمرات، التي تسعى جميعها لوقف الحرب السودانية المدمرة، التي صادف الإثنين 15 نيسان/أبريل الماضي، الذكرى الأولى لاندلاعها بين الجيش السوداني وقوات الدعم السريع.
//
//             غير أن الملفت هو أنه ورغم توالي المؤتمرات، على مدى الشهر الجاري، فإن الواقع على الأرض لايوحي بحديث السلام وإيقاف الحرب، الذي يجري تداوله في تلك المؤتمرات، في وقت يبدو فيه المدنيون السودانيون، الأكثر تضررا من صراع طرفين عسكريين من أجل السلطة، وفق ما يقوله الكثير من المواطنين السودانيين.لا جدية
//
//             آخر تلك المؤتمرات والمفاوضات، هي تلك التي انطلقت في جنيف بسويسرا، في 12 تموز/يوليو الجاري، وسميت بـ "محادثات جنيف غير المباشرة" لسلام السودان، وتتم برعاية أممية، عبر مبعوث الأمم المتحدة إلى السودان، رمطان لعمامرة.
//
//             ويوم الإثنين 15 تموز/ يوليو الجاري، اُختتم مؤتمر آخر، هو مؤتمر القوى السياسية السودانية، الذي انعقد في العاصمة الإثيوبية أديس أبابا، برعاية الاتحاد الإفريقي، وقبله انعقد في العاصمة المصرية القاهرة، مؤتمر القوى السياسية والمدنية السودانية، على مدي يومين، هما السادس والسابع من تموز/يوليو الجاري، وناقش إمكانية وقف الحرب في السودان، في وقت أفادت فيه أنباء بأن بعض القوى السياسية، رفضت التوقيع على بيانه الختامي.
//
//             وبينما تبدو الأهداف الرئيسية، لكل تلك المؤتمرات،متلخصة في وقف الحرب وإيصال المساعدات الإنسانية للنازحين، بعد تزايد أعدادهم بصورة كبيرة، نتيجة لاتساع رقعة الحرب، فإن الواقع على الأرض، يُنبئ بعكس ذلك، إذ يواصل الطرفان العسكريان المتقاتلان عملياتهما العسكرية دون هوادة.
//
//             وفي إبراز للتناقض بين ما يجري، من حديث مؤتمرات إحلال السلام في السودان، والواقع على الأرض، كان لافتا ذلك التصريح الذي نُقل عن عضو مجلس السيادة الانتقالي السوداني، الفريق أول ركن ياسر عبد الرحمن العطا، الذي قال إن التفاوض مع "قوات الدعم السريع"، هو مجرد تأجيل للمعركة، موضحا أن "التفاوض يعني الدخول في مشاكل أمنية وسياسية". وأضاف "لن يكون هناك هدنة، ولو استمر القتال 100 سنة".
//
//             الآمال معلقة على جنيف
//
//             على الجانب الآخر يعلق كثير من المراقبين في السودان، آمالا أكبر على تلك المحادثات الأخيرة ،التي انطلقت في جنيف برعاية أممية، ويردون ذلك إلى أن الوسيط في هذه الحالة وهو الأمم المتحدة، ربما تحظى بقبول لدى طرفي الصراع، بما يمكنها من احداث اختراق، وهم يرون أنها ورغم تركيزها ،على إيصال المساعدات الإنسانية أولا، إلا أنها ربما تتفادى الخلاف الشائك بشأن القضايا العسكرية، قبل أن تحقق اختراقا في المجال الإنساني قد ينتقل بدوره إلى قضية وقف الحرب، والتي يتفق الجميع على أنها معقدة للغاية، ولايمكن الاتفاق على إيقافها بين يوم وليلة.
//
//             وأدت الحرب السودانية، التي مر عليها الآن أكثر من عام، إلى قتل وجرح عشرات الألاف من السودانيين، بينهم نحو 15 ألف شخص، في مدينة الجنينة عاصمة ولاية غرب دارفور وحدها، وفق خبراء بالأمم المتحدة، ورغم أن الحصيلة الحقيقية لضحايا تلك الحرب، ماتزال غير مؤكدة حتى الآن، إلا أن عدد قتلاها قد يصل إلى "150 ألفا" وفقا للمبعوث الأميركي الخاص للسودان.
//
//             وعلى صعيد المأساة الإنسانية للنازحين واللاجئين، فإن التقديرات تشير إلى أن الحرب في السودان، أدت إلى أكثر من عشرة ملايين نازح داخل البلاد، في حين دفعت حوالي مليونين ونصف مليون شخص، إلى الفرار إلى الدول المجاورة.
//
//             هل يبدو التناقض واضحا بين توالي المؤتمرات الخاصة بسلام السودان واستمرار المعارك على الأرض؟
//             لماذا تفشل المؤتمرات التي ترعاها دول جوار السودان في التوصل إلى حل للأزمة؟
//             هل تتفقون مع من يرون أن مفاوضات جنيف برعاية أممية هي التي ستحقق الاختراق؟
//             هل يحتاج الأمر إلى ضغوط أقوى من قوى دولية على الطرفين المتحاربين لوقف الحرب؟
//             لماذا يبدو الطرفان المتحاربان في تجاهل تام لمأساة المدنيين النازحين والجوعى؟
//             هل تتفقون مع من يرون أن استمرار الحرب في السودان مرهون فقط بالطموحات السياسية للبرهان وحميدتي؟.
//
//         """
//       .trim(),
// );

class NewsDetailsPage extends StatefulWidget {
  const NewsDetailsPage({super.key, required this.id});

  final int id;

  static route(int id) => MaterialPageRoute(
        builder: (context) => NewsDetailsPage(
          id: id,
        ),
      );

  @override
  State<NewsDetailsPage> createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  bool isLoading = true;
  String errorMessage = "";
  NewsModel? item;

  @override
  void initState() {
    getNewsDetailsById();
    super.initState();
  }

  void getNewsDetailsById() {
    context.read<NewsDetailsCubit>().getNewsDetailsById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تفاصيل الخبر"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: BlocConsumer<NewsDetailsCubit, NewsDetailsState>(
        listener: (context, state) {
          if (state is NewsDetailsLoadingState) {
            setState(() {
              isLoading = true;
            });
          } else if (state is NewsDetailsErrorState) {
            setState(() {
              isLoading = false;
              errorMessage = state.errorMessage;
              if (kDebugMode) {
                print(state.errorMessage);
              }
            });
          } else if (state is NewsGetDetailsApiResultState) {
            setState(() {
              isLoading = false;
              item = state.item;
            });
          } else if (state is NewsDetailsErrorApiResultState) {
            setState(() {
              isLoading = false;
              errorMessage = state.errorResponse.message;
              if (kDebugMode) {
                print(state.errorResponse);
              }
            });
          }
        },
        builder: (context, state) {
          return (isLoading)?
              const ShimmerDetails()
              :(errorMessage.isNotEmpty)
              ? ErrorPage(
                  errorMessage: errorMessage,
                  onRetry: () {
                    getNewsDetailsById();
                  },
                )
              : (item == null)
                  ? const EmptyPage()
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: item!.imageUrl,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Image.asset(
                              "assets/img/pictures_error.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  item!.title,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                Text(
                                  TimeExtension.getDateInBeautyWay(
                                      item!.updateTime),
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700),
                                  textDirection: TextDirection.ltr,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  item!.content,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
