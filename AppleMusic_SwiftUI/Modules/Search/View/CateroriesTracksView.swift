//
//  CateroriesTracksView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/6/22.
//

import SwiftUI

struct CateroriesTracksView: View {

    @ObservedObject var dataModel = StationItemsModelsData()
    private let rows  = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {

            LazyHGrid(rows: rows) {

                ForEach(dataModel.data, id: \.id) { data in

                    HStack {
                        VStack(alignment: .leading) {
                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.widthForImage,
                                       height: Metric.heightForImage)
                                .scaledToFill()
                                .cornerRadius(Metric.cornerRadiusForImage)

                            Text(data.name)
                        }
                    }
                }
            }
            .padding(.leading, Metric.leadingPaddingForTracks)
        }
    }
}

// MARK: - Metric

extension CateroriesTracksView {

    enum Metric {
        static let widthForImage: CGFloat = 150
        static let heightForImage: CGFloat = widthForImage
        static let cornerRadiusForImage: CGFloat = 5

        static let leadingPaddingForTracks: CGFloat = 20
    }
}

// MARK: - Previews

struct CateroriesTracksView_Previews: PreviewProvider {
    static var previews: some View {
        CateroriesTracksView()
    }
}
