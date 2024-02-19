//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 鈴木航太 on 2024/02/18.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
