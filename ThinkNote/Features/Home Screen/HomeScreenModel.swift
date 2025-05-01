//
//  HomeScreenModel.swift
//  ThinkNote
//
//  Created by Richa Kalani on 27/04/25.
//

import Foundation
struct NotesDataModel: Codable, Hashable {
    var id = UUID()
    var title: String?
    var description: String?
}
