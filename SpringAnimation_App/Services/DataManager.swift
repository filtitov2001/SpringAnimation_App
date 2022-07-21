//
//  DataManager.swift
//  SpringAnimation_App
//
//  Created by Felix Titov on 7/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Spring

class DataManager {
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}

