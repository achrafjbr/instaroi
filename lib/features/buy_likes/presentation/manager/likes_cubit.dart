import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'likes_state.dart';

class LikesCubit extends Cubit<LikesState> {
  LikesCubit() : super(LikesInitial());

  /// Cubit instance
  static instance(BuildContext context) => BlocProvider.of<LikesCubit>(context);

  int initialLikesNumber = 1000;
  int priceOfOneThousandLike = 1;
  int currentPrice = 1;
  int incrementedPriceBySteps = 500;

  void defineLikesNumber(int likesNumber) {
    initialLikesNumber = likesNumber;
    currentPrice = changePrice();
    emit(
      LikesChangeLikesNumbersAndPrice(
        likesNumber: initialLikesNumber,
        likesPrice: currentPrice,
      ),
    );
  }

  int changePrice() =>
      ((initialLikesNumber / incrementedPriceBySteps) - 1).toInt();
}
