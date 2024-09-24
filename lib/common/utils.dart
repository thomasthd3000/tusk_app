import 'package:intl/intl.dart';

String dateByStatus(Task task) {
  switch (task.status) {
    case 'Queue':
      return _formatDateTime1(task.createdAt!);
    case 'Review':
      return _formatDateTime1(task.submitDate!);
    case 'Approved':
      return _formatDateTime1(task.approveDate!);
    case 'Review':
      return _formatDateTime1(task.rejectedDate!);
    default:
      return '-';
  }
}

String _formatDateTime1(DateTime dateTime) {
  return DateFormat('d MMM yyyy, HH:mm').format(dateTime);
}

String iconByStatus(Task task) {
  switch (task.status) {
    case 'Review':
      return 'assets/review_icon.png';
    case 'Approved':
      return 'assets/approved_icon.png';
    case 'Rejected':
      return 'assets/rejected_icon.png';
    default:
      return 'assets/images/queue_icon.png';
  }
}
