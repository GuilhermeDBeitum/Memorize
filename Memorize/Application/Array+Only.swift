//
//  Array+Only.swift
//  Memorize
//
//  Created by Guilherme Douglas Beitum on 27/06/22.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ?  first : nil
    }
}
