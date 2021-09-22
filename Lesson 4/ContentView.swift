//
//  ContentView.swift
//  Lesson 4
//
//  Created by Marcello Lima on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var widthRetangle: Double?
    @State var heightRetangle: Double?
    var body: some View {
        
        VStack(spacing: 0) {
            GeometryReader { geo in
                ZStack {
                    Rectangle()
                        .foregroundColor(.green)
                        .onTapGesture {
                            widthRetangle = geo.size.width
                            heightRetangle = geo.size.height
                            printDimensions(color: "green", width: widthRetangle!, height: heightRetangle!)
                        }
                    Rectangle()
                        .foregroundColor(.red).frame(width: ((geo.size.width * 2) / 3) , height: (geo.size.height / 4)  , alignment: .top)
                        .onTapGesture {
                            widthRetangle = ((geo.size.width * 2) / 3)
                            heightRetangle =  geo.size.height / 4
                            printDimensions(color: "red", width: widthRetangle!, height: heightRetangle!)
                        }
                }
            }
            
            GeometryReader { geo in
                
                HStack(spacing: 0) {
                    Rectangle()
                        .foregroundColor(.purple).frame(width: geo.size.width / 2, alignment: .leading)
                        .onTapGesture {
                            widthRetangle = geo.size.width / 2
                            heightRetangle =  geo.size.height
                            printDimensions(color: "purple", width: widthRetangle!, height: heightRetangle!)
                        }
                    Rectangle()
                        .foregroundColor(.orange).frame(width: geo.size.width / 2, alignment: .trailing)
                        .onTapGesture {
                            widthRetangle = geo.size.width / 2
                            heightRetangle =  geo.size.height
                            printDimensions(color: "orange", width: widthRetangle!, height: heightRetangle!)
                        }
                }
            }
        }.ignoresSafeArea()
        
        
    }
    func printDimensions(color: String, width: Double, height: Double) {
        print ("\(color) rectangle -> Width: \(width). Height: \(height).")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
