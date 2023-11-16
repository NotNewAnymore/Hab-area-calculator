class Habitat

    def initialize(shape,surfaceArea,machineArea,habitableArea)
        @shape = shape
        @surfaceArea = surfaceArea
        @machineArea = machineArea
        @habitableArea = habitableArea
        @layers = []
    end
    def shape
        @shape
    end
    def surfaceArea
        @surfaceArea
    end
    def machineArea
        @machineArea
    end
    def habitableArea
        @habitableArea
    end
    def layersGet()
        @layers
    end
    def basicSetup()
        puts "Input radius of sphere hab:"
        radius = gets.to_f
        puts "Input layer distance:"
        layerSpacing = gets.to_f
        puts "Input numer of layers:"
        layers = gets.to_i
        puts "Input percent machine area:"
        machinePortion = gets.to_f
        machinePortion = machinePortion / 100
    end
end
