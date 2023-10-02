abstract class ObjectCache {
  getByKey(String key);

  void SetByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);

  void SetByKey(String key, String value);
}

// 泛型接口
abstract class Cache<T> {
  getByKey(String key);

  void SetByKey(String key, T value);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void SetByKey(String key, T value) {
    print('文件缓存 key=${key} value=${value}');
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void SetByKey(String key, T value) {
    print('内存缓存 key=${key} value=${value}');
  }
}

void main(List<String> args) {
  // 文件缓存，缓存字符串
  FileCache fc = new FileCache<String>();
  fc.SetByKey('foo', 'bar');

  // 内存缓存
  MemoryCache mc = new MemoryCache<String>();
  mc.SetByKey('foo', 'bar');
}
