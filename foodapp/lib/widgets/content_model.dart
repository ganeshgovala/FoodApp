class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingContent> contents = [
  OnboardingContent(
    image: "assets/images/OnBoard1.png", 
    title: "Discover Delicious Meals", 
    description: "Explore a wide variety of dishes from local favorites to international cuisines, all in one place"
  ),
  OnboardingContent(
    image: "assets/images/OnBoard2.png", 
    title: "Order with Ease", 
    description: "Streamline your food ordering experience with our user-friendly interface. Customize your meals and place orders quickly and conveniently."
  ),
  OnboardingContent(
    image: "assets/images/OnBoard3.png", 
    title: "Fast Delivery, Fresh Ingredients", 
    description: "Enjoy quick and reliable delivery service that brings fresh, hot meals straight to your doorstep. Savor the taste of quality with every bite."
  )
];