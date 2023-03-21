import 'package:equatable/equatable.dart';

class GithubRepo implements Equatable{
  final String name;
  final String description;
  final int stargazersCount;
  final int forksCount;

  GithubRepo({
    required this.name,
    required this.description,
    required this.stargazersCount,
    required this.forksCount,
  });

  @override
  List<Object?> get props => [name, description, stargazersCount, forksCount];

  @override
  bool? get stringify => true;
}