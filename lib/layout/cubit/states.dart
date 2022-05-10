abstract class NewsState {}

class NewsInitialState extends NewsState {}

class NewsChangeBottomNavigationBarState extends NewsState {}

class NewsBusinessLoadingState extends NewsState {}

class NewsGetBusinessSuccessState extends NewsState {}

class NewsGetBusinessErrorState extends NewsState {
  final String? error;
  NewsGetBusinessErrorState(this.error);
}

class NewsSportLoadingState extends NewsState {}

class NewsGetSportSuccessState extends NewsState {}

class NewsGetSportErrorState extends NewsState {
  final String? error;
  NewsGetSportErrorState(this.error);
}

class NewsScienceLoadingState extends NewsState {}

class NewsGetScienceSuccessState extends NewsState {}

class NewsGetScienceErrorState extends NewsState {
  final String? error;
  NewsGetScienceErrorState(this.error);
}

class NewsChangeThemeState extends NewsState {}

class NewsGetSearchLoadingState extends NewsState {}

class NewsGetSearchSuccessState extends NewsState {}

class NewsGetSearchErrorState extends NewsState {
  final String error;

  NewsGetSearchErrorState(this.error);
}
