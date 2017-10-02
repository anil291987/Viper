//
//  PostListProtocols.swift
//  Viper
//
//  Created by Anil Upadhyay on 01/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit

protocol PostListViewProtocol: class {
    var presenter: PostListPresenterProtocol? {get set}
    
    // PRESENTER ==> VIEW
    func showPost(with posts:[PostModel])
    
    func showError()
    
    func showLoading()
    
    func hideLoading()
}

protocol PostListWireFrameProtocol: class {
    static func createPostListModule() -> UIViewController
    
    //PRESENTER ==> WIREFRAME
    func presentPostDetailScreen(from view:PostListViewProtocol, forPost post: PostModel)
}
protocol PostListPresenterProtocol: class {
    var view : PostListViewProtocol? {get set}
    var interacter: PostListInterectorInputProtocol? {get set}
    var wireFrame: PostListWireFrameProtocol? {get set}
    
    // VIEW ==> PRESENTER
    func viewDidLoad()
    func showPostDetail(forPost post:PostModel)
}
protocol PostListInterectorOutputProtocol: class {
    // INTERECTOR ==> PRESENTER
    func didReceivePost(_ posts: [PostModel])
    func onError()
}
protocol PostListInterectorInputProtocol: class {
    var presenter: PostListPresenterProtocol? {get set}
    var localDataManager: PostListLocalDataManagerInputProtocol? {get set}
    var remoteDatamanager: PostListRemoteDataManagerInputProtocol? {get set}
    
    // PRESENTER ==> INTERACTOR
    func retrievePostList()
}
protocol PostListDataManagerInputProtocol: class{
    // INTERACTOR ==> DATAMANAGER
}
protocol PostListRemoteDataManagerInputProtocol: class {
    var remoteRequestHandler: PostListRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR ==> REMOTEMANAGER
    func retrievePostList()
}
protocol PostListRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER ==> INTERACTOR
    func onPostRetrived(_ posts: [PostModel])
    func onError()
}
protocol PostListLocalDataManagerInputProtocol: class {
    // INTERACTOR ==> LOCALDATAMANAGER
    func retrivePostList() throws -> [Posts]
    func savePost(id: Int, title: String, imageUrl: String, thumbImageUrl:String)throws
}

