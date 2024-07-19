class HomeItemModel {
  final String title;
  final void Function() onTap;

  HomeItemModel({
    required this.title,
    required this.onTap,
  });
}
