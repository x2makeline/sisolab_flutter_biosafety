extension ListChunk<T> on List<T> {
  List<List<T>> chunk(int chunkSize) {
    List<List<T>> chunkedList = [];
    int length = this.length;

    for (int i = 0; i < length; i += chunkSize) {
      int end = i + chunkSize;
      List<T> chunk = sublist(i, end > length ? length : end);
      chunkedList.add(chunk);
    }

    return chunkedList;
  }
}
