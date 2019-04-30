//
//  11Marshut.swift
//  Singleton-Factory
//
//  Created by Sergey Pohrebnuak on 4/30/19.
//  Copyright © 2019 Sergey Pohrebnuak. All rights reserved.
//

import Foundation

struct Marshut: RallyProtocol {
    var name = "11 marshut"
    
    var description = "Run, Vasia, RUN!"
    
    func start() {
        print("Start 11 marshut")
        let randomTime:TimeInterval = TimeInterval(UInt64.random(in: 0 ... 10))
        DispatchQueue.global().asyncAfter(deadline: .now() + randomTime) {
            print("🏁 11 marshut finish!")
        }
    }
}
