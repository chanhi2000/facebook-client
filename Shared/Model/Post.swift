//
//  Post.swift
//  facebook-client
//
//  Created by chlee on 2020/12/26.
//

import Foundation

struct Post: Identifiable {
    let id = UUID().uuidString
    let user : User
    let imageUrl: String
    let title: String
    let likes: String
    let shares: String
    let comments: String
    let postTime: String
}

let posts:[Post] = [
    .init(user: users[0], imageUrl: "https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", title: "Summer Vacation :))))", likes: "89", shares: "22", comments: "17", postTime: "58"),
    .init(user: users[1], imageUrl: "https://images.unsplash.com/photo-1585491270131-e87735109444?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", title: "Cuuties 😘", likes: "189", shares: "27", comments: "37", postTime: "23"),
    .init(user: users[2], imageUrl: "https://images.unsplash.com/photo-1553272787-2bbfd028da99?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", title: "Times😂 ", likes: "77", shares: "12", comments: "45", postTime: "15"),
    .init(user: users[3], imageUrl: "https://images.unsplash.com/photo-1541200825554-d37cd3f742a3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", title: "Big Surrrrrrrrrrr", likes: "209", shares: "33", comments: "24", postTime: "2"),
    .init(user: users[4], imageUrl: "https://images.unsplash.com/photo-1515405295579-ba7b45403062?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80", title: "My Neew Artwork !!!", likes: "314", shares: "88", comments: "55", postTime: "46"),
    .init(user: users[5], imageUrl: "https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VtbWVyfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60", title: "Summer Vacation :))))", likes: "89", shares: "22", comments: "17", postTime: "58"),
    .init(user: users[7], imageUrl: "https://images.unsplash.com/photo-1567206563064-6f60f40a2b57?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80", title: "What a delicious treat", likes: "109", shares: "41", comments: "24", postTime: "13s")
]
