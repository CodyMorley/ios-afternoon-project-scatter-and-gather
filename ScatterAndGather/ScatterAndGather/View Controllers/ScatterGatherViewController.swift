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
        
    }
    
    func gather() {
        self.lTextLabel.transform = .identity
        self.aTextLabel1.transform = .identity
        self.mTextLabel.transform = .identity
        self.bTextLabel.transform = .identity
        self.dTextLabel.transform = .identity
        self.aTextLabel2.transform = .identity
        self.lambdaLogo.transform = .identity
    }
}
