import 'dart:io';

class Beast {
  final String name;
  final String profile;
  final List<String> reminders;
  final String medicalHistory;
  final File photo;

  Beast(
      {this.name,
      this.profile,
      this.reminders,
      this.medicalHistory,
      this.photo});
}
