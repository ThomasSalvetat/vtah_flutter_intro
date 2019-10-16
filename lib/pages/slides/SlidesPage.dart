import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesBloc.dart';
import 'package:vtah_flutter_intro/modules/slides/SlidesEvent.dart';
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
      case Slide.PAGE5:
        return SlidesPage5();
      case Slide.PAGE6:
        return SlidesPage6();
      case Slide.PAGE7:
        return SlidesPage7();
      case Slide.PAGE8:
        return SlidesPage8();
      case Slide.PAGE9:
        return SlidesPage9();
      case Slide.PAGE10:
        return SlidesPage10();
      case Slide.PAGE11:
        return SlidesPage11();
      case Slide.PAGE12:
        return SlidesPage12();
      case Slide.PAGE13:
        return SlidesPage13();
      case Slide.PAGE14:
        return SlidesPage14();
      case Slide.PAGE15:
        return SlidesPage15();
      case Slide.PAGE16:
        return SlidesPage16();
      case Slide.PAGE17:
        return SlidesPage17();
      case Slide.PAGE18:
        return SlidesPage18();
      case Slide.PAGE19:
        return SlidesPage19();
      case Slide.PAGE20:
        return SlidesPage20();
      case Slide.PAGE21:
        return SlidesPage21();
      case Slide.PAGE22:
        return SlidesPage22();
      case Slide.PAGE23:
        return SlidesPage23();
      case Slide.PAGE24:
        return SlidesPage24();
      default:
        return null;
    }
  }
}
