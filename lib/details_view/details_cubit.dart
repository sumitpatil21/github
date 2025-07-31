part of 'details_view.dart';

class DetailsCubit extends Cubit<DetailsState>{
  DetailsCubit(super.initialState);

  setProductName({required String name}){
    emit(state.copyWith(name: name));
  }
}