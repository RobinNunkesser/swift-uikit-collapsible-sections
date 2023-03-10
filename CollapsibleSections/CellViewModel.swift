//
//  CellViewModel.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

import Foundation

protocol CellViewModel {
    var type: CellType { get }
    var sectionTitle: String { get }
       var rowCount: Int { get }
       var isCollapsible: Bool { get }
       var isCollapsed: Bool { get set }
}

extension CellViewModel {
   var rowCount: Int {
      return 1
   }
   
   var isCollapsible: Bool {
      return true
   }
}
