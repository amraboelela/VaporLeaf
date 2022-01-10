import Vapor

func routes(_ app: Application) throws {

    try app.register(collection: HomeController())
    try app.register(collection: IndexController())
    try app.register(collection: NumbersController())
    
}
