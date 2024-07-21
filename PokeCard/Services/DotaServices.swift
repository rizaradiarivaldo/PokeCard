//
//  DotaService.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 17/07/24.
//

import Foundation

protocol DotaService {
    var networker: NetworkProtocol { get }
    func getDotas(endPoint: NetworkFactory) async throws -> [DotaHeroesModel]
}
