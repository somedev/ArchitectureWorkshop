//
//  ProgrammerViewHolder.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public protocol ProgrammerViewHolder {
    func displayName(n:String)
    func displayDate(d:Date)
    func showFaworite(f:Bool)
}
