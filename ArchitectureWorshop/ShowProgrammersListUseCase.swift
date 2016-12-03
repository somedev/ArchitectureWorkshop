//
//  ShowProgrammersListUseCase.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation


public class ShowProgrammersListUseCase:ShowProgrammersListUsecaseType {
    
    private let entityGateway:EntityGateway
    private weak var presenter:ProgrammersListPresentation?
    
    public init(entityGateway:EntityGateway, presenter:ProgrammersListPresentation) {
        self.entityGateway = entityGateway
        self.presenter = presenter
    }
    
    public func showProgrammers() {
        
        //grab
        let programmers = entityGateway.fetchProgrammers()
        
        //process
        let programmersToShow:[ProgrammersDisplayData] = programmers.flatMap({p in return ProgrammersDisplayData(programmer:p)})

        //pass to presenter
        presenter?.presentParamers(p: programmersToShow)
    }
}
