//
//  ViewController.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate var rallyMember = [RallyProtocol]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addMember()
        for i in rallyMember {
            i.start()
        }
    }

    func addMember() {
        rallyMember.append(RallyFabric.shared.createRallyVehicle(type: .car))
    }
}

