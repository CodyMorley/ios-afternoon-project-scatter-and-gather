//
//  ScatterGatherViewController.swift
//  ScatterAndGather
//
//  Created by Cody Morley on 4/15/20.
//  Copyright © 2020 Cody Morley. All rights reserved.
//

import UIKit

class ScatterGatherViewController: UIViewController {
    
    @IBOutlet weak var lTextLabel: UILabel!
    @IBOutlet weak var aTextLabel1: UILabel!
    @IBOutlet weak var mTextLabel: UILabel!
    @IBOutlet weak var bTextLabel: UILabel!
    @IBOutlet weak var dTextLabel: UILabel!
    @IBOutlet weak var aTextLabel2: UILabel!
    @IBOutlet weak var lambdaLogo: UIImageView!
    
    
    
    var isScattered: Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toggleButtonPressed(_ sender: Any) {
        self.isScattered = !isScattered
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
