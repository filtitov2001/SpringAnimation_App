//
//  ViewController.swift
//  SpringAnimation_App
//
//  Created by Felix Titov on 7/21/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
   
    
    private var animation = Animation.getRandomAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSpringView()
    }
    
    private func updateSpringView() {
        descriptionLabel.text = animation.description
    }
    
    private func setupAnimation() {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.delay = animation.delay
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        updateSpringView()
        setupAnimation()
        springView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

