    //
//  File.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public final class ParametersListPresenter:ProgrammersListPresentation {
    
    private var programmersData:[ProgrammersDisplayData] = []
    public var useCase:ShowProgrammersListUsecaseType? = nil
    public weak var view:ShowProgrammersView? = nil

    //MARK: - ProgrammersListPresentation
    
    public func presentParamers(p:[ProgrammersDisplayData]) {
        programmersData = p
        view?.show()
    }
    
    public func getCout() -> Int {
        return programmersData.count
    }
    
    public func viewCreated() {
        useCase?.showProgrammers()
    }
    
    public func configure(holder:ProgrammerViewHolder, position:Int){
        let data = programmersData[position]
        holder.displayDate(d: data.lastInterviewDate)
        holder.displayName(n: data.name)
        holder.showFaworite(f: data.isFavorite)
    }
}
