Duration animationDelay({
  required int order,
}) =>
    Duration(
      milliseconds: 300 + (order * 240).clamp(0, 3000),
    );
