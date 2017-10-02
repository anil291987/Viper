//
//  PostTableViewCell.swift
//  Viper
//
//  Created by Anil Upadhyay on 01/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit
import AlamofireImage

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func set(forPost post: PostModel) {
        self.selectionStyle = .none
        titleLabel.text = post.title
        let url = URL(string: post.thumbImageUrl)!
        let placeHolderImage = UIImage(named: "placeHolder")!
        postImage.af_setImage(withURL: url, placeholderImage: placeHolderImage)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
