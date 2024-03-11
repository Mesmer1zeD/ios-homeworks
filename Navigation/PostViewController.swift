//
//  PostViewController.swift
//  Navigation
//
//  Created by V Nieto on 11.03.2024.
//

import UIKit

struct Post {
    var title: String
}

class PostViewController: UIViewController {

    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = post?.title
        view.backgroundColor = .lightGray

        let infoButton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(openInfoViewController))
        navigationItem.rightBarButtonItem = infoButton
    }

    @objc func openInfoViewController() {
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true, completion: nil)
    }
}

