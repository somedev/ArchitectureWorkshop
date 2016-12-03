//
//  ProgrammersRepository.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public class ProgrammersRepository:EntityGateway {
    
    public func fetchProgrammers() -> [Programmer] {
        return [
            Programmer(name:"Ed", emacs:1, caffein:10, rating:5, lastInterviewDate:Date(), favorite:false),
            Programmer(name:"Ted M", emacs:1, caffein:10, rating:5, lastInterviewDate:Date(), favorite:true)
        ]
    }
}
