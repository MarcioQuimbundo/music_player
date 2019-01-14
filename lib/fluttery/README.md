# Fluttery

A Flutter package that helps with prototyping.

## Framing

Helps with framing user interfaces. For example:

`RandomColorBlock` is a `Container` that paints itself with a random color. This way a developer can quickly frame out a user interface with regard to positioning and sizing without worrying about the final `Widget`s.

## Layout

Various layout Widgets and tools that are not available in the Flutter framework.

For example:

`CenterAbout` positions a child Widget such that the child is centered at the given `Offset`. It needs to be used in a `Stack`.

`OverlayBuilder` displays a built Widget in the app's `Overlay`.

`AnchoredOverlay` is similar to `OverlayBuilder` except that it also provides an `anchor` `Offset` that is calculated to be at the center of the `AnchoredOverlay`. This allows you to easily stick Widgets on top of other Widgets. For example: popovers.

## Gestures

### Radial Drag Gesture Detector

Detect dragging motion with polar coordinates using `RadialDragGestureDetector` in `fluttery:gestures`. It's a gesture detector that reports like a dial about the center of the child `Widget`.

## Animations

### AnimationPlayer

Fine-tune your multi-phase animations with an `AnimationPlayer`.  An `AnimationPlayer` provides controls to play `Phase`s forward and backward at a speed of your choice. This helps a developer carefully craft the correct effect in the animation.