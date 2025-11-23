## Event Application ##

  A simple Flutter application that displays events loaded from a JSON file. Users can view event details and mark events as favorites.

# State Management Approach

  For this project, I chose setState for state management. The application is small and does not require complex handling. setState is sufficient for toggling the favorite status and updating the UI.

# Project Structure Scalability

  I structured the project by dividing everything in their respective folders.
  Example: the json file resides in a subfolder called "jsons" and "jsons" resides in a folder called assets. I chose this approach throughout to matain a clean folder structure and easy navigation.

# GraphQL

 GraphQL would live in a service layer and it would be separated from the UI. This layer would handle queries or fetching the events from a server. Screens would call the service and update the UI via state      management.
 Example: UI calls EventService.getEvents() and service executes a GraphQL query to return a list of Events.

# Improvements with more time

 I would first update the UI and make it more appealing and reusable by adding theme and text files for global use throughout the application, make an administrator screen to easily post new upcoming events, add a    past events screen, when the user adds an event to favorites they could opt to receive push notifications for reminders, add a end time to remove past events from the home screen automatically. 

# Trade-offs and limitations

 Some trades offs and limitations are the app relies on JSON file so the data is not persistent when the app launches, setState works but can become hard to manage as the app grows. The UI design uses Material widgets so it does not fully adapt to IOS, and the syle is not reusable. 

# How to run the project 

  # Prerequisites
   Install Flutter (SDK version 3.10 or higher).
   Ensure you have Android Studio, Xcode, or a simulator/emulator is set up for your platform

  # Clone Repository
  Run the following commands: <br>
   git clone https://github.com/benjaminrevelo/Event-Project.git <br>
   cd event_project

  # Get dependencies 
  Run the following commands: <br>
   flutter pub get <br>
   flutter run 
  

  
