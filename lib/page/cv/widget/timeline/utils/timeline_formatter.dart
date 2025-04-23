class TimelineFormatter {
  static String formatDateRange(DateTime start, DateTime end) {
    final isPresent =
        end.isAfter(DateTime.now().subtract(const Duration(days: 30)));
    final startStr = '${start.year}.${start.month.toString().padLeft(2, '0')}';
    final endStr = isPresent
        ? 'Present'
        : '${end.year}.${end.month.toString().padLeft(2, '0')}';

    return '$startStr - $endStr';
  }
}
