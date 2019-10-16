import 'package:bloc/bloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideDescription.dart';
import 'package:vtah_flutter_intro/ui/navigation/NavigationDirection.dart';

import 'SlidesEvent.dart';

enum Slide {
  PAGE1,
  PAGE2,
  PAGE3,
  PAGE4,
  PAGE5,
  PAGE6,
  PAGE7,
  PAGE8,
  PAGE9,
  PAGE10,
  PAGE11,
  PAGE12,
  PAGE13,
  PAGE14,
  PAGE15,
  PAGE16,
  PAGE17,
  PAGE18,
  PAGE19,
  PAGE20,
  PAGE21,
  PAGE22,
  PAGE23,
  PAGE24,
  PAGE25,
}

class SlidesBloc extends Bloc<SlidesAction, SlideDescription> {
  final List<Slide> pages = Slide.values;

  @override
  SlideDescription get initialState =>
      _generateSlideDescription(0, NavigationDirection.FORWARD);

  @override
  Stream<SlideDescription> mapEventToState(SlidesAction action) async* {
    switch (action.event) {
      case SlidesEvent.forward:
        yield _generateSlideDescription(
            currentState.index + 1, NavigationDirection.FORWARD);
        break;
      case SlidesEvent.previous:
        yield _generateSlideDescription(
            currentState.index - 1, NavigationDirection.BACKWARD);
        break;
      case SlidesEvent.goto:
        yield _generateSlideDescription(
            action.slide - 1,
            action.slide - 1 >= currentState.index
                ? NavigationDirection.FORWARD
                : NavigationDirection.BACKWARD);
    }
  }

  SlideDescription _generateSlideDescription(
      int index, NavigationDirection direction) {
    return SlideDescription(
        index: index,
        slide: pages[index],
        total: pages.length,
        direction: direction);
  }
}
