//
//  ContentView.swift
//  tareaGraficas
//
//  Created by Leo A.Molina on 27/09/24.
//

import SwiftUI

let backgroundC = Color(red: 46/255, green: 46/255, blue: 46/255)
let neonRed = Color(red: 255/255, green: 7/255, blue: 58/255)
struct ContentView: View {
    @State private var changeView: Bool = false
    var body: some View {
        if changeView {
            MainView()
        } else{
            VStack(alignment: .center) {
                
                Spacer()
                
                Image(systemName: "figure.dance")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 125)
                    .foregroundStyle(.red)
                    .padding(10)
                Text("Gráficas de ")
                    .font(.system(size: 25))
                    .foregroundStyle(.white)
                Text("KPOP")
                    .font(.system(size: 65))
                    .font(.title)
                    .bold()
                    .foregroundStyle(neonRed)
                    .padding(.bottom, 100)
                
                Spacer()
                
                
                Button("Comenzar"){
                    changeView.toggle()
                }
                .frame(maxWidth: .infinity)
                .padding(15)
                .font(.system(size: 25))
                .foregroundStyle(.white)
                .background(neonRed)
                .clipShape(.buttonBorder)
                .offset(y: -20)
                
                Text("App hecha por Leonardo Avila Molina - A00835641")
                    .font(.system(size: 13))
                    .foregroundColor(.white)
                
            }
            .padding()
            .background(backgroundC)
        }
    }
}

#Preview {
    ContentView()
}
