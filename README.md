
# Freelancer Flutter Project 

This application showcase the Login UI using phonenumber. For authentication I have used Firebase Phone Number Auth. It uses OTP to verify the user.

For Code Design I have used following pattern 

       main.dart
       \lib\core
             \service
                \ firebase_phone_auth_service.dart
             \utils
                \assets.dart
             \service_locator.dart <-- Defined the Singleton Class Here --> 
           \feature
                \home
                  \pages
                    \home_page.dart
                  \widgets
                \login
                  \pages
                    \login_page.dart
                  \widgets
                     \login_widget.dart
                     \resend_otp_widget.dart
                
       



## Run Locally

Clone the project

```bash
  git clone https://github.com/someshwar16/freelance-flutter-project.git
```

Go to the project directory

```bash
  cd freelance-flutter-project
```

Install dependencies

```bash
  flutter pub get 
```

Run the application

```bash
  flutter run
```


## Screenshots

https://github.com/user-attachments/assets/f9a340cd-d7b5-42a5-b5a9-29754fb61808


![OTP_SS](https://github.com/user-attachments/assets/8a7e1242-0bfb-4fbb-9bfe-ca17d96850c1)



