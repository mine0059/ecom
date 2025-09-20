import 'package:flutter/widgets.dart';

import '../../../constants/colors.dart';
import '../curved_shape/curve_edge_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEgdeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
