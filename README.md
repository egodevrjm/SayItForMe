# SayItForMe
A simple text to speech app available on the App Store.

![ScreenShot of App](https://github.com/egodevrjm/SayItForMe/blob/master/Image-25-08-2017-21-35.png)

I created this app because a family member lost their voice and kept holding up their notes app for us to read. Now they can just type it in, press the microphone and have their phone read it.

MORE HERE: https://upyourego.com/apps-that-almost-make-themselves/

ON THE APP STORE: https://itunes.apple.com/gb/app/say-it-for-me/id1275449296?mt=8

Feel free to check the code and reuse it in your own project as it is pretty straightforward and a basic implementation of the core functionality built into iOS.

## So how is it made?

First we have to import AVFoundation as it is part of that incredible toolkit.

```Swift
import AVFoundation
```

Then we need to set a variable for the speech synth so you can call it later and another for the utterance (what you want to say). We do this above View Did Load.

```Swift
let synth = AVSpeechSynthesizer()

var myUtterance = AVSpeechUtterance(string: "")
```

Add a button to your Storyboard and ctrl drag it as an IBAction into the View Controller class. Then within that Action add the following:

```Swift
myUtterance = AVSpeechUtterance(string: "I've lost my voice")

myUtterance.rate = Float(utteranceRate)

synth.speak(myUtterance)
```

The string is what your device will actually say when you click the button.

This is a VERY basic example of how to use it and is locked to whatever you write within the button. If you want to change the text then you’d just create a textField or a textView, import it as an outlet and replace “I’ve lost my voice” (above) with textField.text – or whatever you call it.

But what if the user inputs a huge amount of text and gets bored with it talking? Simple just create a stop button, import it as an action and add the following within the action:

```Swift
synth.stopSpeaking(at: .immediate)
```

You can also use pausSpeaking and continueSpeaking to add even more functionality or add a slider tied to the utteranceRate to let the user speed up or slow down how fast the phone is reading.

You’d just make sure you declare the utteranceRate as a variable then increase or reduce it with a slider or stepper.
