# Suvie Date Adjusting Challenge
At Suvie we delivery meals to our customers on a weekly schedule. For your technical challenge we would like you to implement a feature to allow a customer to change their weekly delivery schedule through an API endpoint you will implement.The application should fulfill the requirements below. The source code must be placed in a public repo on GitHub. The application should be deployable on Heroku.

Code
- Please fork the following repository

Requirements
- There should exist an API that updates a user's account information
	- The API should be secured with JWT token authentication
	- If the user's cadence changes, then we should update the user's schedule of future orders to be correct for the new cadence selected by the user.
	- Please use Grape for creating API's.
	- Please return the list of upcoming orders for a user in the success response serialized as JSON.
- Please add tests for critical code to ensure that the implementation of adjusting a user's cadence is performed correctly.
- The application should be deployable to Heroku
