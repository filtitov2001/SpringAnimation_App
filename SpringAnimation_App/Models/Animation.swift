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
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
}

extension Animation {
    static func getRandomAnimation() -> Animation {

        Animation(
            preset: DataManager.shared.presets.randomElement()?.rawValue ?? "slideUp",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "spring",
            force: Double.random(in: 1...3),
            duration: Double.random(in: 1...3),
            delay: Double.random(in: 0.3...0.7)
        )
        
    }
}
