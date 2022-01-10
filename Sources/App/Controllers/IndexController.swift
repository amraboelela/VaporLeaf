import Vapor
import Leaf

struct IndexController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        routes.get(use: rootHandler)
        //routes.get("acronyms", ":acronymID", use: acronymHandler)
        //routes.get("index", ":acronymID", use: acronymHandler)
        routes.get("index", use: indexHandler)
    }
    
    func rootHandler(_ req: Request) -> EventLoopFuture<View> {
        let indexModel = IndexModel(
            title: "Welcome",
            body: "Hello world!")
        return req.view.render("index", indexModel)
    }
    
    func indexHandler(_ req: Request) -> EventLoopFuture<View> {
        let indexModel = IndexModel(
            title: "No Welcome",
            body: "This is the index page (under construction)")
        return req.view.render("index", indexModel)
    }

}
