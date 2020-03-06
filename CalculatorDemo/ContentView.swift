//
//  ContentView.swift
//  CalculatorDemo
//
//  Created by ZX on 2020/3/6.
//  Copyright © 2020 ZX. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("+")
            .font(.system(size: 38))
            .foregroundColor(.white)
            .frame(width: 88, height: 88) .background(Color("operatorBackground"))
            .cornerRadius(44)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
