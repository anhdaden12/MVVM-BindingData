//
//  InfoTableViewCell.swift
//  Rxswift-BindingData
//
//  Created by NgocNB on 11/16/20.
//  Copyright © 2020 NgocNB. All rights reserved.
//

import UIKit

class InfoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneySingleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moneyMutipleLabel: UILabel!
    @IBOutlet weak var dateTime: UILabel!
    @IBOutlet weak var bottomStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func bindCell(isShow:Bool,obj: RentModel) {
        moneySingleLabel.isHidden = isShow ? true : false
        bottomStackView.isHidden = isShow ? false : true
        descriptionLabel.isHidden = isShow ? false : true
        nameLabel.text = obj.name
        dateTime.text = obj.date
        descriptionLabel.text = obj.des
        moneyMutipleLabel.text = obj.money + "đ"
        moneySingleLabel.text = obj.money + "đ"
    }
    
}
