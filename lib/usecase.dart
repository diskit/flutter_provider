import 'package:flutter_provider/port.dart';
import 'package:flutter_provider/presenter.dart';

class CountUsecase {
  final CountPort _port;
  final CounterPresenter _presenter;

  CountUsecase(this._port, this._presenter);
}
