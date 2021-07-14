import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterViewModelProvider = StateNotifierProvider<CounterViewModel, int>((ref) => CounterViewModel());

class CounterViewModel extends StateNotifier<int> {
  CounterViewModel(): super(0);

  void increment() => state++;
}