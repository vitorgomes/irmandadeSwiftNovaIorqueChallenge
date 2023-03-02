//
//  ContentView.swift
//  desafioNovaIorque
//
//  Created by Vitor Gomes on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /*
         MARK: Easy mode
         ZStack {
             Circle()
                 .fill(Color.blue)
                 .frame(width: 200, height:200)
                 .id(1)
             
             Image(systemName: "heart.fill")
                 .font(.system(size: 110))
                 .foregroundColor(.red)
                 .id(2)
             
             Capsule()
                 .fill(Color.orange)
                 .frame(width: 300, height: 40)
                 .id(3)
             
             Text("Irmandade Swift")
                 .foregroundColor(.white)
                 .font(.system(size: 30))
                 .id(4)
         }
         */
 
        /* MARK: Hard mode
           Creating the heart view
         */
        Image(systemName: "heart.fill")
            .foregroundColor(Color.red)
            .font(.system(size: 128))
            .background(circle())
            .overlay(irmandadeView())
            .id(2)

    }
}

// MARK: Creating the capsule view, used as overlay
struct irmandadeView: View {
    var body: some View {
        VStack {
            Text("Irmandade Swift")
                .frame(width: 300, height: 40, alignment: .center)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .background(Color.orange)
                .cornerRadius(25)
        } .id(3)
    }
}

// MARK: Creating the circle view, used as background
struct circle: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 220, height: 220, alignment: .center)
        } .id(1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
