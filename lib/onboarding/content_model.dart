class UnbordingContent {
  final String image;
  final String description;
  UnbordingContent({required this.image, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/onboarding_screen_image1.jpg',
      description:
          'Capturing your ideas, thoughts, and remainders on-the-go with our conversation and easy-to-use notes feature'),
  UnbordingContent(
    image: 'assets/onboarding_screen_image2.jpg',
    description:
        'Stay organized and on schedule with our simple and user-friendly calendar features',
  ),
  UnbordingContent(
    image: 'assets/onboarding_screen_image3.jpg',
    description:
        'Keep your tasks organized and your day on track with our easy-to-use to-do list feature',
  ),
];
