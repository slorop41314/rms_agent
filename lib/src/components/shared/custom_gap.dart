part of 'shared.dart';

class CustomGap extends StatelessWidget {
  const CustomGap({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  factory CustomGap.vXs() {
    return const CustomGap(height: 4);
  }
  factory CustomGap.vSmall() {
    return const CustomGap(height: 8);
  }
  factory CustomGap.vMedium() {
    return const CustomGap(height: 12);
  }
  factory CustomGap.vLarge() {
    return const CustomGap(height: 16);
  }
  factory CustomGap.vXl() {
    return const CustomGap(height: 24);
  }
  factory CustomGap.vXxl() {
    return const CustomGap(height: 32);
  }
  factory CustomGap.vXxxl() {
    return const CustomGap(height: 40);
  }

  factory CustomGap.vXxxxl() {
    return const CustomGap(height: 48);
  }

  factory CustomGap.hXs() {
    return const CustomGap(width: 4);
  }
  factory CustomGap.hSmall() {
    return const CustomGap(width: 8);
  }
  factory CustomGap.hMedium() {
    return const CustomGap(width: 12);
  }
  factory CustomGap.hLarge() {
    return const CustomGap(width: 16);
  }
  factory CustomGap.hXl() {
    return const CustomGap(width: 24);
  }
  factory CustomGap.hXxl() {
    return const CustomGap(width: 32);
  }
}
