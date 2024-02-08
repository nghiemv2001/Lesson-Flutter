class ItemNotification {
  List<String> images;
  List<String> names;
  String message;
  String? image;
  int status;
  DateTime time;

  ItemNotification({
    required this.images,
    required this.names,
    required this.message,
    this.image,
    required this.status,
    required this.time,
  });
}
