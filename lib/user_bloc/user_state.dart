part of 'user_bloc.dart';

@immutable
class UserState {
  final List<User> users;
  final List<Job> job;
  final bool isLoading;

  UserState({this.users = const [], this.job = const [], this.isLoading = false});

  UserState copyWith({
    final List<User>? users,
    final List<Job>? job,
    final bool isLoading = false,
}){
    return UserState(
      users: users ?? this.users,
      job: job ?? this.job,
      isLoading: isLoading,
    );
  }
}

class Job{
  final String name;
  final String id;

  Job({required this.name, required this.id});
}

class User{
  final String name;
  final String id;

  User({required this.name, required this.id});
}
