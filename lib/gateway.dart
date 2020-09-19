import 'package:flutter_provider/domain.dart';
import 'package:flutter_provider/driver.dart';
import 'package:flutter_provider/port.dart';

class CountGateway implements CountPort {
  final CountStorage _storage;

  CountGateway(this._storage);

  @override
  Future<Count> find() async {
    return Count(_storage.count);
  }

  @override
  Future<void> store(Count value) async {
    _storage.count = value.value;
  }
}
