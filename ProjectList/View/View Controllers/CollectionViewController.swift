//
//  CollectionViewController.swift
//  ProjectList
//
//  Created by Fatima Syed on 15/09/2021.
//  Copyright © 2021 Fatima Syed. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    var viewModel: PersonViewModel = PersonViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return viewModel.getPersonCount()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstBlock", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
    
        cell.namePerson.text = "\(viewModel.getPersonName(indexPath.row)) \(viewModel.getPersonSurname(indexPath.row))"
        cell.chargePerson.text = viewModel.getPersonCharge(indexPath.row)
        cell.imagePerson.image = UIImage(named: viewModel.getPersonPhoto(indexPath.row))
        
        return cell
    }
}
