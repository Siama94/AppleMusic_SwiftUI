//
//  FilterItemsModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/11/21.
//

import Foundation

struct FilterItemsModel {
    var icon: String
    var title: String
}

extension FilterItemsModel: Hashable {
    static var data = [
        FilterItemsModel(icon: "music.note.list", title: "Плейлисты"),
        FilterItemsModel(icon: "music.mic", title: "Артисты"),
        FilterItemsModel(icon: "square.stack", title: "Альбомы"),
        FilterItemsModel(icon: "music.note", title: "Песни"),
        FilterItemsModel(icon: "tv", title: "Телешоу и фильмы"),
        FilterItemsModel(icon: "tv.music.note", title: "Видеоклипы"),
        FilterItemsModel(icon: "guitars", title: "Жанры"),
        FilterItemsModel(icon: "person.2.square.stack", title: "Сборники"),
        FilterItemsModel(icon: "music.quarternote.3", title: "Авторы"),
        FilterItemsModel(icon: "arrow.down.circle", title: "Загружено"),
        FilterItemsModel(icon: "music.note.house", title: "Домашняя коллекция")
    ]
}
