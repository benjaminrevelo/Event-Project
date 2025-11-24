import 'package:event_project/models/event.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('Event model favorite toggle', () {
    test('toggleFavorite should switch favorite from false to true and back', () {
      //create a sample event
      final testevent = Event(
        id: '1',
        name: 'Test Event',
        description: 'Description',
        location: 'Location',
        time: DateTime.now(),
        isFavorite: false,
      );

      //Initially, favorite is equal to false
      expect(testevent.isFavorite, false);

      //toggle favorite 
      testevent.toggleIsFav();
      expect(testevent.isFavorite, true);

      //toggle again
      testevent.toggleIsFav();
      expect(testevent.isFavorite, false);
    });
  });
}
