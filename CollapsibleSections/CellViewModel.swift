//
//  CellViewModel.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import Foundation

class CellViewModel {
    let title : String
    let subtitle : String
    
    internal init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}
