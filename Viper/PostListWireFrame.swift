//
//  PostListWireFrame.swift
//  Viper
//
//  Created by Anil Upadhyay on 01/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit

class PostListWireFrame: PostListWireFrameProtocol {

    class func createPostListModule() -> UIViewController {
//        let navController = mainStoryBoard.instantiateViewController(withIdentifier: "PostListNavigationController")
//        if let view = navController.childViewControllers.first as? PostListView {
//            let presenter = PostListPresenterProtocol & PostListInterectorOutputProtocol = postli
//        }
        return UIViewController()
    }
    
    static var mainStoryBoard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    
    
    func presentPostDetailScreen(from view: PostListViewProtocol, forPost post: PostModel) {
        
    }
}
