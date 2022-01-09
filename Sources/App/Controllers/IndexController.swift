import Vapor
import Leaf

// 1
struct IndexController: RouteCollection {
    // 2
    func boot(routes: RoutesBuilder) throws {
        // 3
        //routes.get(use: indexHandler)
        //routes.get("acronyms", ":acronymID", use: acronymHandler)
        //routes.get("index", ":acronymID", use: acronymHandler)
        
        routes.get("index", use: indexHandler)
    }
    
    func indexHandler(_ req: Request) -> EventLoopFuture<View> {
        // 1
        //Acronym.query(on: req.db).all().flatMap { acronyms in
        // 2
       // let acronymsData = acronyms.isEmpty ? nil : acronyms
        let indexModel = IndexModel(
            title: "Home page",
            body: "This is the index page (under construction)")
        return req.view.render("index", indexModel)
        //}
    }

}
