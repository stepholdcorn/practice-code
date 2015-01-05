Feature: cucumber says OH HAI CUCUMBER
	In order to start learning Cucumber
	As a student at Makers Academy
	I want to say OH HAI CUCUMBER

Scenario: cucumber says OH HAI CUCUMBER
	Given a lulz greeter
	When I sent it the greet message
	Then I should see "OH HAI CUCUMBER"