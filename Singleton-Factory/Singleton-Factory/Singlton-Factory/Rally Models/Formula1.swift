//
//  Formula1.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import Foundation

struct Formula1: RallyProtocol {
    var name = "Formula 1"
    
    var description = "No comments, only Formula 1)"
    
    func start() {
        print("Start formula 1")
    }
}
