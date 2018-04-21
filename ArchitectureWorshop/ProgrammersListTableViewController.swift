//
//  ProgrammersListTableViewController.swift
//  ArchitectureWorshop
//
//  Created by Eduard Panasiuk on 12/3/16.
//  Copyright © 2016 somedev. All rights reserved.
//

import UIKit

class ProgrammersListTableViewController: UITableViewController, ShowProgrammersView {
    private var presenter: ParametersListPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupConnection()

        presenter.viewCreated()
    }

    func setupConnection() {
        presenter = ParametersListPresenter()
        let gateway = ProgrammersRepository()
        let usecase = ShowProgrammersListUseCase(entityGateway: gateway, presenter: presenter)
        presenter.useCase = usecase
        presenter.view = self
    }

    // MARK: - Table view data source

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return presenter.getCout()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgrammeCell", for: indexPath) as! ProgrammeCell
        presenter.configure(holder: cell, position: indexPath.row)
        return cell
    }

    // ShowProgrammersView
    func show() {
        tableView.reloadData()
    }
}
