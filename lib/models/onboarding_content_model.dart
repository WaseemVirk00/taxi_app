class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Order a car',
      image: 'assets/images/slider_1.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "),
  UnbordingContent(
      title: 'Easy to use',
      image: 'assets/images/slider_2.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "),
  UnbordingContent(
      title: 'Connect with us',
      image: 'assets/images/slider_3.png',
      discription:
          "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "),
];
