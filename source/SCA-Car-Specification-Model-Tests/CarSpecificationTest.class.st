Class {
	#name : #CarSpecificationTest,
	#superclass : #TestCase,
	#category : #'SCA-Car-Specification-Model-Tests'
}

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> acceleration [ 

	^ SCAUnits acceleration with: 4.79
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
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

{ #category : #'*SCA-Car-Specification-Model-Tests' }
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

{ #category : #'*SCA-Car-Specification-Model-Tests' }
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

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> cylinderCapacity [     

	^ SCAUnits cylinderCapacity with: 3795
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> fuelConsumption [    

	^ SCAUnits fuelConsumption with: 7.3
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> maneuverability [  

	^ 73
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> power [ 

	^ SCAUnits power with: 340
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> rpm [

	^ SCAUnits rpm with: 6900
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeAFloat [

	self
		should: [ self carSpecificationWithAccelerationBeing: 20 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be a float.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithAccelerationBeing: -2.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeAnInteger [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be an integer.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardFuelConsumptionAmountMustBeAFloat [

	self
		should: [ self carSpecificationWithFuelConsumptionBeing: 4 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card fuel consumption amount must be a float.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
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
		withMessageText: 'A car card maneuverability number must be an integer.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardManeuverabilityAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithManeuverabilityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card maneuverability number must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardPowerAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithPowerBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card horsepower must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardPowerAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithPowerBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card horsepower must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardRPMAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithRPMBeing: 2.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card RPM must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardRPMAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithRPMBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card RPM must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardTopSpeedNumberMustBeAnInteger [

	self
		should: [ self carSpecificationWithTopSpeedBeing: 95.6 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed must be an integer.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardTopSpeedNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithTopSpeedBeing: -2	]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed must be greater or equal than 1.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionAmountMustBeAnInteger [

	self
		should: [ self carSpecificationWithTractionBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card traction number must be an integer.'
]

{ #category : #tests }
CarSpecificationTest >> testCarCardTractionAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithTractionBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card traction number must be greater or equal than 1.'
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

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> topSpeed [

	^ SCAUnits topSpeed with: 250
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> traction [   

	^ 37
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> weight [     

	^ SCAUnits weight with: 1725
]
