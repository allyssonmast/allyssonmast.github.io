import 'package:equatable/equatable.dart';

class GithubError extends Equatable implements Exception {
  final String message;

  const GithubError({required this.message});

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'GithubError: $message';
}
