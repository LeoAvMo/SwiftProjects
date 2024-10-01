//
//  ListElementView.swift
//  tareaGraficas
//
//  Created by Leo A.Molina on 28/09/24.
//

import SwiftUI

struct ListElementView: View {
    public var logoX: String = "Twice"
    public var nameX: String = "Twice"
    var body: some View {
        HStack {
            Image(logoX)
                .resizable()
                .frame(width: 125, height: 100)
                .scaledToFit()
            Text(nameX)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    ZStack {
        var nameX = "Twice"
        var logoX = "Twice"
        ListElementView(logoX: logoX, nameX: nameX)
    }
    
}
