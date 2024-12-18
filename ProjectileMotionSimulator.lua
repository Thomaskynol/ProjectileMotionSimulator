local start_time = os.clock()

local initialVelocity = 1000
local gravityForce = 9.8
local degrees = 45
local heightFromFloor = 10
local axisX = 0

local a = -((gravityForce)/(2*initialVelocity^2*math.cos(math.rad(degrees))^2))
local b = (math.sin(math.rad(degrees))/math.cos(math.rad(degrees)))
local c = heightFromFloor 

local squareFunction = a*axisX^2+b*axisX+c

local timeOfProject = axisX/(initialVelocity*math.cos(math.rad(degrees))) -- time of the parable

local count = 0 -- just to count
local deltaTime = 0.000001 -- update time

while squareFunction >= 0 do -- counts until the project hits the ground
	count = count + deltaTime
	axisX = (count*initialVelocity)+(count*math.cos(math.rad(degrees)))
	
	squareFunction = a*axisX^2+b*axisX+c
	
end
os.execute("cls")
local delta = b^2-4*a*c
local xv = -b/(a*2)
local yv = -delta/(4*a)
local x2 = (-b-math.sqrt(delta))/(a*2)
local x1 = (-b+math.sqrt(delta))/(a*2)

print("ponto maximo de parabola ("..xv..","..yv..")")
print("distancia inicial: "..x1.."\ndistancia final: "..x2)

local end_time = os.clock()

print("Tempo de execução: " .. (end_time - start_time) .. " segundos")