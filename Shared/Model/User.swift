//
//  User.swift
//  facebook-client
//
//  Created by chlee on 2020/12/26.
//

import Foundation

struct User: Identifiable {
    let id = UUID().uuidString
    let name: String
    let url : String
}

let users:[User] = [
    .init(
        name: "Jessie Samson",
        url: "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "David Brooks",
        url: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Jane Doe", url: "https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Matthew Hinkle", url: "https://images.unsplash.com/photo-1527082395-e939b847da0d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Amy Smith", url: "https://images.unsplash.com/photo-1535579710123-3c0f261c474e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Ed Morris", url: "https://images.unsplash.com/photo-1601582589907-f92af5ed9db8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Carolyn Duncan", url: "https://images.unsplash.com/photo-1521117660421-ce701ed42966?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Paul Pinrock", url: "https://images.unsplash.com/photo-1517530094915-500495b15ade?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Elizabeth Wong", url: "https://images.unsplash.com/photo-1505201372024-aedc618d47c3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    ),
    .init(
        name: "Jessie Samson",
        url: "https://images.unsplash.com/photo-1511590895197-7b1da5737705?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=63&q=80"
    )
]
