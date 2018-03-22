//
//  Video.swift
//  YouTubeAPI
//
//  Created by Emiko Clark on 3/22/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

class Video {
    
    var channelId: String?
    var channelTitle: String?
    var playlistId: String?
    var title: String?
    var description: String?
    var thumbnails: [Thumbnail]?
    
    init(channelId: String, channelTitle: String, playlistId: String, title: String,
 description: String, thumbnails: [Thumbnail]) {
        self.channelId = channelId
        self.channelTitle = channelTitle
        self.playlistId = playlistId
        self.title = title
        self.description = description
        self.thumbnails = thumbnails
    }
}

class Thumbnail {
    var url: String?
    var width: Int?
    var height: Int?
    
    init(url: String, width: Int, height: Int) {
        self.url = url
        self.width = width
        self.height = height
    }
}


//"channelId": "UCD5kT8GTKnbYl9WxgnLM0aA",
//"title": "Argentine Tango Lessons",
//"description": "",
//"thumbnails": {
//    "default": {
//        "url": "https://i.ytimg.com/vi/jwz-q0TKz0Y/default.jpg",
//        "width": 120,
//        "height": 90
//    },
//    "medium": {
//        "url": "https://i.ytimg.com/vi/jwz-q0TKz0Y/mqdefault.jpg",
//        "width": 320,
//        "height": 180
//    },
//    "high": {
//        "url": "https://i.ytimg.com/vi/jwz-q0TKz0Y/hqdefault.jpg",
//        "width": 480,
//        "height": 360
//    }
//},
//"channelTitle": "Emiko Clark",

