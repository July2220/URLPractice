//
//  ContentView.swift
//  URLPractice
//
//  Created by july on 2023/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ListView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NetworkManager())
    }
}
