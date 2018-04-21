//
//  ProgrammeCell.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import UIKit

class ProgrammeCell: UITableViewCell, ProgrammerViewHolder {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var favoriteSwitch: UISwitch!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        dateLabel.text = nil
        favoriteSwitch.isOn = false
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    // ProgrammerViewHolder
    func displayName(n: String) {
        nameLabel.text = n
    }

    func displayDate(d: Date) {
        let utils = DateFormatUtils(date: d)
        dateLabel.text = utils.dateString
    }

    func showFaworite(f: Bool) {
        favoriteSwitch.isOn = f
    }
}
