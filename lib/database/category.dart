import 'package:drift/drift.dart';

@DataClassName('category') //ini penamaan table nya
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(max: 128)();
  IntColumn get type => integer()();
  DateTimeColumn get creatAt => dateTime()();
  DateTimeColumn get updateAt => dateTime()();
  DateTimeColumn get deleteAt => dateTime().nullable()();
}
/* tabel
 1. Categories
  - Id -name -create_at -update_at -deleted_at
  1. Income
  2. Expense
 2. Trancsaction
  -Id -name/deskripsi -category_id -amount --create_at -update_at -deleted_at

*/