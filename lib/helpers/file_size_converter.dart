class FileSizeConverter {
  static String bytesToString(int bytes) {
    var sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var len = bytes.toDouble();
    var order = 0;

    while (len >= 1024 && order++ < sizes.length - 1) {
      len /= 1024;
    }

    return "${len.toStringAsFixed(2)} ${sizes[order]}";
  }
}
