import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_meals_app/models/meal.dart';

class FavoriteMealsNotifier extends Notifier<List<Meal>> {
  @override
  List<Meal> build() => [];

  bool toggleMealFavoriteStatus(Meal meal) {
    final bool mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    NotifierProvider<FavoriteMealsNotifier, List<Meal>>(
      FavoriteMealsNotifier.new,
    );
