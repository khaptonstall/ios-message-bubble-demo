//
//  MessageTableViewCell.swift
//  MessageBubbleDemo
//
//  Created by Kyle Haptonstall on 9/6/17.
//  Copyright © 2017 Kyle Haptonstall. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    // MARK: - Variables
    // MARK: Private
    
    @IBOutlet private weak var messageContainerView: MessageBubbleView!
    @IBOutlet private weak var messageLabel: UILabel!
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    // MARK: Public Methods
    
    func configure(withMessage message: String, currentUserIsSender: Bool) {
        messageLabel.text = message
        messageContainerView.currentUserIsSender = currentUserIsSender
    }
    
}

