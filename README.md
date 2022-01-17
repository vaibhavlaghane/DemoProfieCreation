# DemoProfileCreation
Project to Demo Profile creation of User 

To Run Project - click on DemoProfileCreation xcodeproj file.
The Project is designed in portrait mode for iPhone. Tested on iPhone 8 and above.

The Project is developed as per the specs for the assignment 
1-It has Profile creation screen with the required fields
2- It has sign in screen 
3-when user clicks sign in ---> I have designed a new page  to show Mock success page with animation<-----
[this is part of the Additional items • Feel free to surprise us with anything else]

Architecture:
1-designed mock ViewModel and network layer to show how the sign in network call would look like
2-model, viewcontroller, storyboards,xibs are separated
3-UserInfo - structure contains the data to be passed from 1st screen to 2nd
4-ProfileCreationViewController defines the first screen
5-SignInViewController defines the 2nd screen
6-SignInSuccessViewController defines the success screen
App can be extended for backend logic using MVVM 


salient features
1-CAGradientLayer has been leveraged to color the background of submit/sign in button
2-CAEmitterLayer is used for the animation effect


In progress:
Unit testing 

