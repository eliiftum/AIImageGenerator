# AIImageGenerator

## Summary of the Project
The goal of the "AI Image Generator" project is to display a logo on a splash screen for 3 seconds. Afterward, on the subsequent screen, there is a search bar where users can perform searches. Entering search keywords displays images related to the input, and clicking on an image directs users to a detail page where they can view the selected image in a larger size.

## Features
 - I used MVVM design pattern but I am going to VIPER design pattern as soon as possible
 - Developed with UIKit.
 - API is https://ai-image-generator3.p.rapidapi.com
 - Storyboards
 - URLSession is used for Network Request
 - I used a generic type to be able to use all models in a single network layer.
 - I used the singleton architecture in all managers because it allows them to be instantiated only once and kept in memory throughout the application's lifetime.
## Third-Party Libraries
 - KingFisher
 - Lottie
