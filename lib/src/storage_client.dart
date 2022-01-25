import 'package:storage_client/src/constants.dart';
import 'package:storage_client/src/storage_bucket_api.dart';
import 'package:storage_client/src/storage_file_api.dart';

class SupabaseStorageClient extends StorageBucketApi {
  SupabaseStorageClient(String url, String key)
      : super(url, {...Constants.defaultHeaders, ..._getAuthHeaders(key)});

  /// Perform file operation in a bucket.
  ///
  /// [id] The bucket id to operate on.
  StorageFileApi from(String id) {
    return StorageFileApi(url, headers, id);
  }
}

Map<String, String> _getAuthHeaders(String key) {
  String authBearer = key;
  Map<String, String> headers = {
    // 'apiKey': key,
    // 'Authorization': 'Bearer $authBearer',
  };

  return headers;
}
