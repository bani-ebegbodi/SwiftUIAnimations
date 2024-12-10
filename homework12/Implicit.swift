//
//  Implicit.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/28/24.
//

import SwiftUI

struct Implicit: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(circleColorChanged ? Color(.systemGray5) : .red)
                .animation(.default, value: circleColorChanged)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(heartColorChanged ? .red : .white)
                .font(.system(size: 100))
                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
                .animation(.default, value: heartSizeChanged)
        }
        .onTapGesture {
            circleColorChanged.toggle()
            heartColorChanged.toggle()
            heartSizeChanged.toggle()
        }
    }
}

#Preview {
    Implicit()
}
