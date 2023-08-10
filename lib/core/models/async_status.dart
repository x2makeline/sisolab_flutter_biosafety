class AsyncStatus<T> {
  final T? data;
  final bool isLoading;
  final bool isError;
  final bool isSuccess;
  final bool hasData;

  @override
  String toString() {
    return 'AsyncStatus{data: $data, isLoading: $isLoading, isError: $isError, isSuccess: $isSuccess, hasData: $hasData}';
  }

  AsyncStatus(
      {this.data,
      this.isLoading = false,
      this.isError = false,
      this.isSuccess = false})
      : hasData = data != null;

  factory AsyncStatus.initial() {
    return AsyncStatus();
  }

  factory AsyncStatus.success(T? data) {
    return AsyncStatus(
        data: data, isError: false, isLoading: false, isSuccess: true);
  }

  factory AsyncStatus.loading() {
    return AsyncStatus(isLoading: true, isError: false, isSuccess: false);
  }

  factory AsyncStatus.error([T? data]) {
    return AsyncStatus(
        isLoading: false, isError: true, isSuccess: false, data: data);
  }

  merge<A extends T>({
    A? data,
    bool? isLoading,
    bool? isError,
    bool? isSuccess,
  }) {
    return AsyncStatus(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        isLoading: isLoading ?? this.isLoading,
        isError: isError ?? this.isError);
  }
}
