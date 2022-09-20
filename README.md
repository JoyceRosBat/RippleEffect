# RippleEffect

https://user-images.githubusercontent.com/74479774/191194265-61c4d3c3-f039-4a4c-b851-bea2d8538ffc.mov

As in iOS is not a native behaviour, to create the Ripple Effect like Material Design with UIKit we have this following approach.

* Create UIView extension to add Ripple Effect through a tap gesture

* Create a rounded Shape Layer with expand and fade effect

* Make the effect starts on the tap gesture’s location

# Usage

```` swift
// With no color. Default color will be gray:
someView.addRippleEffect()

// With a custom color:
someView.addRippleEffect(.red)
