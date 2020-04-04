//
//  ContentView.swift
//  ARKit_SwiftUI
//
//  Created by haoboxuxu on 2020/4/5.
//  Copyright © 2020 haoboxuxu All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ARView().edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
