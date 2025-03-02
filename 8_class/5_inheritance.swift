
protocol Shape {
    var vertexCount: Int { get }
    func draw()
}

class Polygon: Shape {
    var vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
    }

    func draw() {
        print("Drawing a polygon")
    }
}

class Rectangle: Shape {
    var vertexCount: Int {
        4
    }

    func draw() {
        print("Drawing a rectangle")
    }
}

class FilledRectangle: Rectangle {
    override func draw() {
        super.draw()
        print("Filling the rectangle")
    }
}
