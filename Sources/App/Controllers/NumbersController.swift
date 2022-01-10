
import Vapor
import Leaf

struct NumbersController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        
        routes.get("numbers", use: numbersHandler)
    }
    
    func numbersHandler(_ req: Request) -> EventLoopFuture<View> {
        let numbersModel = NumbersModel(title: "Hello!", numbers: [42, 13, 33, 9001])
        return req.view.render("numbers", numbersModel)
    }
}
