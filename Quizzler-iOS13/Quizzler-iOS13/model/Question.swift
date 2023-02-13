//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Administrator on 10/10/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    var text: String
    var answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
