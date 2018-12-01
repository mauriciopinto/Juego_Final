/// @description Insert description here
// You can write your code in this editor
var xdir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var ydir = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += xdir*movespeed;
y += ydir*movespeed;

