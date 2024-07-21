//
//  DetailHeroView.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 20/07/24.
//

import SwiftUI

struct DetailHeroView: View {
    var hero: DotaHeroesModel?
    
    var body: some View {
        VStack {
            Text(hero?.localizedName ?? "")
        }
    }
}

#Preview {
    DetailHeroView()
}
