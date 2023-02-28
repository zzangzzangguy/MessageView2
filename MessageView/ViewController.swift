//
//  ViewController.swift
//  MessageView
//
//  Created by 김기현 on 2023/02/28.
//
import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    private let tableView = UITableView()
    private let leftBarButton = UIBarButtonItem()
    private let rightBarButton = UIBarButtonItem()

    private var messages: [Message] = []

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        setConstraints()
        setConfigure()

        messages = [
            Message(sender: "114", text: "move bitch"),
            Message(sender: "112", text: "get out the way"),
            Message(sender: "1380", text: "get out the way")
        ]
    }

    // MARK: - Helpers

    private func setView() {
        view.addSubview(tableView)
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func setConfigure() {
        /// 큰 타이틀
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "메시지"

        /// 네비게이션 바버튼
        navigationItem.leftBarButtonItem = leftBarButton
        navigationItem.rightBarButtonItem = rightBarButton
        leftBarButton.title = "편집"
        rightBarButton.title = "쓰기"

       


        /// 테이블뷰 세팅
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false

        /// 테이블뷰 셀 자동 높이 조절
        tableView.rowHeight = UITableView.automaticDimension

        /// 테이블뷰에 들어갈 데이터 채우기 위한 delegate (ViewController가 self)연결
        tableView.dataSource = self

        /// 테이블뷰에 사용할 Cell 등록
        tableView.register(
            MessageTableViewCell.self,
            forCellReuseIdentifier: "MessageTableViewCell"
            
        )
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return messages.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "MessageTableViewCell",
            for: indexPath
        ) as! MessageTableViewCell

        let message = messages[indexPath.row]
        cell.senderLabel.text = message.sender
        cell.messageLable.text = message.text

        return cell
    }
}
