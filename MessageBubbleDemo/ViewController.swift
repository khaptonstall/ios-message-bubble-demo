//
//  ViewController.swift
//  MessageBubbleDemo
//
//  Created by Kyle Haptonstall on 9/6/17.
//  Copyright © 2017 Kyle Haptonstall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables
    // MARK: Private
    
    @IBOutlet private weak var chatTableView: UITableView!
    
    fileprivate let MessageCellIdentifier = "MessageTableViewCell"
    
    // MARK: Public
    
    var messages = [
        "Hello!",
        "Hi there!",
        "Here's\na\nlonger\nmessage",
        "Wow, multiline messages!"
    ]
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatTableView.register(UINib(nibName: MessageCellIdentifier, bundle: nil), forCellReuseIdentifier: MessageCellIdentifier)
        chatTableView.rowHeight = UITableViewAutomaticDimension
        chatTableView.estimatedRowHeight = 10.0
    }

}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MessageCellIdentifier) as? MessageTableViewCell else {
            return UITableViewCell()
        }
        
        let message = messages[indexPath.row]
        cell.configure(withMessage: message)
        return cell
    }
    
}
