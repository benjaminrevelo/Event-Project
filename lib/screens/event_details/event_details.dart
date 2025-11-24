import 'package:event_project/models/event.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

///Event details screen, displays all the information about a selected event.

class EventDetails extends StatefulWidget {
  const EventDetails({super.key, required this.event});

  final Event event;

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.event.isFavorite;
  }

  void toggleFavorite() {
  setState(() {
    widget.event.toggleIsFav();
    isFavorite = widget.event.isFavorite;
  });
}

  @override
  Widget build(BuildContext context) {
    final event = widget.event;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Event Details", style: TextStyle(fontFamily: GoogleFonts.dmSans().fontFamily, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.transparent,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      event.name,
                      style: TextStyle(
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: toggleFavorite,
                  ),
                ],
              ),
            ),

            if (event.category != null) ...[
              const SizedBox(height: 8),
              Center(
                child: Text(
                  "Category: ${event.category}",
                  style: TextStyle(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],

            const SizedBox(height: 20),

            // details
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Location",
                    style: TextStyle(
                      fontFamily: GoogleFonts.dmSans().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    event.location,
                    style: TextStyle(fontFamily: GoogleFonts.dmSans().fontFamily,color: Colors.black),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    "Description",
                    style: TextStyle(
                      fontFamily: GoogleFonts.dmSans().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    event.description,
                    style: TextStyle(fontFamily: GoogleFonts.dmSans().fontFamily, color: Colors.black),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    "Time",
                    style: TextStyle(
                      fontFamily: GoogleFonts.dmSans().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    DateFormat('MMM dd, yyyy - h:mm a').format(event.time),
                    style: TextStyle(fontFamily: GoogleFonts.dmSans().fontFamily, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
