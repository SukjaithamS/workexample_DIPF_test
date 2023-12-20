# Work Sample

This repository is the base for a work sample. It contains a flutter project that you should extend with some functionality.

The goal of this work sample is to get an impression of your coding style and your ability to work with flutter.
To get started with flutter, you should look at the [documentation](https://docs.flutter.dev/get-started/install) and install flutter on your machine. You can then run the project in an emulator or on a real device.

As a development environment, we recommend [Visual Studio Code](https://code.visualstudio.com/) with the [Flutter extension](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter). However, you are free to use any IDE you want.

Note that flutter is a cross-platform library, but we are currently only interested in the mobile part. Thus, please limit yourself to mobile, in particular the android part. Moreover, you do not need to take care of web or desktop platforms.

## Setup

You should fork this repository and clone it to your local machine. You can then open the project in your IDE and run it.

## Implementation tasks
You are free to change any and all parts of the project. You can add files and folders, change the existing files, and remove files. 

Please perform the following tasks:

1. Retrieve a list of users using the [dummy JSON API](https://dummyjson.com/docs/users)     Limit the number of users to 10. Use the "api_service" class that is already provided. To access this service, the ["Riverpod"](https://riverpod.dev/docs/introduction/why_riverpod) library is used. You can see how to access the "api_service" in the "user_list_view.dart" file. For such a simple task, you do not need to understand the details of the "Riverpod" library in depth. This is only to give you a first impression of how it works. 

2. Display the list of users in a list view. Each list item should display the user's name and avatar.

3. When tapping on a list item, display a new screen that shows the user's details. The details should include at least the name, but you are also free to include any other details you think are relevant.




## Design of the app
Here is a **wireframe** of the final result:

![Mockup of the final result](mockup.png)

Your result should have the same functionality, but you are free to style it however you want.
We encourage you to style the app in a child-friendly way. 

## Submission

Finish your solution until 2023-12-20, 23:59h.
Submit the code to your own GitHub repository and send us the link to it. 
The project should be runnable without any additional steps. If you need to add any additional steps, please include them in a README file. 
Please take care that the project compiles and runs without any errors.