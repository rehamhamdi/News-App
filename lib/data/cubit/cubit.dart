import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/data/cubit/states.dart';
import 'package:news/data/services/api_services.dart';
import 'package:news/ui/screens/business_screen.dart';
import 'package:news/ui/screens/general_news_screen.dart';
import 'package:news/ui/screens/sports_screen.dart';
import 'package:news/utils/app_constants.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);

  //BottomNavigationBar index
  int currentIndex = 0;

  List<Widget> screens = [
    const BusinessScreen(),
    const GeneralNewsScreen(),
    const SportsScreen()
  ];
  void changeBottomNavBar(index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBar());
  }

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
        label: "Business",
        icon: Icon(
          Icons.business_center_rounded,
          color: Colors.white,
        )),
    const BottomNavigationBarItem(
        label: "General",
        icon: Icon(
          Icons.now_widgets_rounded,
          color: Colors.white,
        )),
    const BottomNavigationBarItem(
        label: "Sports",
        icon: Icon(
          Icons.sports_baseball,
          color: Colors.white,
        )),
  ];
  List<dynamic> business = [];
  void getBusinessNews() {
    emit(GetBusinessDataLoading());
    ApiServices.getData(url: AppConstants.topHeadline, query: {
      "apiKey": AppConstants.apiKey,
      "country": "eg",
      "category": "business",
    }).then((value) {
      //  debugPrint(value.data["articles"][0]["title"]);
      business = value.data["articles"];
      emit(GetBusinessDataSuccessfully());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetBusinessDataError(err.toString()));
    });
  }

  List<dynamic> general = [];
  void getGeneralNews() {
    emit(GetGeneralDataLoading());
    ApiServices.getData(url: AppConstants.topHeadline, query: {
      "apiKey": AppConstants.apiKey,
      "country": "eg",
      "category": "general",
    }).then((value) {
      //  debugPrint(value.data["articles"][0]["title"]);
      general = value.data["articles"];
      emit(GetGeneralDataSuccessfully());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetGeneralDataError(err.toString()));
    });
  }

  List<dynamic> sports = [];
  void getSportsNews() {
    emit(GetSportsDataLoading());
    ApiServices.getData(url: AppConstants.topHeadline, query: {
      "apiKey": AppConstants.apiKey,
      "country": "eg",
      "category": "sports",
    }).then((value) {
      //  debugPrint(value.data["articles"][0]["title"]);
      sports = value.data["articles"];
      emit(GetSportsDataSuccessfully());
    }).catchError((err) {
      debugPrint(err.toString());
      emit(GetSportsDataError(err.toString()));
    });
  }
}
