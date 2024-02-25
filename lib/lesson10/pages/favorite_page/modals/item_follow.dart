class ItemFollow {
  final List<String> avatars;
  final List<String>? images;
  final List<String> names;
  final String content;
  final int status;
  final bool isSpecial;
  final String time;
  ItemFollow({
    required this.avatars,
    required this.names,
    required this.content,
    required this.status,
    required this.isSpecial,
    required this.time,
    this.images,
  });
}
