# -*- coding: utf-8 -*-
class PinchViewController < UIViewController
  def viewDidLoad
    self.view.backgroundColor = UIColor.blueColor
    # UIPinchGestureRecognizer
    # pinch
    pinchGesture = UIPinchGestureRecognizer.alloc.initWithTarget(self, action:'handlePinchGesture:')
    self.view.addGestureRecognizer(pinchGesture)
  end
  # selector
  def handlePinchGesture(sender)
    factor = sender.scale
    self.view.transform = CGAffineTransformMakeScale(factor, factor)
    p factor
  end
end
