//
//  RadioItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import Foundation
import SwiftUI

struct RadioItemsModel {
    var category: RadioCategory
    let id = UUID()
    var name: String
    var title: String
    var image: String
}

enum RadioCategory: String {
    case exclusive = "экслюзив"
    case favorite = "избранная радиостанция"
}

extension RadioItemsModel: Hashable {
    static var data = [
        RadioItemsModel(category: RadioCategory.exclusive,
                        name: "Хиты",
                        title: "То, что слушают прямо сейчас.",
                        image: "hits"),
        RadioItemsModel(category: RadioCategory.favorite,
                        name: "Поп-музыка",
                        title: "Все топ-хиты.",
                        image: "pop"),
        RadioItemsModel(category: RadioCategory.favorite,
                        name: "Чилаут",
                        title: "Электронная медитация.",
                        image: "chil"),
        RadioItemsModel(category: RadioCategory.favorite,
                        name: "Танцевальная музыка",
                        title: "Соверменные и будущие хиты.",
                        image: "dance"),
        RadioItemsModel(category: RadioCategory.favorite,
                        name: "Хип-хоп",
                        title: "Идеальные биты и рифмы.",
                        image: "hip-hop rus"),
        RadioItemsModel(category: RadioCategory.favorite,
                        name: "Хиты на русском",
                        title: "Лучшее из русских хитов.",
                        image: "hits rus")
    ]
}
