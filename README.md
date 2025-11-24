## Event Application ##

  A simple Flutter application that displays events loaded from a JSON file. Users can view event details and mark events as favorites.

# State Management 

  This project uses setState, since the app is small and does not require complex state handling. setState is sufficient for updating UI components such as the favorite toggle, and keeps the project lightweight and easy to understand.

# Project Structure & Scalability

  This project is organized into clear folders to keep everything maintainable: <br>
  - assets/jsons/events.json - contains event data <br>
  - models/ - event model <br>
  - screens/ - UI screens

  This structure makes it easy to scale and allows new features to be added in an organized way.

# GraphQL Integration

 If the app were to use GraphQL in the future, it would live inside a dedicated service layer, separated from the UI.

 Example: <br>
   - UI calls: EventService.getEvents() <br>
   - Service executes GraphQL query <br>
   - Service returns a list of Event objects <br>
 This separation improves testability and keeps UI clean.

# Potential Improvements

 With additional time, I would enhance the project by: <br>
   - Improving styling with global themes and reusable text styles <br>
   - Adding an admin screen to create upvoming events <br>
   - Adding a "past events" screen <br>
   - Adding push notification reminders for favorited events <br>
   - Including an event end time so outdated events are removed automatically <br>
   - Making the design more adaptive for iOS

# Trade-offs and Limitations

  - Data comes from a local JSON file, so it is not persistent across app restarts <br>
  - setState works well here but becomes harder to maintain as the app grows <br>
  - UI is built with Material widgets, so iOS adaption is limited <br>
  - Styling is minimal and not fully reusable yet

# How to run the project 

  # Prerequisites
   - Install Flutter (SDK version 3.10 or higher) <br>
   - Ensure you have Android Studio, Xcode, or a simulator/emulator is set up for your platform <br>
   - Git installed

  # Clone Repository
  Run the following commands: <br>
   - git clone https://github.com/benjaminrevelo/Event-Project.git <br>
   - cd event_project

  # Get dependencies 
  Run the following command: <br>
   - flutter pub get

  # Run the app
  Run the following command: <br>
   - flutter run 
  

  
