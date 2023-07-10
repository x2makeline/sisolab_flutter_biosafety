extension AwaitLet<T> on Future<T> {
  /// Calls the specified `block` with the current value as its argument.
  Future<R> awaitLet<R>(Future<R> Function(T it) block) async {
    return block(await this);
  }
}
