//
//  CellViewModel.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import Foundation

struct SectionViewModel {
    let sectionTitle: String
    var sectionCells: [CellViewModel]
    let isCollapsible: Bool = true
    var isCollapsed: Bool = false
}

