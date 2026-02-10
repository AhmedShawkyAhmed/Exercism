// 1. Expected oven time
let expectedMinutesInOven = 40

// 2. Remaining minutes in oven
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// 3. Preparation time
func preparationTimeInMinutes(layers: Int) -> Int {
    return layers * 2
}

// 4. Total time spent
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return preparationTimeInMinutes(layers: layers) + elapsedMinutes
}
