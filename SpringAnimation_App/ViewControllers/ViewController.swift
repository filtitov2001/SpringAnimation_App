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
    
    @IBOutlet weak var presetValueLabel: UILabel!
    @IBOutlet weak var curveValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var delayValueLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSpringView()
    }
    
    private func updateSpringView() {
        presetValueLabel.text = animation.preset
        curveValueLabel.text = animation.curve
        forceValueLabel.text = String(format: "%.2f", animation.force)
        durationValueLabel.text = String(format: "%.2f", animation.duration)
        delayValueLabel.text = String(format: "%.2f", animation.delay)
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

