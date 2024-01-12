class Chat {
  final int id;
  final String streak;
  final String name;
  final String avatar;
  final bool isPinned;
  final List<Chat> members;

  const Chat({
    required this.id,
    required this.name,
    required this.streak,
    required this.avatar,
    required this.members,
    required this.isPinned,
  });
}
