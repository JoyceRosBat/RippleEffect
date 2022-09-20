# RippleEffect

https://user-images.githubusercontent.com/74479774/191196914-750bcf11-ec3f-4426-b842-5ed8889581cc.mov


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
