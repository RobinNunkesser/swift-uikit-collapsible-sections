//
//  HeaderCell.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

protocol HeaderCellDelegate: AnyObject {
    func toggleSection(header: HeaderCell, section: Int)
}

class HeaderCell : UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var arrowLabel: UILabel?
    weak var delegate: HeaderCellDelegate?
    
    var section: Int = 0
    
    override func awakeFromNib() {
       super.awakeFromNib()
       addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapHeader)))
    }
    @objc private func didTapHeader() {
        delegate?.toggleSection(header: self, section: section)
    }
    
    func setCollapsed(collapsed: Bool) {
       //arrowLabel?.rotate(collapsed ? 0.0 : .pi)
    }
}
