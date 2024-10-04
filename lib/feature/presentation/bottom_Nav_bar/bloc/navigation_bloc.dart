import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial(index: 0)) {


    on<NavigateTo>((event, emit){
      emit(NavigationInitial(index: event.index));
    });

  }
}
