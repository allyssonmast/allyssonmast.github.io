import 'package:dartz/dartz.dart';
import 'package:page/app/erro/error.dart';

import '../../../../data/model/git_repos.dart';

abstract class ProjectRepository{
  Future<Either<Error, GithubRepo>> requestRepos();
}