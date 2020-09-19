import 'domain.dart';

abstract class CountPort {
  Future<Count> find();

  Future<void> store(Count value);
}
