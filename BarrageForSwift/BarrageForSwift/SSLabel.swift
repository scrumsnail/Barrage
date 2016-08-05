//
//  SSLabel.swift
//  BarrageForSwift
//
//  Created by allthings_LuYD on 16/8/5.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

import UIKit

class SSLabel: UILabel {
    let SSLabelHeight = 50
    let SSWidth  = UIScreen.main().bounds.size.width
    let SSHeight = UIScreen.main().bounds.size.height
    let SSDrution = 5
    func showInView(view:UIView,content:String) -> Void {

        self.frame = CGRect(x: SSWidth, y: CGFloat(arc4random_uniform(UInt32(Int(SSHeight - 100)))), width: self.boundingRectWithContent(content: content), height: CGFloat(SSLabelHeight))
        self.text = content
        view.addSubview(self)
        UIView.animate(withDuration: TimeInterval(SSDrution), delay: 0.0, options: UIViewAnimationOptions.curveLinear, animations: { 
            self.frame.origin.x = -self.frame.size.width
            }) { (true) in
                self.removeFromSuperview()
        }
    }

    func boundingRectWithContent(content:String) -> CGFloat {
        let option:NSStringDrawingOptions = [.usesLineFragmentOrigin,.usesFontLeading,.truncatesLastVisibleLine]
        var size = CGSize();
         size = content.boundingRect(with: CGSize(width: 9999,height: SSLabelHeight), options: option, attributes: [NSFontAttributeName : self.font], context: nil).size

//          size = content.boundingRect(with: CGSize(width: 9999,height: SSLabelHeight), options: OCUtils.stringDrawingOptions(), attributes: [NSFontAttributeName : self.font], context: nil).size
        return size.width
    }

}
