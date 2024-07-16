//
//  AppData.swift
//  ZoomTransitionsDev
//
//  Created by Stewart Lynch on 2024-07-15.
//

import Foundation

struct MyImage: Identifiable, Hashable {
    var id: String { imageName }
    var imageName: String
    var name: String
    var info: String
    
    static var samples: [MyImage] {
        [
            MyImage(imageName: "Catalina", name: "Catalina Island", info: "Catalina Island is a beautiful island located off the coast of Southern California, known for its stunning beaches and outdoor activities."),
            MyImage(imageName: "CherryBlossom", name: "Cherry Blossom Festival", info: "The Cherry Blossom Festival is an annual event celebrated in various parts of the world, known for the blooming of cherry blossom trees."),
            MyImage(imageName: "Elbphilharmonie", name: "Elbphilharmonie", info: "The Elbphilharmonie is a concert hall in Hamburg, Germany, renowned for its modern architecture and excellent acoustics."),
            MyImage(imageName: "Frankfurt", name: "Frankfurt", info: "Frankfurt is a major financial hub in Germany, known for its impressive skyline and cultural landmarks."),
            MyImage(imageName: "Hamburg", name: "Hamburg", info: "Hamburg is a port city in northern Germany, famous for its maritime history and vibrant cultural scene."),
            MyImage(imageName: "JoshuaTree", name: "Joshua Tree National Park", info: "Joshua Tree National Park is a vast protected area in Southern California, known for its unique Joshua trees and rugged desert landscape."),
            MyImage(imageName: "Kelowna", name: "Kelowna", info: "Kelowna is a city in British Columbia, Canada, known for its wineries, orchards, and beautiful Okanagan Lake."),
            MyImage(imageName: "Kihei", name: "Kihei", info: "Kihei is a town on the island of Maui in Hawaii, known for its sunny weather, beautiful beaches, and snorkeling spots."),
            MyImage(imageName: "LonsdaleQuay", name: "Lonsdale Quay", info: "Lonsdale Quay is a popular market and shopping destination in North Vancouver, offering great views of the Vancouver skyline."),
            MyImage(imageName: "MosquitoCreek", name: "Mosquito Creek", info: "Mosquito Creek is a serene creek located in North Vancouver, popular for its scenic walking trails and natural beauty."),
            MyImage(imageName: "NobleRidge", name: "Noble Ridge Vineyard", info: "Noble Ridge Vineyard is a well-known winery in British Columbia's Okanagan Valley, producing high-quality wines."),
            MyImage(imageName: "PalmSprings", name: "Palm Springs", info: "Palm Springs is a desert resort city in California, known for its hot springs, stylish hotels, and golf courses."),
            MyImage(imageName: "RedRockCanyon", name: "Red Rock Canyon", info: "Red Rock Canyon is a popular natural area near Las Vegas, Nevada, known for its impressive red rock formations and hiking trails."),
            MyImage(imageName: "Strasbourg", name: "Strasbourg", info: "Strasbourg is a city in northeastern France, known for its medieval architecture, historic sites, and vibrant cultural scene.")
        ]
    }
}

