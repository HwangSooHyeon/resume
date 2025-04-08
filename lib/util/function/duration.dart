Duration animationDelay({
  required int order,
}) =>
    Duration(
      milliseconds: 300 + (order * 120).clamp(0, 3000),
    );
