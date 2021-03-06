/**
 * Copyright (C) 2015 JianyingLi <lijy91@foxmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit

class EventItemCell: UITableViewCell {
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var viewCountButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var event: Event!
    
    var data: Event {
        get {
            return self.event
        }
        set(newValue) {
            self.event = newValue
            self.coverImageView.sd_setImageWithURL(NSURL(string: (self.event.image_url)!), placeholderImage: UIImage(named: "placeholder_image"))
            self.titleLabel.text = self.event.title
            self.cityLabel.text = self.event.city
            self.viewCountButton.setTitle("\(self.event.view_count)阅读", forState: UIControlState.Normal)
            self.timeLabel.text = self.event.updated_at.timeAgoSinceNow()
        }
    }
}