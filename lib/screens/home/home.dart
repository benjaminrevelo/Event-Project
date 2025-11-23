import 'package:event_project/models/event.dart';
import 'package:event_project/screens/event_details/event_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

///The homescreen, displays the events loaded from JSON file.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    loadEvents();
  }

  Future<void> loadEvents() async {
      final jsonStr = await rootBundle.loadString("assets/jsons/events.json");
      events = Event.listFromJson(jsonStr);

      //print("Loaded ${events.length} events.");

      setState(() {
        _loaded = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Events"), centerTitle: true),

      body: !_loaded
          ? const Center(child: CircularProgressIndicator())
          : events.isEmpty
              ? const Center(child: Text("No events found"))
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: events.length,
                  itemBuilder: (_, index) {
                    final event = events[index];

                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: ListTile(
                        title: Text(
                          event.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text('${event.location} - ${event.time.toIso8601String()}'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EventDetails(event: event),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
