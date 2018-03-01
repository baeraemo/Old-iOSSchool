//
//  DataModel.swift
//  NewProject
//
//  Created by youngmin joo on 2018. 2. 26..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import Foundation
struct AlbumModel {
    
    var title:String
    var artist:String
    var genre:String
    var songList:[SongModel] = []
    
    init?(dic:[String:Any]) {
        guard let albumInfo = dic["albumInfo"] as? [String:Any] else {return nil}
        
        guard let title = albumInfo["albumTitle"] as? String else {return nil}
        guard let artist = albumInfo["artist"] as? String else {return nil}
        guard let genre = albumInfo["genre"] as? String else {return nil}
        
        self.title = title
        self.artist = artist
        self.genre = genre
        //
        
        if let songList = dic["songList"] as? [[String:Any]]
        {
            for songDic in songList
            {
                if let model = SongModel(dic:songDic)
                {
                    self.songList.append(model)
                }
            }
        }
    }
}

struct SongModel {

    var title:String
    var trackNum:Int
    var artist:String
    var writer:String
    var playTime:Int
    var playTimeStr:String
    {
        return "00:00"
    }
    
    var playURL:String
 
    init?(dic:[String:Any]) {
        
        guard let title = dic["songTitle"] as? String else {return nil}
        guard let trackNum = dic["trackNum"] as? Int else {return nil}
        guard let artist = dic["artist"] as? String else {return nil}
        guard let writer = dic["writer"] as? String else {return nil}
        guard let playTime = dic["playTime"] as? Int else {return nil}
        guard let playURL = dic["playURL"] as? String else {return nil}
        
        self.title = title
        self.trackNum = trackNum
        self.artist = artist
        self.writer = writer
        self.playTime = playTime
        self.playURL = playURL
        
    }
    
}










