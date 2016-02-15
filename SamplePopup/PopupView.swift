//
//  PopupView.swift
//  SamplePopup
//
//  Created by Sung on 2016. 2. 13..
//  Copyright © 2016년 self. All rights reserved.
//

import UIKit

class PopupView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var btnClose: UIButton!
    @IBOutlet weak var popupWidth: NSLayoutConstraint!
    @IBOutlet weak var popupHeight: NSLayoutConstraint!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NSBundle.mainBundle().loadNibNamed("PopupView", owner: self, options: nil)
        self.addSubview(contentView)
    }
    
    override func layoutSubviews() {
        self.contentView.frame = self.bounds
        self.popupWidth.constant = UIScreen.mainScreen().bounds.width / 1.5
        self.popupHeight.constant = UIScreen.mainScreen().bounds.width / 1.5
    }
}
