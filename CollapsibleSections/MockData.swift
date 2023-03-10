//
//  MockData.swift
//  CollapsibleSections
//
//  Created by Prof. Dr. Nunkesser, Robin on 10.03.23.
//

let items  = [
    CellViewModel(title:"Title 1", subtitle:"Subtitle 1"),
    CellViewModel(title:"Title 2", subtitle:"Subtitle 2")
]

let sections = [
    SectionViewModel(sectionTitle: "Section 1", sectionCells: [
        CellViewModel(title:"Section 1, Title 1", subtitle:"Subtitle 1"),
        CellViewModel(title:"Section 1, Title 2", subtitle:"Subtitle 2") ]),
    SectionViewModel(sectionTitle: "Section 2", sectionCells: [
        CellViewModel(title:"Section 2, Title 1", subtitle:"Subtitle 1"),
        CellViewModel(title:"Section 2, Title 2", subtitle:"Subtitle 2") ]),
    SectionViewModel(sectionTitle: "Section 3", sectionCells: [
        CellViewModel(title:"Section 3, Title 1", subtitle:"Subtitle 1"),
        CellViewModel(title:"Section 3, Title 2", subtitle:"Subtitle 2") ])
]
