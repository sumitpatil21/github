part of 'home_page_view.dart';

class HomePageState extends Equatable{

  final String name;

  const HomePageState({
    this.name = "Bhavesh",
  });

  @override
  List<Object?> get props => [name];

  HomePageState copyWith({
    String? name,
  }) {
    return HomePageState(
      name: name ?? this.name,
    );
  }
}