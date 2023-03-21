import 'package:equatable/equatable.dart';

class GithubRepo implements Equatable {
  final String name;
  final String description;
  final String language;
  final int stars;
  final int forks;
  final String url;
  final List<String> topics;

  GithubRepo({
    required this.url,
    required this.topics,
    required this.name,
    required this.description,
    required this.language,
    required this.stars,
    required this.forks,
  });

  @override
  List<Object?> get props => [
        url,
        name,
        description,
        language,
        stars,
        forks,
        topics,
      ];

  @override
  bool? get stringify => true;

  factory GithubRepo.fromJson(Map<String, dynamic> json) {
    return GithubRepo(
      name: json['name'],
      language: json['language']??'',
      topics: List.from(json['topics']),
      url: json['html_url'],
      description: json['description'] ?? '',
      stars: json['stargazers_count'],
      forks: json['forks_count'],
    );
  }
}
