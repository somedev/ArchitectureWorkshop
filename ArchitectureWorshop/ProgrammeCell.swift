//
//  ProgrammeCell.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import UIKit

class ProgrammeCell: UITableViewCell,ProgrammerViewHolder {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.nameLabel.text = nil
        self.dateLabel.text = nil
        self.favoriteSwitch.isOn = false
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    //ProgrammerViewHolder
    func displayName(n:String) {
        nameLabel.text = n
    }
    
    func displayDate(d:Date) {
        let utils = DateFormatUtils(date: d)
        dateLabel.text = utils.dateString
    }
    
    func showFaworite(f:Bool) {
        favoriteSwitch.isOn = f
    }
}
