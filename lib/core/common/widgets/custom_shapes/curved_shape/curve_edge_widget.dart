import 'package:ecom/core/common/widgets/custom_shapes/curved_shape/curve_edges.dart';
import 'package:flutter/material.dart';

class CurvedEgdeWidget extends StatelessWidget {
  const CurvedEgdeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
