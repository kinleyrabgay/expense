import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageService extends GetxService {
  static GetStorageService get to => Get.find();
  late final GetStorage _box;

  Future<GetStorageService> init() async {
    _box = GetStorage();
    return this;
  }

  Future<void> setString(String key, String value) async {
    await _box.write(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    await _box.write(key, value);
  }

  Future<void> setList(String key, List<String> value) async {
    await _box.write(key, value);
  }

  String getString(String key) {
    return _box.read(key) ?? '';
  }

  bool getBool(String key) {
    return _box.read(key) ?? false;
  }

  List<String> getList(String key) {
    return _box.read(key)?.cast<String>() ?? [];
  }

  Future<void> remove(String key) async {
    await _box.remove(key);
  }
}
