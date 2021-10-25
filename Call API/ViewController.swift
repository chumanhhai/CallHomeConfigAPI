//
//  ViewController.swift
//  Call API
//
//  Created by Hải Chu on 21/10/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://fapitest.starhub.com/release/msa5/api/msa-home-config.json")!

        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching : \(error)")
                return
            }
            if let data = data, let homeConfig = try? JSONDecoder().decode(HomeConfigModel.self, from: data) {
                let moreConfig = homeConfig.moreConfig!.first(where: {$0.action_content=="msa.protection"})!
                let category = moreConfig.categories!.first(where: {$0.newProduct!.title=="CyberCover"})!
                print(category.newProduct!.description!)
              }
        })
        task.resume()
    }


}

