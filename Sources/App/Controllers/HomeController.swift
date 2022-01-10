
import Vapor
import Leaf

struct HomeController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get("home", use: homeHandler)
    }
    
    func homeHandler(_ req: Request) -> EventLoopFuture<View> {
        let homeModel = HomeModel(
            title: "Home page",
            header: "This is my own page.",
            message: "This is my page (under construction)")
        return req.view.render("home", homeModel)
    }
}
