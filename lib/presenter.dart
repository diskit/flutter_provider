import 'package:flutter_provider/domain.dart';
import 'package:flutter_provider/state.dart';

class CounterPresenter {
  final CounterState _state;

  CounterPresenter(this._state);

  void setCount(Count count) {
    _state.setValue(count.value);
    _state.notify();
  }
}
