//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Guilherme Douglas Beitum on 27/06/22.
//

import Foundation
extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
