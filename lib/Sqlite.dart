import 'package:sqflite/sqflite.dart';

class Todo {
  static const columnId = 'id';
  static const columnTitle = 'title';
  static const columnContent = 'content';

  int id;
  String title;
  String content;

  Todo(this.content, this.title, [this.id]);

  Todo.fromMap(Map<String, dynamic> map) : id = map[columnId], title = map[columnTitle], content = map[columnContent];

  Map<String, dynamic> toMap() => {
    columnTitle: title,
    columnContent: content,
  };

  @override
  String toString() {
    return 'Todo{id=$id, title=$title, content=$content}';
  }
}

void foo() async {
  const table = 'Todo';
  var path = await getDatabasesPath() + '/demo.db';
  var database = await openDatabase(path, version: 1, onCreate: (db, version) async {
    var sql = '''
      CREATE TABLE $table('
      ${Todo.columnId} INTEGER PRIMARY KEY, '
      ${Todo.columnTitle} TEXT,'
      ${Todo.columnContent} TEXT'
      )
    ''';
    await db.execute(sql);
  });
  await database.delete(table);

  var todo1 = Todo('Flutter', 'Learn Flutter widgets.');
  var todo2 = Todo('Flutter', 'Learn how to to IO in Flutter.');

  // 插入数据
  await database.insert(table, todo1.toMap());
  await database.insert(table, todo2.toMap());
}
