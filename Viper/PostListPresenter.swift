//
//  PostListPresenter.swift
//  Viper
//
//  Created by Anil Upadhyay on 01/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit

class PostListPresenter: PostListPresenterProtocol {
    weak var view : PostListViewProtocol?
    var interacter: PostListInterectorInputProtocol?
    var wireFrame: PostListWireFrameProtocol?
    
    func viewDidLoad() {
        view?.showLoading()
        interacter?.retrievePostList()
    }
    func showPostDetail(forPost post: PostModel) {
        wireFrame?.presentPostDetailScreen(from: view!, forPost: post)
    }
}
extension PostListPresenter: PostListInterectorOutputProtocol {
    func didReceivePost(_ posts: [PostModel]) {
        view?.hideLoading()
        view?.showPost(with: posts)
    }
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
}
