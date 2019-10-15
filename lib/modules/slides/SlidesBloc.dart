import 'package:bloc/bloc.dart';
import 'package:vtah_flutter_intro/ui/navigation/NavigationDirection.dart';

import 'SlidesEvent.dart';

enum Slide { PAGE1, PAGE2, PAGE3, PAGE4, PAGE5, PAGE6, PAGE7, PAGE8 }

class SlideDescription {
  final int index;
  final Slide slide;
  final NavigationDirection direction;

  const SlideDescription(this.index, this.slide, this.direction);
}

class SlidesBloc extends Bloc<SlidesEvent, SlideDescription> {
  final List<Slide> pages = Slide.values;

  @override
  SlideDescription get initialState =>
      _generateSlideDescription(0, NavigationDirection.FORWARD);

  @override
  Stream<SlideDescription> mapEventToState(SlidesEvent event) async* {
    switch (event) {
      case SlidesEvent.forward:
        yield _generateSlideDescription(
            currentState.index + 1, NavigationDirection.FORWARD);
        break;
      case SlidesEvent.previous:
        yield _generateSlideDescription(
            currentState.index - 1, NavigationDirection.BACKWARD);
        break;
    }
  }

  SlideDescription _generateSlideDescription(
      int index, NavigationDirection direction) {
    return SlideDescription(index, pages[index], direction);
  }
}
