//
//  RallyFabric.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import Foundation

enum TypeRallyVehicle {
    case car
    case formula1
    case marshut
}

class RallyFabric {
    static let shared = RallyFabric()
    
    func createRallyVehicle(type: TypeRallyVehicle) -> RallyProtocol {
        switch type {
        case .car:
            return Car()
        case .formula1:
            return Formula1()
        case .marshut:
            return Marshut()
        }
    }
}
