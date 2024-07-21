//
//  DotaService.swift
//  PokeCard
//
//  Created by Riza Radia Rivaldo on 17/07/24.
//

import Foundation

protocol DotaServicesProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    func getDotas(endPoint: NetworkFactory) async throws -> [DotaHeroesModel]
}

class DotaServices: DotaServicesProtocol {
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol) {
        self.networker = networker
    }
    
    func getDotas(endPoint: NetworkFactory) async throws -> [DotaHeroesModel] {
        return try await networker.taskAsync(type: [DotaHeroesModel].self, endPoint: endPoint, isMultipart: false)
    }
}
