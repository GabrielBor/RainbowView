//
//  RainbowView.swift
//  Pods-RainbowView_Example
//
//  Created by Gabriel Borges on 16/11/17.
//

import UIKit

public class RainbowView: UIView {
    
    public var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var colorCounter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        if #available(iOS 10.0, *) {
            let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in
                UIView.animate(withDuration: 2.0, animations: {
                    self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
                    self.colorCounter += 1
                })
            }
            scheduledColorChanged.fire()
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
