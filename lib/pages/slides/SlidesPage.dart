import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideDescription.dart';
import 'package:vtah_flutter_intro/modules/slides/SlideProgression.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesBloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesEvent.dart';
import 'package:vtah_flutter_intro/pages/navigation/NavigationDialog.dart';
import 'package:vtah_flutter_intro/pages/navigation/NavigationKeyboardDetector.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage10.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage11.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage12.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage13.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage14.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage15.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage16.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage17.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage18.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage19.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage20.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage21.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage22.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage23.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage24.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage25.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage4.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage5.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage6.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage7.dart';
import 'package:vtah_flutter_intro/pages/slides/SlidesPage8.dart';
import 'package:vtah_flutter_intro/ui/switcher/SlideSwitcherWidget.dart';

import 'SlidesPage1.dart';
import 'SlidesPage2.dart';
import 'SlidesPage3.dart';
import 'SlidesPage9.dart';

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
              onMenu: () => _displayMenu(context, slidesBloc),
            ));
  }

  _onForwardNavigation(BuildContext context, SlideDescription description,
      SlidesBloc slidesBloc) {
    slidesBloc.dispatch(SlidesAction(event: SlidesEvent.forward));
  }

  _onBackwardNavigation(BuildContext context, SlidesBloc slidesBloc) {
    slidesBloc.dispatch(SlidesAction(event: SlidesEvent.previous));
  }

  _displayMenu(BuildContext context, SlidesBloc slidesBloc) {
    showDialog(
        context: context,
        builder: (context) => NavigationDialog(
              title: 'Aller au slide n°',
              description: 'Numéro de slide',
              buttonText: 'Valider',
              onNavigateCallback: (slide) => slidesBloc.dispatch(
                  SlidesAction(event: SlidesEvent.goto, slide: slide)),
            ));
  }

  Widget _generateWidgetFromDescription(SlideDescription description) {
    SlideProgression progression = SlideProgression(
        current: description.index + 1, total: description.total);
    switch (description.slide) {
      case Slide.PAGE1:
        return SlidesPage1(progression: progression);
      case Slide.PAGE2:
        return SlidesPage2(progression: progression);
      case Slide.PAGE3:
        return SlidesPage3(progression: progression);
      case Slide.PAGE4:
        return SlidesPage4(progression: progression);
      case Slide.PAGE5:
        return SlidesPage5(progression: progression);
      case Slide.PAGE6:
        return SlidesPage6(progression: progression);
      case Slide.PAGE7:
        return SlidesPage7(progression: progression);
      case Slide.PAGE8:
        return SlidesPage8(progression: progression);
      case Slide.PAGE9:
        return SlidesPage9(progression: progression);
      case Slide.PAGE10:
        return SlidesPage10(progression: progression);
      case Slide.PAGE11:
        return SlidesPage11(progression: progression);
      case Slide.PAGE12:
        return SlidesPage12(progression: progression);
      case Slide.PAGE13:
        return SlidesPage13(progression: progression);
      case Slide.PAGE14:
        return SlidesPage14(progression: progression);
      case Slide.PAGE15:
        return SlidesPage15(progression: progression);
      case Slide.PAGE16:
        return SlidesPage16(progression: progression);
      case Slide.PAGE17:
        return SlidesPage17(progression: progression);
      case Slide.PAGE18:
        return SlidesPage18(progression: progression);
      case Slide.PAGE19:
        return SlidesPage19(progression: progression);
      case Slide.PAGE20:
        return SlidesPage20(progression: progression);
      case Slide.PAGE21:
        return SlidesPage21(progression: progression);
      case Slide.PAGE22:
        return SlidesPage22(progression: progression);
      case Slide.PAGE23:
        return SlidesPage23(progression: progression);
      case Slide.PAGE24:
        return SlidesPage24(progression: progression);
      case Slide.PAGE25:
        return SlidesPage25(progression: progression);
      default:
        return null;
    }
  }
}
