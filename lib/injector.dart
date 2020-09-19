import 'package:flutter_provider/driver.dart';
import 'package:flutter_provider/gateway.dart';
import 'package:flutter_provider/port.dart';
import 'package:flutter_provider/presenter.dart';
import 'package:flutter_provider/state.dart';
import 'package:flutter_provider/usecase.dart';
import 'package:injector/injector.dart' as di;

class Injector {
  di.Injector _injector = di.Injector();

  void setup() {
    _state();
    _driver();
    _port();
    _presenter();
    _usecase();
  }

  void _driver() {
    _injector.registerSingleton(() => CountStorage());
  }

  void _state() {
    _injector.registerSingleton(() => CounterState());
  }

  void _port() {
    _injector.registerSingleton<CountPort>(() => CountGateway(_injector.get()));
  }

  void _presenter() {
    _injector.registerSingleton(() => CounterPresenter(_injector.get()));
  }

  void _usecase() {
    _injector.registerSingleton(
        () => CountUsecase(_injector.get(), _injector.get()));
  }

  U getUsecase<U>() {
    return _injector.get();
  }

  S getState<S extends State>() {
    return _injector.get();
  }
}

final injector = Injector();
