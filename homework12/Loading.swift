//
//  Loading.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/28/24.
//

import SwiftUI

struct Loading: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 14)
                .frame(width: 100, height: 100)
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isLoading)
                .onAppear() {
                    isLoading = true
            }
        }
    }
}

#Preview {
    Loading()
}
