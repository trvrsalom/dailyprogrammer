/**
 * repulsionforce.swift
 * Created for: http://www.reddit.com/r/dailyprogrammer/comments/1ml669/091713_challenge_138_easy_repulsionforce/
 * Author: Trevor Salom
*/

var massA = 1.0
var xA = -5.2
var yA = 3.8
var massB = 1.0
var xB = 8.7
var yB = -4.1

var dX = xA - xB
var dY = yA - yB
var distance = sqrt((dX*dX)+(dY*dY))
var force = (massA * massB)/(distance * distance)
println(force)
