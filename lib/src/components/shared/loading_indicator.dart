part of 'shared.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? color;
  final double? size;

  LoadingIndicator({
    Key? key,
    this.color,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      color: color ?? Colors.blue,
      size: size ?? 18,
    );
  }
}
