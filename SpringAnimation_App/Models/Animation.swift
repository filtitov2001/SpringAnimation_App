//
//  Animation.swift
//  SpringAnimation_App
//
//  Created by Felix Titov on 7/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
}

extension Animation {
    static func getRandomAnimation() -> Animation {
        let preset = DataManager.shared.presets.randomElement() ?? "slideUp"
        let curve = DataManager.shared.curves.randomElement() ?? "spring"
        
        let force = Double.random(in: 2...5)
        let duration = Double.random(in: 1...3)
        let delay = Double.random(in: 0...0.9)
        
        let animation = Animation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
        
        return animation
    }
}
