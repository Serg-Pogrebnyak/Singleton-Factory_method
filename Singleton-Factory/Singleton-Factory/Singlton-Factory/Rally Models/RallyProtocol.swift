//
//  RallyProtocol.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import Foundation

protocol RallyProtocol {
    var name: String {get}
    var description: String {get}
    
    func start()
}
