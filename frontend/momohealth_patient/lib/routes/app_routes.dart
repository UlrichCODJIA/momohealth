import '/presentation/home_screen/home_screen.dart';
import '/presentation/home_screen/binding/home_binding.dart';
import '/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import '/presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import '/presentation/search_one_tab_container_screen/search_one_tab_container_screen.dart';
import '/presentation/search_one_tab_container_screen/binding/search_one_tab_container_binding.dart';
import '/presentation/get_schedule_screen/get_schedule_screen.dart';
import '/presentation/get_schedule_screen/binding/get_schedule_binding.dart';
import '/presentation/confirmation_screen/confirmation_screen.dart';
import '/presentation/confirmation_screen/binding/confirmation_binding.dart';
import '/presentation/subscription_screen/subscription_screen.dart';
import '/presentation/subscription_screen/binding/subscription_binding.dart';
import '/presentation/health_news_one_screen/health_news_one_screen.dart';
import '/presentation/health_news_one_screen/binding/health_news_one_binding.dart';
import '/presentation/health_news_screen/health_news_screen.dart';
import '/presentation/health_news_screen/binding/health_news_binding.dart';
import '/presentation/hospital_tab_container_screen/hospital_tab_container_screen.dart';
import '/presentation/hospital_tab_container_screen/binding/hospital_tab_container_binding.dart';
import '/presentation/sign_in_screen/sign_in_screen.dart';
import '/presentation/sign_in_screen/binding/sign_in_binding.dart';
import '/presentation/sign_up_screen/sign_up_screen.dart';
import '/presentation/sign_up_screen/binding/sign_up_binding.dart';
import '/presentation/pill_remainder_screen/pill_remainder_screen.dart';
import '/presentation/pill_remainder_screen/binding/pill_remainder_binding.dart';
import '/presentation/help_tab_container_screen/help_tab_container_screen.dart';
import '/presentation/help_tab_container_screen/binding/help_tab_container_binding.dart';
import '/presentation/disease_screen/disease_screen.dart';
import '/presentation/disease_screen/binding/disease_binding.dart';
import '/presentation/health_condition_screen/health_condition_screen.dart';
import '/presentation/health_condition_screen/binding/health_condition_binding.dart';
import '/presentation/profile_screen/profile_screen.dart';
import '/presentation/profile_screen/binding/profile_binding.dart';
import '/presentation/video_call_one_screen/video_call_one_screen.dart';
import '/presentation/video_call_one_screen/binding/video_call_one_binding.dart';
import '/presentation/video_call_two_screen/video_call_two_screen.dart';
import '/presentation/video_call_two_screen/binding/video_call_two_binding.dart';
import '/presentation/video_call_screen/video_call_screen.dart';
import '/presentation/video_call_screen/binding/video_call_binding.dart';
import '/presentation/message_screen/message_screen.dart';
import '/presentation/message_screen/binding/message_binding.dart';
import '/presentation/call_rating_screen/call_rating_screen.dart';
import '/presentation/call_rating_screen/binding/call_rating_binding.dart';
import '/presentation/notification_screen/notification_one_screen.dart';
import '/presentation/notification_screen/binding/notification_one_binding.dart';
import '/presentation/report_screen/report_screen.dart';
import '/presentation/report_screen/binding/report_binding.dart';
import '/presentation/message_one_screen/message_one_screen.dart';
import '/presentation/message_one_screen/binding/message_one_binding.dart';
import '/presentation/app_navigation_screen/app_navigation_screen.dart';
import '/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String searchOnePage = '/search_one_page';

  static const String searchOneTabContainerScreen =
      '/search_one_tab_container_screen';

  static const String getScheduleScreen = '/get_schedule_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String healthNewsOneScreen = '/health_news_one_screen';

  static const String healthNewsScreen = '/health_news_screen';

  static const String hospitalPage = '/hospital_page';

  static const String hospitalTabContainerScreen =
      '/hospital_tab_container_screen';

  static const String ambulancePage = '/ambulance_page';

  static const String doctorPage = '/doctor_page';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String pillRemainderScreen = '/pill_remainder_screen';

  static const String helpPage = '/help_page';

  static const String helpTabContainerScreen = '/help_tab_container_screen';

  static const String diseaseOnePage = '/disease_one_page';

  static const String diseaseScreen = '/disease_screen';

  static const String healthConditionScreen = '/health_condition_screen';

  static const String profileScreen = '/profile_screen';

  static const String videoCallOneScreen = '/video_call_one_screen';

  static const String videoCallTwoScreen = '/video_call_two_screen';

  static const String videoCallScreen = '/video_call_screen';

  static const String messageScreen = '/message_screen';

  static const String callRatingScreen = '/call_rating_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String reportScreen = '/report_screen';

  static const String notificationScreen = '/notification_screen';

  static const String messageOneScreen = '/message_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => const SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchOneTabContainerScreen,
      page: () => const SearchOneTabContainerScreen(),
      bindings: [
        SearchOneTabContainerBinding(),
      ],
    ),
    GetPage(
      name: getScheduleScreen,
      page: () => const GetScheduleScreen(),
      bindings: [
        GetScheduleBinding(),
      ],
    ),
    GetPage(
      name: confirmationScreen,
      page: () => const ConfirmationScreen(),
      bindings: [
        ConfirmationBinding(),
      ],
    ),
    GetPage(
      name: subscriptionScreen,
      page: () => const SubscriptionScreen(),
      bindings: [
        SubscriptionBinding(),
      ],
    ),
    GetPage(
      name: healthNewsOneScreen,
      page: () => const HealthNewsOneScreen(),
      bindings: [
        HealthNewsOneBinding(),
      ],
    ),
    GetPage(
      name: healthNewsScreen,
      page: () => const HealthNewsScreen(),
      bindings: [
        HealthNewsBinding(),
      ],
    ),
    GetPage(
      name: hospitalTabContainerScreen,
      page: () => const HospitalTabContainerScreen(),
      bindings: [
        HospitalTabContainerBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpTwoScreen,
      page: () => SignUpTwoScreen(),
      bindings: [
        SignUpTwoBinding(),
      ],
    ),
    GetPage(
      name: pillRemainderScreen,
      page: () => const PillRemainderScreen(),
      bindings: [
        PillRemainderBinding(),
      ],
    ),
    GetPage(
      name: helpTabContainerScreen,
      page: () => const HelpTabContainerScreen(),
      bindings: [
        HelpTabContainerBinding(),
      ],
    ),
    GetPage(
      name: diseaseScreen,
      page: () => const DiseaseScreen(),
      bindings: [
        DiseaseBinding(),
      ],
    ),
    GetPage(
      name: healthConditionScreen,
      page: () => const HealthConditionScreen(),
      bindings: [
        HealthConditionBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    // GetPage(
    //   name: videoCallOneScreen,
    //   page: () => const VideoCallOneScreen(),
    //   bindings: [
    //     VideoCallOneBinding(),
    //   ],
    // ),
    GetPage(
      name: videoCallTwoScreen,
      page: () => const VideoCallTwoScreen(),
      bindings: [
        VideoCallTwoBinding(),
      ],
    ),
    // GetPage(
    //   name: videoCallScreen,
    //   page: () => const VideoCallScreen(),
    //   bindings: [
    //     VideoCallBinding(),
    //   ],
    // ),
    GetPage(
      name: messageScreen,
      page: () => const MessageScreen(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: callRatingScreen,
      page: () => const CallRatingScreen(),
      bindings: [
        CallRatingBinding(),
      ],
    ),
    GetPage(
      name: notificationOneScreen,
      page: () => const NotificationScreen(),
      bindings: [
        NotificationOneBinding(),
      ],
    ),
    GetPage(
      name: reportScreen,
      page: () => const ReportScreen(),
      bindings: [
        ReportBinding(),
      ],
    ),
    GetPage(
      name: messageOneScreen,
      page: () => const MessageOneScreen(),
      bindings: [
        MessageOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => const AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
