class Project {
  const Project({
    required this.imagePath,
    required this.title,
    required this.technology,
    required this.description,
    this.githubRepositoryUrl,
  });

  final String imagePath;
  final String title;
  final List<String> technology;
  final String description;
  final String? githubRepositoryUrl;
}
