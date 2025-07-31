part of 'home_page_view.dart';

class HomePageCubit extends Cubit<HomePageState>{
  HomePageCubit(super.initialState);

  changeName({required String name}){
    emit(state.copyWith(name: name));
  }

}