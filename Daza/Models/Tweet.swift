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

//import RealmSwift
import ObjectMapper

class Tweet: Model {
    
    var user_id: String!        // 用户Id
    var content: String!        // 内容
    var location: String!       // 位置
    var longitude: String!      // 经度
    var latitude: String!       // 纬度
    var view_count: Int = 0     // 阅读数
    var like_count: Int = 0     // 喜欢数
    var comment_count: Int = 0  // 评论数
    var user: User?
    
    required init?(_ map: Map) {
        super.init(map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        user_id         <- map["user_id"]
        content         <- map["content"]
        location        <- map["location"]
        longitude       <- map["longitude"]
        latitude        <- map["latitude"]
        view_count      <- map["view_count"]
        like_count      <- map["like_count"]
        comment_count   <- map["comment_count"]
        user            <- map["user"]
    }
    
}