import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../Models/countrymodel.dart';
import '../../Repositories/countryrepo.dart';

part 'all_countries_state.dart';

class AllCountriesCubit extends Cubit<AllCountriesState> {
  AllCountriesCubit() : super(AllCountriesInitial());

  getAllCountres() {
    emit(AllCountriesLoading());

    Countryrepo().getcountry().then(
      (value) {
        if (value != null) {
          emit(AllCountriesSuccess(ourresponse: value));
        } else {
          emit(AllCountriesError());
        }
      },
    );
  }
}
