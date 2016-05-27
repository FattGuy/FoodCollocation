//
//  PurposeCell.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/26/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class PurposeCell: UITableViewCell {

    @IBOutlet weak var purposeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellValue(foodPurpose: FoodPurpose) -> Void {
        
        self.purposeLabel.text = foodPurpose.purpose
    }

}
