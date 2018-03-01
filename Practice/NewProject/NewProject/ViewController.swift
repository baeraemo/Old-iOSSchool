//
//  ViewController.swift
//  NewProject
//
//  Created by youngmin joo on 2018. 2. 26..
//  Copyright © 2018년 youngmin joo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView:UITableView!
    @IBOutlet var albumTitleLB:UILabel!
    @IBOutlet var albumArtistLb:UILabel!
    
    
    var albumData:AlbumModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.tableHeaderView = UIView()
        
        
        if let albumData = AlbumModel(dic: album)
        {
            self.albumData = albumData
            albumTitleLB.text = albumData.title
            albumArtistLb.text = albumData.artist
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = albumData
        {
            return data.songList.count
        }else
        {
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell
        
        cell.songData = albumData!.songList[indexPath.row]
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell =  tableView.cellForRow(at: indexPath) as! SongCell
        
        print(cell.songData?.title)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}






