//
//  InfoViewController.swift
//  Navigation
//
//  Created by V Nieto on 11.03.2024.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let showAlertButton = UIButton(type: .system)
        showAlertButton.setTitle("Показать Alert", for: .normal)
        showAlertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        showAlertButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(showAlertButton)

        NSLayoutConstraint.activate([
            showAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showAlertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func showAlert() {
        let alertController = UIAlertController(title: "Заголовок", message: "Сообщение", preferredStyle: .alert)

        let action1 = UIAlertAction(title: "Действие 1", style: .default) { _ in
            print("Выбрано Действие 1")
        }
        alertController.addAction(action1)

        let action2 = UIAlertAction(title: "Действие 2", style: .default) { _ in
            print("Выбрано Действие 2")
        }
        alertController.addAction(action2)

        present(alertController, animated: true, completion: nil)
    }
}

