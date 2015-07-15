/**
 * spaceprobe.swift
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/2o5tb7/2014123_challenge_191_intermediate_space_probe/
 * Author: Trevor Salom
 * A* Algorithm From: http://www.redblobgames.com/pathfinding/a-star/introduction.html
*/

class loc {
    var type : String
    var x : Int
    var y : Int
    var safe : Bool

    init() {
        x = 0;
        y = 0;
        type = "."
        safe = true
    }

    init(xi : Int, yi : Int) {
        x = xi
        y = yi
        type = "."
        safe = true
    }

    init(xi : Int, yi : Int, typei : String) {
        x = xi
        y = yi
        type = typei
        if(typei == "G" || typei == "A") {
            safe = false
        }
        else {
            safe = true
        }
    }

    func randType() {
        if(Int(arc4random_uniform(101)) < 5) {
            type = "G"
        }
        if(Int(arc4random_uniform(101)) < 15) {
            type = "A"
        }
        var u = isSafe()
    }

    func isSafe() -> Bool {
        if(type == "G" || type == "A") {
            safe = false
        }
        else {
            safe = true
        }
        return safe
    }

    func getType() -> String {
        return type
    }

    func getX() -> Int {
        return x
    }

    func getY() -> Int {
        return y
    }

    func move(dx : Int, dy : Int) {
        x += dx
        y += dy
    }

    func setPos(xi : Int, yi : Int) {
        x = xi
        y = yi
    }

    func setX(xi : Int) {
        x = xi
    }

    func setY(yi : Int) {
        y = yi
    }

    func setType(ti : String) {
        type = ti
    }

    func getCode() -> Int {
        return (10*x)+y
    }
}

class space {
    var s = Array<Array<loc>>()

    init(n : Int) {
        for x in 0...n-1 {
            var row = Array<loc>()
            for y in 0...n-1 {
                var l = loc(xi : x, yi : y)
                l.randType()
                row.append(l)
            }
            s.append(row)
        }
    }

    func printSpace() {
        for row in s {
            for spot in row {
                print(spot.getType())
            }
            println()
        }
    }

    func getLoc(xi : Int, yi : Int) -> loc {
        return s[xi][yi]
    }

    func setLoc(x : Int, y : Int, t : String) {
        s[x][y] = loc(xi:x,yi:y)
        s[x][y].setType(t)
    }

    func getNeighbors(x: Int, y: Int) -> Array<loc> {
        var n = Array<loc>()
        if(x > 0 && getLoc(x-1, yi:y).isSafe()) {
            n.append(getLoc(x-1, yi:y))
        }
        if(y > 0 && getLoc(x, yi:y-1).isSafe()) {
            n.append(getLoc(x, yi:y-1))
        }
        if(x < s[0].count-1 && getLoc(x+1, yi:y).isSafe()) {
            n.append(getLoc(x+1, yi:y))
        }
        if(y < s.count-1 && getLoc(x, yi:y+1).isSafe()) {
            n.append(getLoc(x, yi:y+1))
        }
        return n
    }

    func getNeighbors(l : loc) -> Array<loc> {
        return getNeighbors(l.getX(), y: l.getY())
    }

    func findCode(s : Int) -> loc {
        var x = s/10
        var y = s%10
        return getLoc(x, yi: y)
    }
}

class probe {
    var s : space
    var currPos : loc
    var frontier = Array<loc>()
    var visited = Array<Int>()
    var from = Array<Int>()
    var to = Array<Int>()
    var path = Array<loc>()
    var target : loc
    var start = loc(xi: 0,yi: 0, typei: "O")

    init(si : space) {
        s = si
        s.setLoc(0, y: 0, t: "O")
        currPos = s.getLoc(0,yi: 0)
        target = currPos
    }

    func setTarg(xi: Int, yi: Int) {
        target = s.getLoc(xi, yi: yi)
        s.setLoc(xi, y: yi, t:"E")
    }

    func navigate() {
        var reachedEnd = false;
        frontier.append(currPos)
        var current : loc;
        while(frontier.count > 0) {
            current = frontier[0]
            frontier.removeAtIndex(0)
            for spot in s.getNeighbors(current) {
                if(!contains(visited, spot.getCode())) {
                    frontier.append(spot)
                    from.append(current.getCode())
                    to.append(spot.getCode())
                    visited.append(spot.getCode())
                    if(spot.getType() == "E") {
                        reachedEnd = true;
                    }
                }
            }
        }
        if(reachedEnd) {
            current = target
            path.append(current)
            while(current.getCode() != start.getCode()) {
                current = s.findCode(from[find(to, current.getCode())!])
                path.append(current)
            }
            for spot in path {
                spot.setType("O")
            }
            println("----------")
            println("Navigating...")
            println("Path found!")
            println("----------")
            s.printSpace()
        }
        else {
            println("Error: No path could be computed.")
        }
    }
}

var s = space(n: 10)
var p = probe(si: s)
p.setTarg(9, yi: 9)
s.printSpace()
p.navigate()
