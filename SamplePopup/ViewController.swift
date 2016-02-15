//
//  ViewController.swift
//  SamplePopup
//
//  Created by Sung on 2016. 2. 13..
//  Copyright © 2016년 self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // popupview
    @IBOutlet weak var popupView: PopupView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.popupView.btnClose.addTarget(self, action: Selector("closePopup"), forControlEvents: .TouchUpInside)
    }

    func closePopup() {
        // popupView 숨기기
        UIView.animateWithDuration(0.5, animations: {self.popupView.alpha = 0.0}, completion: {_ in self.popupView.hidden = true})
    }

    @IBAction func actionPopup(sender: AnyObject) {
        // popupview 보이기
        popupView.hidden = false
        
        // Animation 추가
        self.popupView.alpha = 0.0
        UIView.animateWithDuration(0.5, animations: {self.popupView.alpha = 1.0}, completion: nil)
    }
}

