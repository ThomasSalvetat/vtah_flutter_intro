import 'package:vtah_flutter_intro/modules/slides/SlidesBloc.dart';
import 'package:vtah_flutter_intro/ui/navigation/NavigationDirection.dart';

class SlideDescription {
  final int index;
  final int total;
  final Slide slide;
  final NavigationDirection direction;

  const SlideDescription({this.index, this.total, this.slide, this.direction});
}
