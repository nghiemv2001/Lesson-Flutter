class ItemYou {
  final String name;
  final List<String> avatars;
  final String content;
  final List<String>? images;
  final String time;
  final int status;
  final bool reply;
  ItemYou({
    required this.avatars,
    required this.name,
    required this.content,
    this.images,
    required this.time,
    required this.status,
    required this.reply,
  });
}
