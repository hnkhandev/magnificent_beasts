import 'dart:io';

class Beast {
  final String name;
  final String bio;
  final List<String> reminders;
  final String medicalHistory;
  final File photo;

  Beast({
    this.name,
    this.bio,
    this.reminders,
    this.medicalHistory,
    this.photo,
  });
}
