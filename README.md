🛍️ Flutter E-Commerce App

📌 Overview

This is a fully functional Flutter E-Commerce Application that integrates with the Fake Store API for product data. The app follows the Clean Architecture pattern and utilizes ScreenUtil for responsive UI design, ensuring a seamless user experience across all device sizes.

🚀 Features

🔑 Authentication: Login & Sign Up functionality.

🔍 Search & Filtering:

Search by name.

Filter products by category.

Filter products by price.

🛒 Shopping Experience:

View product details.

Add items to cart.

📢 Notifications:

Integrated Firebase Cloud Messaging (FCM) for real-time notifications.

👤 User Profile:

UI-only card for saved payment numbers.

UI-only OTP verification screen.

📏 Responsive UI:

Uses ScreenUtil for adaptive layout.

Ensures smooth display across different screen sizes.

🛠️ Tech Stack

Flutter (Dart)

State Management: BLoC / Provider

Backend API: Fake Store API

Firebase: For push notifications

ScreenUtil: For responsive UI design

📂 Project Structure

lib/
 ├── core/         # Contains common utilities, constants, and helpers
 ├── data/         # Handles API calls, repositories, and models
 ├── domain/       # Business logic and use cases
 ├── presentation/ # UI components, screens, and widgets
 ├── main.dart     # Entry point of the application

📦 Installation

Clone the repository:

git clone 

Navigate to the project directory:

cd flutter-ecommerce-app

Install dependencies:

flutter pub get

Run the app:

flutter run

📌 Future Improvements

🛍️ Cart & Checkout Integration

🛒 Wishlist Feature

💳 Real Payment Gateway Integration

🏆 Dark Mode Support

📜 License

This project is open-source and available under the MIT License.
