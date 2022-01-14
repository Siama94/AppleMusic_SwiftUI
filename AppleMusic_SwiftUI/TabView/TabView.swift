//
//  TabView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/10/21.
//

import SwiftUI

struct AppTabView: View {

    @State var expand = false
    @Namespace var animation

    init() {
        UITabBar.appearance()
            .backgroundColor =  UIColor(named: "GrayColor")
    }
    
    var body: some View {
        ZStack(alignment:
                Alignment(horizontal: .center,
                          vertical: .bottom),
               content: {
                TabView {

                    LibraryView()
                        .tabItem {
                            Image(systemName: "music.note.house.fill")
                            Text("Медиатека")
                        }

                    RadioView()
                        .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                        }

                    SearchMainView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Поиск")
                        }
                }
                .accentColor(.red)

            PlayerView(expand: $expand, animation: animation)
        })
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
