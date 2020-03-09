//
//  ContentView.swift
//  CalculatorDemo
//
//  Created by ZX on 2020/3/6.
//  Copyright © 2020 ZX. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let row : [CalculatorButtonItem] = [
        .digit(1),.digit(2),.digit(3),.op(.plus)
    ]
    
    
    
    var body: some View {
        HStack{
            ForEach(row,id: \.self){item in
                CalculatorButton(title: item.title, size: item.size, backgroundColorName: item.backgroundColorName, action: {
                    
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CalculatorButton: View {
    let fontSize:CGFloat = 38
    let title : String
    let size : CGSize
    let backgroundColorName : String
    let action:() -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height) .background(Color(backgroundColorName))
                .cornerRadius(size.width/2)
        })
    }
}
