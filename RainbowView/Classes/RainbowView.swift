//
//  RainbowView.swift
//  Pods-RainbowView_Example
//
//  Created by Gabriel Borges on 16/11/17.
//

import UIKit

public class RainbowView: UIView {
    
    public var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    var timer = Timer()
    var colorCounter = 0
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.startTimerWith(time: 2.0, selector: #selector(animationColorsView))
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func startTimerWith(time: TimeInterval, selector: Selector) {
        self.timer = Timer.scheduledTimer(timeInterval: time, target: self, selector: selector, userInfo: nil, repeats: true)
    }
    
    @objc func animationColorsView() {
        UIView.animate(withDuration: 2.0, animations: {
            self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
            self.colorCounter += 1
        })
    }
    
}
