import 'package:flutter_provider/port.dart';
import 'package:flutter_provider/presenter.dart';

class CountUsecase with Usecase {
  final CountPort _port;
  final CounterPresenter _presenter;

  CountUsecase(this._port, this._presenter);

  Future<void> increment() async {
    var count = (await _port.find()).increment();
    _port.store(count);
    _presenter.setCount(count);
  }
}

abstract class Usecase {}
