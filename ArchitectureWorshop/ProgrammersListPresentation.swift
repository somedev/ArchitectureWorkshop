//
//  ProgrammersListPresentation.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public protocol ProgrammersListPresentation: class {
    func presentParamers(p: [ProgrammersDisplayData])
    func viewCreated()
    func getCout() -> Int
    func configure(holder: ProgrammerViewHolder, position: Int)
}
