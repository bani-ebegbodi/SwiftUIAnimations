//
//  RectangleLoading.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/28/24.
//

import SwiftUI

struct RectangleLoading: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Text("Loading")
                .font(.system(.body, design: .rounded))
                .bold()
                .offset(x: 0, y: -25)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemGray5), lineWidth: 3)
                .frame(width: 250, height: 3)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.green, lineWidth: 3)
                .frame(width: 30, height: 3)
                .offset(x: isLoading ? 110 : -110, y: 0)
                .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isLoading)
            
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

#Preview {
    RectangleLoading()
}
