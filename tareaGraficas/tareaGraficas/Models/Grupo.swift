//
//  Grupo.swift
//  tareaGraficas
//
//  Created by Leo A.Molina on 27/09/24.
//

import Foundation

struct KGroup : Codable, Identifiable {
    var id: Int
    var name: String
    var members: [String]
    var views: Int
    var albumList: [Int]
    var popularMVStreams: Int
    var memberAges: [Int]
    
    init(id: Int, name: String, members: [String], views: Int, albumList: [Int], popularMVStreams: Int, memberAges: [Int]) {
        self.id = id
        self.name = name
        self.members = members
        self.views = views
        self.albumList = albumList
        self.popularMVStreams = popularMVStreams
        self.memberAges = memberAges
    }
}
