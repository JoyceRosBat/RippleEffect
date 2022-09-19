//
//  CABasicAnimation+Ext.swift
//  RippleEffectPOC
//
//  Created by Joyce Rosario Batista on 19/9/22.
//

import UIKit

extension CABasicAnimation {
    enum Animationey: String {
        case scale = "transform.scale"
        case opacity = "opacity"
    }
    
    convenience init(withKey key: Animationey) {
        self.init(keyPath: key.rawValue)
    }
}
