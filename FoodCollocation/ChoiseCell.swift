//
//  ChoiseCell.swift
//  FoodCollocation
//
//  Created by Feng Chang on 5/27/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class ChoiseCell: UITableViewCell {
    
    @IBOutlet weak var vegeLabel: UILabel!
    @IBOutlet weak var meatLalel: UILabel!
    @IBOutlet weak var snackLabel: UILabel!
    @IBOutlet weak var calorieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCellValue(vegetable: Vegetable, meat: Meat, snack: Snack) {
        vegeLabel.text = vegetable.name
        meatLalel.text = meat.name
        snackLabel.text = snack.name

        let foodCalorie = vegetable.calorie! + meat.calorie! + snack.calorie!
        
        calorieLabel.text = String(foodCalorie)
     }
    
}
