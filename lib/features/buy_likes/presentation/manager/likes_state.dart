part of 'likes_cubit.dart';

@immutable
sealed class LikesState {}

final class LikesInitial extends LikesState {}

final class LikesChangeLikesNumbersAndPrice extends LikesState {
  final int likesPrice;
  final int likesNumber;
  LikesChangeLikesNumbersAndPrice({
    required this.likesNumber,
    required this.likesPrice,
  });
}
