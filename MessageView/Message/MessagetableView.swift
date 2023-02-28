//
//  MessageCallViewController.swift
//  MessageView
//
//  Created by 김기현 on 2023/02/28.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    let senderLabel = UILabel()
    let messageLable = UILabel()
    

    // MARK: - Properties



    // MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConfiguration()
        setView()
//        addSubview(senderLabel)
//      addSubview(messageLable)
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helpers

        /// 프로퍼티 cell에 addsubView 넣는 메서드
    func setView() {

    }

        /// 프로퍼티 레이아웃 맞추는 코드 작성하는 메서드
    func setConstraints() {

    }

        /// 프로퍼티 구성하는 메서드
    func setConfiguration() {

    }
}
    


