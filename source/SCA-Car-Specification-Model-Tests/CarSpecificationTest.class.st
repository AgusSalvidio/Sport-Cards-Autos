Class {
	#name : #CarSpecificationTest,
	#superclass : #TestCase,
	#category : #'SCA-Car-Specification-Model-Tests'
}

{ #category : #'private - accessing' }
CarSpecificationTest >> acceleration [ 

	^ SCAUnits acceleration with: 4.79
]

{ #category : #'private - accessing' }
CarSpecificationTest >> brakeSystem [     

	^ 'ABS'
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithAccelerationBeing: anAccelerationAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: (SCAUnits acceleration with: anAccelerationAmount)   
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithCylinderCapacityBeing: aCylenderCapacityAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration   
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: (SCAUnits cylinderCapacity with: aCylenderCapacityAmount)  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithFuelConsumptionBeing: aFuelConsumptionAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration   
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: (SCAUnits fuelConsumption with: aFuelConsumptionAmount)  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
	

]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithManeuverabilityBeing: aManeuverabilityAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration 
		power: self power 
		maneuverability: aManeuverabilityAmount  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithPowerBeing: aPowerAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration   
		power: (SCAUnits power with: aPowerAmount)  
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithRPMBeing: aRPMAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: (SCAUnits rpm with: aRPMAmount)  
		acceleration: self acceleration   
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithTopSpeedBeing: aTopSpeed [

	^ self 
		customCarSpecificationWithTopSpeed: (SCAUnits topSpeed with:aTopSpeed) 
		rpm: self rpm 
		acceleration: self acceleration  
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithTractionBeing: aTractionAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration  
		power: self power 
		maneuverability: self maneuverability  
		traction: aTractionAmount    
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> carSpecificationWithWeightBeing: aWeightAmount [ 

	^ self 
		customCarSpecificationWithTopSpeed: self topSpeed 
		rpm: self rpm 
		acceleration: self acceleration   
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: aWeightAmount 
		brakeSystem: self brakeSystem 
]

{ #category : #'private - accessing' }
CarSpecificationTest >> customCarSpecificationWithTopSpeed: aTopSpeed rpm: theRPM acceleration: anAccelerationAmount power: aPowerAmount maneuverability: aManeuverabilityAmount traction: aTractionAmount fuelConsumption: aFuelCosumptionAmount cylinderCapacity: theCylinderCapacityAmount weight: aWeightAmount brakeSystem: aBrakeSystem [
	
	^ CarSpecification 
			topSpeed: aTopSpeed 
			rpm: theRPM
			acceleration: anAccelerationAmount 
			power: aPowerAmount
			maneuverability: aManeuverabilityAmount
			traction: aTractionAmount 
			fuelConsumption: aFuelCosumptionAmount 
			cylinderCapacity: theCylinderCapacityAmount
			weight: aWeightAmount 
			brakeSystem: aBrakeSystem
]

{ #category : #'private - accessing' }
CarSpecificationTest >> cylinderCapacity [     

	^ SCAUnits cylinderCapacity with: 3795
]

{ #category : #'private - accessing' }
CarSpecificationTest >> fuelConsumption [    

	^ SCAUnits fuelConsumption with: 7.3
]

{ #category : #'private - accessing' }
CarSpecificationTest >> maneuverability [  

	^ 73
]

{ #category : #'private - accessing' }
CarSpecificationTest >> power [ 

	^ SCAUnits power with: 340
]

{ #category : #'private - accessing' }
CarSpecificationTest >> rpm [

	^ SCAUnits rpm with: 6900
]

{ #category : #tests }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeAFloat [

	self
		should: [ self carSpecificationWithAccelerationBeing: 20 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be a float.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithAccelerationBeing: -2.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeAnInteger [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardFuelConsumptionAmountMustBeAFloat [

	self
		should: [ self carSpecificationWithFuelConsumptionBeing: 4 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card fuel consumption amount must be a float.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardFuelConsumptionAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithFuelConsumptionBeing: -2.45 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card fuel consumption amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardManeuverabilityAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithManeuverabilityBeing: 12.6 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card maneuverability amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardManeuverabilityAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithManeuverabilityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card maneuverability amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardPowerAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithPowerBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card horsepower amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardPowerAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithPowerBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card horsepower amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardRPMAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithRPMBeing: 2.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card RPM amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardRPMAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithRPMBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card RPM amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTopSpeedAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithTopSpeedBeing: 95.6 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTopSpeedAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithTopSpeedBeing: -2	]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithTractionBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card traction amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithTractionBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card traction amount must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionWeightMustBeAnInteger [

	self
		should: [ self carSpecificationWithWeightBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card weight amount must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionWeightMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithWeightBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card weight amount must be greater or equal than 1.'
]

{ #category : #'private - accessing' }
CarSpecificationTest >> topSpeed [

	^ SCAUnits topSpeed with: 250
]

{ #category : #'private - accessing' }
CarSpecificationTest >> traction [   

	^ 37
]

{ #category : #'private - accessing' }
CarSpecificationTest >> weight [     

	^ SCAUnits weight with: 1725
]
