//
//  StationsItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import Foundation

struct StationItemsModels {
    let id = UUID()
    var image: String
    var name: String
    var title: String
}

extension StationItemsModels: Hashable {
    static var data = [
        StationItemsModels(image: "blonded",
                           name: "blonded RADIO",
                           title: "Демонстрация электичного вкуса"),
        StationItemsModels(image: "stmpd",
                           name: "STMPD Radio",
                           title: "Эксклюзивные треки"),
        StationItemsModels(image: "fatboyslim",
                           name: "Fatboy Slim Radio",
                           title: "Классика 90-х и эксклюзивные бутлеги"),
        StationItemsModels(image: "the echo chamber",
                           name: "The Echo Chamber",
                           title: "Слушаем музыку вместе с Mike D"),
        StationItemsModels(image: "one mix",
                           name: "One Mix",
                           title: "Микс от лучшых в электронной музыке"),
        StationItemsModels(image: "st.vincents",
                           name: "St.Vincent's",
                           title: "Сингер-сонграйтер рекомендует")
    ]
}
