import UIKit


// Enum with a Method
enum Direction {
    
    case north
    case east
    case south
    case west
    
    func getDirection() -> String {
        
        switch self {
        case .north:
            return "North"
        case .south:
            return "South"
        case .east:
            return "East"
        case .west:
            return "West"
        }
    }
}


let direction = Direction.north
direction.getDirection()

// Enum With a Associated Values and Method

enum Shape {
    
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        }
    }
}

let circle = Shape.circle(radius: 5.0)
print("Circle Area: \(circle.area())")

let rectangle = Shape.rectangle(width: 4.0, height: 5.0)
print("Rectangle Area: \(rectangle.area())")
