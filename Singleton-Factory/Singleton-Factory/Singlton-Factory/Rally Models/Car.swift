//
//  Car.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import Foundation

struct Car: RallyProtocol {
    var name = "Car"
    var description = "VAZ 2108"
    
    func start() {
        print("car start")
        let randomTime:TimeInterval = TimeInterval(UInt64.random(in: 0 ... 10))
        DispatchQueue.global().asyncAfter(deadline: .now() + randomTime) {
            print("🏁 car finish!")
        }
    }
}
