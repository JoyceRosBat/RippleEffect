//
//  UIView+Ext.swift
//  RippleEffectPOC
//
//  Created by Joyce Rosario Batista on 19/9/22.
//

import UIKit

extension UIView {
    func addRippleEffect() {
        // Create a tap gesture that will create the ripple effect and add it to the view:
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(addRippleEffectLayer(_:)))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc private func addRippleEffectLayer(_ gesture: UITapGestureRecognizer) {
        // Create circutar path arount the view:
        let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height), cornerRadius: self.bounds.size.height)
        
        // Create shape layer
        let rippleShape = CAShapeLayer()
        // Bounds equals to view
        rippleShape.bounds = self.bounds
        // Circular path created before
        rippleShape.path = path.cgPath
        // Fill color
        rippleShape.fillColor = UIColor.red.cgColor
        // Position will be the location of the tap gesture
        rippleShape.position =  gesture.location(in: self)
        // Opacity to 0 to make effect dissapear after animation ends
        rippleShape.opacity = 0
        
        // Add layer to the view
        self.layer.addSublayer(rippleShape)
        // Clips to bounds to avoid effect to stand out of the view
        self.clipsToBounds = true
        
        // Add animation
        rippleShape.add(groupAnimations(), forKey: "rippleEffect")
    }
    
    // Scale animation to make the layer scale and make effect of grow up
    private func scaleAnimation() -> CABasicAnimation {
        let scaleAnim = CABasicAnimation(withKey: .scale)
        scaleAnim.fromValue = 1
        scaleAnim.toValue = 2
        return scaleAnim
    }
    
    // Opacity animation to make layer fade effect
    private func opacityAnimation() -> CABasicAnimation {
        let opacityAnim = CABasicAnimation(withKey: .opacity)
        opacityAnim.fromValue = 1
        opacityAnim.toValue = 0
        return opacityAnim
    }
    
    // Group scale and opacity animation to combine them. Set duration and repeat just once.
    private func groupAnimations() -> CAAnimationGroup {
        let animation = CAAnimationGroup()
        animation.animations = [scaleAnimation(), opacityAnimation()]
        animation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation.duration = CFTimeInterval(0.7)
        animation.repeatCount = 1
        animation.isRemovedOnCompletion = true
        return animation
    }
}
