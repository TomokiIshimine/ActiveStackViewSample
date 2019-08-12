import UIKit

class StackViewCell: UIView {
	/// ラベル
	let label = UILabel()
	
	init() {
		super.init(frame: CGRect())
		
		// 削除ボタン
		let deleteButton = UIButton()
		deleteButton.setTitle("削除", for: .normal)
		deleteButton.setTitleColor(UIColor.blue, for: .normal)
		deleteButton.sizeToFit()
		
		// 削除ボタンがタップされた時の処理を登録
		deleteButton.addTarget(self, action: #selector(tapDeleteButton(_:)), for: .touchUpInside)
		
		// ボタンをaddSubview
		addSubview(deleteButton)
		// ボタンが中心に配置されるように制約を追加
		deleteButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		deleteButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
		deleteButton.translatesAutoresizingMaskIntoConstraints = false
		
		// LabelをaddSubview
		addSubview(label)
		// labelが左上に配置されるように制約を追加
		label.topAnchor.constraint(equalTo: topAnchor, constant: 10.0).isActive = true
		label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0).isActive = true
		label.translatesAutoresizingMaskIntoConstraints = false
	}
	
	// コードからしか呼ばないので、空実装
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// 削除ボタンが押された時に呼ばれるメソッド
	@objc func tapDeleteButton(_ sender: UIButton) {
		// superview(StackView)から自身を削除する
		removeFromSuperview()
	}
}
