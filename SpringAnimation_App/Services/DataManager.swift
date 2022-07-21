//
//  DataManager.swift
//  SpringAnimation_App
//
//  Created by Felix Titov on 7/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class DataManager {
    static let shared = DataManager()
    
    let presets = [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let curves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut",
    ]
    
    private init() {}
}
