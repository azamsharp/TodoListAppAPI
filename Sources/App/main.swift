import Vapor
import VaporSQLite
import HTTP
import Foundation


let drop = Droplet()
try drop.addProvider(VaporSQLite.Provider.self)

let controller = TasksViewController()
controller.addRoutes(drop: drop)

drop.run()
