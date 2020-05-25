//
//  ViewController.swift
//  TableViewDynamic
//
//  Created by Nani Sukma Putri Pratama on 25/05/20.
//  Copyright © 2020 Nani Sukma Putri Pratama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alatTulis: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Menghubungkan alatTulis ddgn 2 metode dibawah
        alatTulis.dataSource = self
        // menghubungkan berkas XIb ke alatTulis
        alatTulis.register(UINib(nibName: "AlatTulisTableViewCell", bundle: nil), forCellReuseIdentifier: "AlatTulisCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlatTulisCell", for: indexPath) as! AlatTulisTableViewCell
        
        //menetapkan nilai hero ke view di dalam cell
        let alat = Alat[indexPath.row]
        cell.namaAlatTulis.text = alat.nama
        cell.hargaAlatTulis.text = alat.deskripsi
        cell.photoAlatTulis.image = alat.photo
        
//        cell.photoAlatTulis.layer.cornerRadius = cell.photoAlatTulis.frame.height/2
//        cell.photoAlatTulis.clipsToBounds = true
        return cell
    }
    
    
}

