//
//  DateFormatUtils.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import Foundation

public class DateFormatUtils {
    
    private let date:Date
    private let formater:DateFormatter
    
    
    init(date:Date) {
        self.date = date
        formater = DateFormatter()
        formater.dateFormat = "dd:MM:YYYY HH:mm"
    }
    
    public var dateString:String {
        return formater.string(from: date)
    }
}
