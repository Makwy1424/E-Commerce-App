import 'package:e_com/services/data_streams/data_stream.dart';
import 'package:e_com/services/database/product_database_helper.dart';

class UsersProductsStream extends DataStream<List<String>> {
  @override
  void reload() {
    final usersProductsFuture = ProductDatabaseHelper().usersProductsList;
    usersProductsFuture.then((data) {
      addData(['data']);
    }).catchError((e) {
      addError(e);
    });
  }
}
