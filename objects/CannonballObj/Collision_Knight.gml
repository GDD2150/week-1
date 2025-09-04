// spawn bullet seeds shooting in eight directions from point of contact
var spread = 45;
var straightDir = 90;
			
// Create bullet going straight
var bullet_straight = instance_create_layer(x, y, "Instances", Bullet);
bullet_straight.speed = 8;
bullet_straight.direction = straightDir;

var bullet2 = instance_create_layer(x, y, "Instances", Bullet);
bullet2.speed = 8; 
bullet2.direction = bullet_straight.direction + spread;

var bullet3 = instance_create_layer(x, y, "Instances", Bullet);
bullet3.speed = 8; 
bullet3.direction = bullet_straight.direction + spread * 2; 

var bullet4 = instance_create_layer(x, y, "Instances", Bullet);
bullet4.speed = 8; 
bullet4.direction = bullet_straight.direction + spread * 3; 

var bullet5 = instance_create_layer(x, y, "Instances", Bullet);
bullet5.speed = 8; 
bullet5.direction = bullet_straight.direction + spread * 4; 

var bullet6 = instance_create_layer(x, y, "Instances", Bullet);
bullet6.speed = 8; 
bullet6.direction = bullet_straight.direction + spread * 5; 

var bullet7 = instance_create_layer(x, y, "Instances", Bullet);
bullet7.speed = 8; 
bullet7.direction = bullet_straight.direction + spread * 6; 

var bullet8 = instance_create_layer(x, y, "Instances", Bullet);
bullet8.speed = 8; 
bullet8.direction = bullet_straight.direction + spread * 7; 


instance_destroy()