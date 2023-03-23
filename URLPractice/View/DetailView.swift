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
                Text(beer.tagline)
                    .font(.title3)
                Text("First Brewed:\(beer.firstBrewed)")
                Text("Description")
                    .font(.title3)
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

