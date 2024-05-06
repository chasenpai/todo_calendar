class Convert {

  static DateTime strToDateTime(String dateTimeStr) {
    return DateTime.tryParse(dateTimeStr) ?? DateTime.now().toUtc();
  }

}