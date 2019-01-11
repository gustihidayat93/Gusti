//
//  HomeViewController.swift
//  Gusti
//
//  Created by Gusti Hidayat on 06/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DescripsionMovieViewController()
        vc.
    }
    
}
