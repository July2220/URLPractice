//
//  DetailView.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var networkManager: NetworkManager
    var beer: Beer
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(beer.name)
                    .font(.title)
                Divider()
                Text("First Brewed:\(beer.firstBrewed)")
                    .font(.title3)
                Text(beer.tagline)
                    .font(.title3)
                Divider()
                Text("Description")
                    .font(.title2)
                Text(beer.description)
                    .font(.title3)
            }
            .padding()
            Spacer()
            VStack {
                AsyncImage(url: URL(string:beer.imageURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 200)
            }
        }
    }
}

/*
struct DetailView_Previews: PreviewProvider {
    static let networkManager = NetworkManager()
    
    static var previews: some View {
        DetailView(beer: <#T##Beer#>)//[0]有问题，先注释掉
            .environmentObject(networkManager)
    }
}
*/

