import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');
  QuerySnapshot queryPeople = await collectionReferencePeople.get();
  queryPeople.docs.forEach((element) {
    people.add(element.data());
  });

  // `CircularProgressIndicator`を意図的に確認するための遅延処理
  await Future.delayed(const Duration(seconds: 3));

  return people;
}
