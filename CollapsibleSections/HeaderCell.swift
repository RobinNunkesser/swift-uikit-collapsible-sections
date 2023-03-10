//
//  HeaderCell.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

class HeaderCell : UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var arrowLabel: UILabel?
    
    func setCollapsed(collapsed: Bool) {
       arrowLabel?.rotate(collapsed ? 0.0 : .pi)
    }
}
