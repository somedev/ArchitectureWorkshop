//
//  ProgrammersDisplayData.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public struct ProgrammersDisplayData {
    let name: String
    let isFavorite: Bool
    let lastInterviewDate: Date

    public init(programmer: Programmer) {
        name = programmer.name
        isFavorite = programmer.favorite
        lastInterviewDate = programmer.lastInterviewDate
    }
}
