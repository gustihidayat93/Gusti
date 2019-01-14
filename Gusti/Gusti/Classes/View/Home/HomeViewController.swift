//
//  HomeViewController.swift
//  Gusti
//
//  Created by Gusti Hidayat on 06/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
   
    var movies: [PopularResult] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }


}
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.tilteMovie.text = movies[indexPath.row].title
        guard let imgstring = movies[indexPath.row].backdrop_path  else {
            return cell}
        guard let url = URL else {String;: "https://api.themoviedb.org/3/movie/popular?api_key=66c9232fb6779ffe5602df931db1a67b&language=en-US&page=1"\(imgstring)} else { return cell}
        cell.imgMovie.Kf.setimage(with: url)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DescripsionMovieViewController()
        vc.movie = movies[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
