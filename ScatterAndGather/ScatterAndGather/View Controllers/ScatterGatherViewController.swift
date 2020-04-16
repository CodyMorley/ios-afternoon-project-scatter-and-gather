//
//  ScatterGatherViewController.swift
//  ScatterAndGather
//
//  Created by Cody Morley on 4/15/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit

class ScatterGatherViewController: UIViewController {
    //MARK: - Properties -
    @IBOutlet weak var lTextLabel: UILabel!
    @IBOutlet weak var aTextLabel1: UILabel!
    @IBOutlet weak var mTextLabel: UILabel!
    @IBOutlet weak var bTextLabel: UILabel!
    @IBOutlet weak var dTextLabel: UILabel!
    @IBOutlet weak var aTextLabel2: UILabel!
    @IBOutlet weak var lambdaLogo: UIImageView!
    
    var isScattered: Bool = false
    
    //MARK: - Lifecycles -
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Functions -
    @IBAction func toggleButtonPressed(_ sender: Any) {
        self.isScattered = !isScattered
        
        switch isScattered {
        case true:
            scatter()
        case false:
            gather()
        }
        
    }
    
    //MARK: - Animation Methods -
    ///Below are the animations for the ImageView and the labels.
    
    func scatter() {
        ///1.Create an animation block to hold your key frames, use addKeyFrames
        let animationBlock = {
            ///a.Make the image go opaque
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.375) {
                self.lambdaLogo.alpha = 0.0
            }
            
            ///b.Make the letters "fall", this should start just after the image begins to go opaque but before it disappears.
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 1) {
                self.lTextLabel.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
                self.aTextLabel1.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
                self.mTextLabel.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
                self.bTextLabel.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
                self.dTextLabel.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
                self.aTextLabel2.center = CGPoint(x: CGFloat.random(in: 0...self.view.bounds.size.width), y: CGFloat.random(in: 0...self.view.bounds.size.height))
            }
            
            ///c. turn the letter frames slightly on their way toward their destination
            UIView.addKeyframe(withRelativeStartTime: 0.375, relativeDuration: 1) {
                self.lTextLabel.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
                self.aTextLabel1.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
                self.mTextLabel.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
                self.bTextLabel.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
                self.dTextLabel.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
                self.aTextLabel2.transform = CGAffineTransform(rotationAngle: .pi / CGFloat.random(in: 45...315))
            }
            
            ///d. Change the letter and background colors to random colors
            UIView.addKeyframe(withRelativeStartTime: 0.375, relativeDuration: 0.625) {
                self.lTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
                self.aTextLabel1.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
                self.mTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
                self.bTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
                self.dTextLabel.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
                self.aTextLabel2.backgroundColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 0.75)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.375, relativeDuration: 0.625) {
                self.lTextLabel.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
                self.aTextLabel1.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
                self.mTextLabel.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
                self.bTextLabel.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
                self.dTextLabel.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
                self.aTextLabel2.textColor = UIColor(red: CGFloat.random(in: 0...255), green: CGFloat.random(in: 0...255), blue: CGFloat.random(in: 0...255), alpha: 1)
            }
        }
        ///2. Use the key frames you made to make an anmiateKeyFramesAnimation
        UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [], animations: animationBlock, completion: nil)
    }
    
    func gather() {
        
        UIView.animate(withDuration: 1.5) {
            self.lTextLabel.transform = .identity
            self.aTextLabel1.transform = .identity
            self.mTextLabel.transform = .identity
            self.bTextLabel.transform = .identity
            self.dTextLabel.transform = .identity
            self.aTextLabel2.transform = .identity
            self.lambdaLogo.transform = .identity
        }
    }
}
