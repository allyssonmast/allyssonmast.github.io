import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../erro/github_error.dart';
import '../model/git_repos.dart';

abstract class GithubRepository {
  Future<Either<GithubError, List<GithubRepo>>> getRepositories(
      String username);
}

class GithubRepositoryImpl implements GithubRepository {
  final http.Client httpClient;

  GithubRepositoryImpl({required this.httpClient});

  @override
  Future<Either<GithubError, List<GithubRepo>>> getRepositories(
      String username) async {
    final response = await httpClient.get(
      Uri.parse('https://api.github.com/users/$username/repos'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return Right(jsonList.map((json) => GithubRepo.fromJson(json)).toList());
    } else {
      return Left(GithubError(message: response.body));
    }
  }
}
