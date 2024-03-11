//
//  FeedViewController.swift
//  Navigation
//
//  Created by V Nieto on 11.03.2024.
//

import UIKit

import UIKit

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let postButton = UIButton(type: .system)
        postButton.setTitle("Посмотреть пост", for: .normal)
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        postButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(postButton)

        NSLayoutConstraint.activate([
            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func showPost() {
        let post = Post(title: "Заголовок поста")
        let postViewController = PostViewController()
        postViewController.post = post
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
