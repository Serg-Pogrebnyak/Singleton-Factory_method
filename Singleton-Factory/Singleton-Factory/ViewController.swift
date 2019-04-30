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
    }

    @IBAction func addMember(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            rallyMember.append(RallyFabric.shared.createRallyVehicle(type: .car))
        case 1:
            rallyMember.append(RallyFabric.shared.createRallyVehicle(type: .formula1))
        case 2:
            rallyMember.append(RallyFabric.shared.createRallyVehicle(type: .marshut))
        default:
            fatalError()
        }
    }
    
    @IBAction func startRally(_ sender: Any) {
        for i in rallyMember {
            i.start()
        }
        print("🥳🥳🥳🥳🥳All member start🥳🥳🥳🥳🥳")
        rallyMember.removeAll()
    }
}

