Class {
	#name : #BaselineOfSportCardsAutos,
	#superclass : #BaselineOf,
	#category : #BaselineOfSportCardsAutos
}

{ #category : #baselines }
BaselineOfSportCardsAutos >> baseline: spec [

	<baseline>
	spec for: #pharo do: [ 
		self
			setUpDependenciesIn: spec;
			setUpPackagesIn: spec;
			setUpGroupsIn: spec
		]
]

{ #category : #baselines }
BaselineOfSportCardsAutos >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #baselines }
BaselineOfSportCardsAutos >> setUpDependenciesIn: spec [

	spec baseline: 'Buoy' with: [ spec repository: 'github://ba-st/Buoy:v6/source' ]
]

{ #category : #baselines }
BaselineOfSportCardsAutos >> setUpGroupsIn: spec [

	spec
		group: 'Deployment' with: #( 'SCA-Card-Model' );
		group: 'Tests' with: #( 'SCA-Card-Model-Tests' );
		group: 'CI' with: 'Tests';
		group: 'Tools' with: #(  );
		group: 'Dependent-SUnit-Extensions' with: #(  );
		group: 'Development' with: #( 'Tools' 'Tests' )
]

{ #category : #baselines }
BaselineOfSportCardsAutos >> setUpPackagesIn: spec [

	spec
		package: 'SCA-Card-Model' with: [ spec requires: #( 'Buoy' ) ];
		package: 'SCA-Card-Model-Tests' with: [ spec requires: 'SCA-Card-Model' ]
]
