include Math
require_relative 'Habitat'

puts "Habitable area calculator by Henry Fleischer"
puts "Select habitat shape: \n1.Sphere \n2.Cylender \n3.Test \nOther:Exit"
shape = gets.strip
puts "For now, all measurements are in Meters."
habitat = Habitat.new("default",1,1,1)
case shape
when shape = "1"
    puts "Input radius of sphere hab:"
    radius = gets.to_f
    puts "Input layer distance:"
    layerSpacing = gets.to_f
    puts "Input numer of layers:"
    layers = gets.to_i
    puts "Input percent machine area:"
    machinePortion = gets.to_f
    machinePortion = machinePortion / 100
    surfaceArea = 0
    habitableArea = 0
    machineArea = 0
    layerRadius = radius
    layers.times{
        layerarea = (4 * PI) * (layerRadius ** 2)
        surfaceArea += layerarea
        machineArea += layerarea * machinePortion
        layerRadius -= layerSpacing
        if layerRadius <= 0
            puts "Error- layer has zero or negative size! Results are for all layers of positive size!"
            break
        end
    }
    habitableArea = surfaceArea - machineArea
    habitat = Habitat.new("sphere",surfaceArea,machineArea,habitableArea)
when shape = "2"
    puts "Input radius of base of cylender:"
    radius = gets.to_f
    puts "Input length of cylender:"
    length = gets.to_f
    puts "Input layer distance:"
    layerSpacing = gets.to_f
    puts "Input numer of layers:"
    layers = gets.to_i
    puts "Input percent machine area:"
    machinePortion = gets.to_f
    machinePortion = machinePortion / 100
    #Gravity = 0.011 * RPM^2 * Radius
    #RPM = sqrt(Gravity / (0.011 * Radius))
    #Radius = Gravity / (0.011 * RPM^2)
    surfaceArea = 0
    habitableArea = 0
    machineArea = 0
    layerRadius = radius
    layers.times{
        layerarea = 2 * PI * layerRadius * length
        surfaceArea += layerarea
        machineArea += layerarea * machinePortion
        layerRadius -= layerSpacing
        if layerRadius <= 0
            puts "Error- layer has zero or negative size! Results are for all layers of positive size!"
            break
        end
    }
    habitableArea = surfaceArea - machineArea
    habitat = Habitat.new("Cylender",surfaceArea,machineArea,habitableArea)
    puts "NOTE: Habitable and machine area are on the lateral of the cylender, not the base!"
when shape = "3"
    habitat.basicSetup
else
    puts "Exiting program"
    exit
end
puts "Habitable area:#{habitat.habitableArea.round(2)}, machine area:#{habitat.machineArea.round(2)}, total:#{habitat.surfaceArea.round(2)}"
