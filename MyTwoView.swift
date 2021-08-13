//
//  MyTwoView.swift
//  Pods-TestOne_Example
//
//  Created by hh on 2021/8/13.
//

import UIKit


public protocol Then {}


extension Then where Self: AnyObject {
    
    public func then(_ block: (Self) throws -> Void)  rethrows -> Self {
        try block(self)
        return self
    }
}


class MyTwoView: UIView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        initUI()
    }
    
    
    func initUI() -> () {
        
        let objc = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        objc.backgroundColor = UIColor.red
        self.addSubview(objc)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}




