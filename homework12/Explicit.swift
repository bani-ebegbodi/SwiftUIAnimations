//
//  Explicit.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/28/24.
//

import SwiftUI

struct Explicit: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(circleColorChanged ? Color(.systemGray5) : .red)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(heartColorChanged ? .red : .white)
                .font(.system(size: 100))
                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
        }
        .onTapGesture {
            withAnimation(.spring(.bouncy, blendDuration: 1.0)) {
                self.circleColorChanged.toggle()
                self.heartColorChanged.toggle()
                self.heartSizeChanged.toggle()
            }
        }
    }
}

#Preview {
    Explicit()
}
