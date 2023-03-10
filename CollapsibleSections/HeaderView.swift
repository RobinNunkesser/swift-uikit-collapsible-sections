//
//  HeaderView.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import UIKit

protocol HeaderViewDelegate: AnyObject {
    func toggleSection(header: HeaderView, section: Int)
}

class HeaderView : UITableViewHeaderFooterView {
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var arrowLabel: UILabel?
    weak var delegate: HeaderViewDelegate?
    
    var section: Int = 0
    
    static var nib:UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
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
