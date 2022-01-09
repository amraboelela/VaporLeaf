import Vapor

func routes(_ app: Application) throws {
    
    app.get { req in
        req.view.render("index", [
            "title": "Hi",
            "body": "Hello world!"
        ])
    }
    
    try app.register(collection: IndexController())
    try app.register(collection: NumbersController())
    
    app.get("home") { req in
        req.view.render(
            "home", [
                "title": "My Page",
                "header": "This is my own page.",
                "message": "Welcome to my page!"
            ])
    }

    /*app.get("numbers") { req -> EventLoopFuture<View> in
        return req.view.render("numbers", WelcomeModel(title: "Hello!", numbers: [42, 9001]))
    }*/
    
}
