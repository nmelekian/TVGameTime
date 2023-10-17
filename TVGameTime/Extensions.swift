//
//  Extensions.swift
//  TVGameTime
//
//  Created by Nick Melekian on 10/17/23.
//

import Foundation


extension Categories {
    func getChild() -> String {
        switch self {
        case .artLiterature:
            return "arts_and_literature"
        case .filmTV:
            return "film_and_tv"
        case .foodDrink:
            return "general_knowledge"
        case .GK:
            return "general_knowledge"
        case .Geography:
            return self.rawValue.lowercased()
        case .History:
            return self.rawValue.lowercased()
        case .Music:
            return self.rawValue.lowercased()
        case .Science:
            return self.rawValue.lowercased()
        case .societyCulture:
            return "society_and_culture"
        case .sportLeisure:
            return "sport_and_leisure"
        }
    }
}
