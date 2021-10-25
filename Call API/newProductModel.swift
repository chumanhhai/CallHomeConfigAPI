//
//  newProductModel.swift
//  Call API
//
//  Created by Hải Chu on 21/10/2021.
//

import Foundation

struct NewProductModel: Codable {
    var title: String?
    var description: String?
}

struct CategoryModel: Codable {
    var newProduct: NewProductModel?
}

struct MoreConfigModel: Codable {
    var action_content: String?
    var categories: [CategoryModel]?
}

struct HomeConfigModel: Codable {
    var moreConfig: [MoreConfigModel]?
}
