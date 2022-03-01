Class {
	#name : #DevelopmentTest,
	#superclass : #TestCase,
	#category : #'SCA-Development-Support-Tests'
}

{ #category : #'private - accessing' }
DevelopmentTest >> ownedPackages [

	^ (RPackageOrganizer default packages select: [ :package | 
		   package name beginsWith: 'SCA' ]) sorted
]
