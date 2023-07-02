part of 'shared.dart';

class CustomShimmer extends StatelessWidget {
  final Widget child;

  CustomShimmer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: child,
    );
  }
}
