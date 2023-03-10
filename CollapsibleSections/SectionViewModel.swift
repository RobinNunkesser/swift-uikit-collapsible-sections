//
//  CellViewModel.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import Foundation

class SectionViewModel {
    var sectionTitle: String = ""
    var sectionCells: [CellViewModel]
    var isCollapsible: Bool = true
    var isCollapsed: Bool = false
    
    internal init(sectionTitle: String, sectionCells: [CellViewModel])
    {
        self.sectionTitle = sectionTitle
        self.sectionCells = sectionCells
    }
}

