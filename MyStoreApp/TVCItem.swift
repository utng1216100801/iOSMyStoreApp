//
//  TVCItem.swift
//  MyStoreApp
//
//  Created by Diana Manzano on 14/03/19.
//  Copyright © 2019 nany. All rights reserved.
//

import UIKit

class TVCItem: UITableViewCell {
    @IBOutlet weak var laDateAdd: UILabel!
    
    @IBOutlet weak var laItemName: UILabel!
    @IBOutlet weak var ivItemImage: UIImageView!
    @IBOutlet weak var laStoreName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setItem(item:Items){
        laItemName.text = item.item_name
        laStoreName.text = item.toStoreType?.store_name
        ivItemImage.image = item.image as? UIImage
        
        ///Show date
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/DD/yy h:mm a"
        laDateAdd.text = dateFormat.string(from: item.date_add as! Date)
        //laDateAdd.text = dateFormat.string(from: item.date_add as Date!for: item)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
