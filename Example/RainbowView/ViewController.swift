//
//  ViewController.swift
//  RainbowView
//
//  Created by GabrielBor on 11/16/2017.
//  Copyright (c) 2017 GabrielBor. All rights reserved.
//

import UIKit
import RainbowView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let teste = RainbowView(frame: self.view.bounds)
        teste.colors = [.red, .orange, .yellow, .green, .blue, .purple]
        self.view.addSubview(teste)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

