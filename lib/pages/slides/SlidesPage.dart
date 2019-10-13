import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesBloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesEvent.dart';
import 'package:vtah_flutter_intro/pages/navigation/NavigationKeyboardDetector.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage4.dart';
import 'package:vtah_flutter_intro/ui/switcher/SlideSwitcherWidget.dart';

import 'SlidesPage1.dart';
import 'SlidesPage2.dart';
import 'SlidesPage3.dart';

class SlidesPage extends StatelessWidget {
  final Widget child;

  const SlidesPage({this.child});

  @override
  Widget build(BuildContext context) {
    final SlidesBloc slidesBloc = BlocProvider.of<SlidesBloc>(context);

    return BlocBuilder<SlidesBloc, SlideDescription>(
        condition: (previousState, newState) =>
            previousState.slide != newState.slide,
        builder: (context, description) => NavigationKeyboardDetector(
              page: WidgetSlideSwitcher(
                child: _generateWidgetFromDescription(description),
                direction: description.direction,
              ),
              onForward: () =>
                  _onForwardNavigation(context, description, slidesBloc),
              onBackward: () => _onBackwardNavigation(context, slidesBloc),
            ));
  }

  _onForwardNavigation(BuildContext context, SlideDescription description,
      SlidesBloc slidesBloc) {
    slidesBloc.dispatch(SlidesEvent.forward);
  }

  _onBackwardNavigation(BuildContext context, SlidesBloc slidesBloc) {
    slidesBloc.dispatch(SlidesEvent.previous);
  }

  Widget _generateWidgetFromDescription(SlideDescription description) {
    switch (description.slide) {
      case Slide.PAGE1:
        return SlidesPage1();
      case Slide.PAGE2:
        return SlidesPage2();
      case Slide.PAGE3:
        return SlidesPage3();
      case Slide.PAGE4:
        return SlidesPage4();
      default:
        return null;
    }
  }
}
