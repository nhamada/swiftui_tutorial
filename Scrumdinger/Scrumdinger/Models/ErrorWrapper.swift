//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Naohiro Hamada on 2023/05/06.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(),
         error: Error,
         guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
