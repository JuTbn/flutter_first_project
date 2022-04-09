import 'package:faker/faker.dart';
import 'package:todolist/models/task.dart';

var _faker = Faker();
var tasks = List.generate(
    10, (int index) => Task(id: index, content: _faker.lorem.sentence()));
