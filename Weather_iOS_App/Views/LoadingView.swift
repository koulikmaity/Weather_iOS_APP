//
//  ProgressView.swift
//  Weather_iOS_App
//
//  Created by Koulik Maity on 24/07/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
