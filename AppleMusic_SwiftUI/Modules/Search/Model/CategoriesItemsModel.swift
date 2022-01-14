//
//  CategoriesItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/7/22.
//

import Foundation

struct CategoriesItemsModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

extension CategoriesItemsModel {
    static let data = [
        CategoriesItemsModel(image: "зимнее время",
                             title: "Зимнее время"),
        CategoriesItemsModel(image: "поп на русском",
                             title: "Поп на русском"),
        CategoriesItemsModel(image: "поп",
                             title: "Поп"),
        CategoriesItemsModel(image: "альтернатива",
                             title: "Альтернатива"),
        CategoriesItemsModel(image: "пространственное звучание",
                             title: "Пространственное звучание"),
        CategoriesItemsModel(image: "хип-хоп на русском",
                             title: "Хип-хоп на русском"),
        CategoriesItemsModel(image: "блюз",
                             title: "Блюз"),
        CategoriesItemsModel(image: "музыка 90-х",
                             title: "Музыка 90-х")
    ]
}
