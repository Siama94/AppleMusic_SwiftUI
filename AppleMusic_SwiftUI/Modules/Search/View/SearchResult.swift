//
//  SearchResult.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/6/22.
//

import SwiftUI

struct SearchResult: View {

    @ObservedObject var dataModel = StationItemsModelsData()
    @Binding var searchText: String
    private let columns  = [GridItem(.flexible())]

    var body: some View {
        LazyVGrid(
            columns: columns,
            alignment: .leading) {

                Text("Недавние поиски")
                    .font(.title3).bold()

                ForEach(dataModel.data.filter({
                    "\($0.title)".contains(searchText) || "\($0.name)".contains(searchText)
                }), id: \.id) { data in

                        HStack {

                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.widthForImage,
                                       height: Metric.heightForImage)
                                .scaledToFill()
                                .cornerRadius(Metric.cornerRadiusForImage)

                            VStack(alignment: .leading) {

                                Text(data.name)
                                    .font(.system(size: Metric.sizeFont))

                                Text(data.title)
                                    .foregroundColor(.gray)
                                    .font(.system(size: Metric.sizeFont))
                            }

                            Spacer(minLength: 0)

                            Button {} label: {
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.pink)
                                    .font(.system(size: Metric.sizeFont))
                            }
                        }

                    Divider()
                        .padding(.leading, Metric.leadingPaddingForDivider)
                        .padding(.trailing, Metric.trailingPaddingForDivider)
                }
            }
    }
}

// MARK: - Metric

extension SearchResult {

    enum Metric {
        static let widthForImage: CGFloat = 45
        static let heightForImage: CGFloat = widthForImage
        static let cornerRadiusForImage: CGFloat = 5

        static let sizeFont: CGFloat = 16

        static let leadingPaddingForDivider: CGFloat = 45
        static let trailingPaddingForDivider: CGFloat = 20

    }
}

// MARK: - Previews

struct SearchResultAppleMusic_Previews: PreviewProvider {

    @State static var searchText = ""
    
    static var previews: some View {
        SearchResult(searchText: $searchText)
    }
}
