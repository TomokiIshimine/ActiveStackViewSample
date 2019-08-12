//
//  ViewController.swift
//  ActiveStackViewSample
//
//  Created by 伊志嶺朝輝 on 2019/07/14.
//  Copyright © 2019 TomRock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var stackView: UIStackView!
	
	/// 作成したViewのカウンター
	var count:Int = 0
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	// 「Viewを追加する」ボタンがタップされた時に実行される処理
	@IBAction func tapAddViewButton(_ sender: Any) {
		// 新規追加するViewを作成
		let newView = StackViewCell()
		// 背景を緑に設定
		newView.backgroundColor = UIColor.green
		// 枠線を設定
		newView.layer.borderColor = UIColor.black.cgColor
		newView.layer.borderWidth = 1.0
		
		// 追加されたViewがわかりやすいように、ナンバリング
		newView.label.text = "\(count)"
		newView.label.sizeToFit()
		newView.label.textColor = UIColor.black
		
		// 新規Viewに height=100 の制約を追加 ←【超重要】
		newView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
		newView.translatesAutoresizingMaskIntoConstraints = false
		// これだとダメ
		// newView.frame = CGRect(x: 0, y: 0, width: stackView.frame.width, height: 100)
		
		// stackViewにnewViewを追加する
		stackView.addArrangedSubview(newView)
		// これだとダメ
		//stackView.addSubview(newView)
		
		// ナンバリング用のカウンタをインクリメント
		count += 1
	}
	
}

