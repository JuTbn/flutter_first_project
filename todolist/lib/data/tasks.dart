import 'package:faker/faker.dart';
import 'package:todolist/models/task.dart';

var faker = new Faker();
var list = List.generate(
    10, (int index) => Task(id: index, content: faker.lorem.sentence()));
