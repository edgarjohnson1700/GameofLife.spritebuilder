import Foundation

class MainScene: CCNode {

        
    weak var grid: Grid!
    weak var generationLabel: CCLabelTTF!
    weak var populationLabel: CCLabelTTF!
    
    var timer = CCTimer()
    

    
    func play() {
        schedule("step", interval: CCTime(0.5))
    }
    
    func pause() {
        unschedule("step")
        
    }
    
    func step() {
        //update each Creature's neighbor count
        grid.countNeighbors()
        
        //update each Creature's state
        grid.updateCreatures()
        
        //update the generation so the label's text will display the correct generation
        grid.generation++
        
        generationLabel.string = "\(grid.generation)"
        populationLabel.string = "\(grid.totalAlive)"
    }
    
    }



