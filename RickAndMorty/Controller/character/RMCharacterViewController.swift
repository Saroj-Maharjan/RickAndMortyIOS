//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import UIKit


/// Controller to show and search for Character
class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: RMEndpoint.character,
            pathComponent: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive"),
            ]
        )
        print(request.url)
    }

}
