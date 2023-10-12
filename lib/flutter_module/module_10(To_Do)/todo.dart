class ToDo {
  String details;
  DateTime createdDateTime, updatedDateTime;
  String status;

  ToDo({
    required this.details,
    required this.createdDateTime,
    required this.updatedDateTime,
    this.status = "pending",
  });
}
