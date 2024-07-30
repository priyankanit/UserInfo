# UserInfo

A simple Flutter app that fetches data from an API and displays it in a visually appealing manner.

## Features
- Displays a list of users with their name and email address.
- Shows a loading indicator while fetching data.
- Implements pull-to-refresh functionality to refresh the list of users.
- Implements error handling for failed API requests.
- (Bonus) Search functionality to filter users by name.
- (Bonus) Detail screen that shows more information about the user.

## Screenshots
<img src="lib\images\userinfo.png" alt="User Info App" width="400" height="500">

## Installation
1. Clone the repository:
   git clone https://github.com/priyankanit/UserInfo.git
   cd UserInfo

## Install dependencies:
flutter pub get

## Run the app:
flutter run

## Assumptions
The app fetches data from https://jsonplaceholder.typicode.com/users.
Basic error handling is implemented for network requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.