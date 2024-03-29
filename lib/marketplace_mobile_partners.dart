class MarketPlaceMobilePartners {
  String? status;
  String? message;
  int? pageSize;
  int? page;
  int? bookingCount;
  List? data;

  MarketPlaceMobilePartners({
    this.status,
    this.message,
    this.pageSize,
    this.page,
    this.bookingCount,
    this.data,
});

  MarketPlaceMobilePartners.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    pageSize = json['pageSize'];
    page = json['page'];
    bookingCount = json['bookingCount'];
    data = json['data'];
  }
}