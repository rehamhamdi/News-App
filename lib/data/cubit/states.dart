class NewsStates {}

class NewsInitialState extends NewsStates {}

class ChangeBottomNavigationBar extends NewsStates {}

class GetBusinessDataLoading extends NewsStates{}

class GetBusinessDataSuccessfully extends NewsStates{}

class GetBusinessDataError extends NewsStates{
  final String err;
  GetBusinessDataError(this.err);
}

class GetGeneralDataLoading extends NewsStates{}

class GetGeneralDataSuccessfully extends NewsStates{}

class GetGeneralDataError extends NewsStates{
  final String err;
  GetGeneralDataError(this.err);
}


class GetSportsDataLoading extends NewsStates{}

class GetSportsDataSuccessfully extends NewsStates{}

class GetSportsDataError extends NewsStates{
  final String err;
  GetSportsDataError(this.err);
}




