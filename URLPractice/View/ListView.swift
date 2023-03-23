//
//  ListView.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var networkManager: NetworkManager//@EnvironmentObject，笔记见 notion
    @State var isLoading = true
    
    var body: some View {
        NavigationView {
            ZStack {
                if isLoading {
                    ProgressView()
                }
                List(networkManager.beers) { beer in
                    NavigationLink {
                        DetailView(beer: beer)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(beer.name)
                            Text(beer.tagline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Beers In The World")
            .onAppear {
                self.networkManager.fetchData()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(NetworkManager())
    }
}
