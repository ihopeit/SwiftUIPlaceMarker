//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by David Euler on 2021/2/26.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").resizable().frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 8))
            .shadow(radius: 50)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
