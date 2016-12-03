//
//  EntityGateway.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public protocol EntityGateway {
    func fetchProgrammers() -> [Programmer]
}
