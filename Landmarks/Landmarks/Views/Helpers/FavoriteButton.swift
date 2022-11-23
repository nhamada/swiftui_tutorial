//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/23.
//

import SwiftUI

struct FavoriteButton: View {
    /*
     * Change inside view => back propagate to data source
     */
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            /*
             * iconOnly
             * => hide label, but improve accessibility
             */
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
