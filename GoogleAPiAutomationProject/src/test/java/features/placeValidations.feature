Feature: Validating Place APIs

Scenario Outline: Verify if place is being successfully added using AddPlace API
Given Add place payload with "<name>" "<language>" "<Address>"
When user calls "AddPlaceApi" with "POST" httprequest
Then the API call get success with status code 200
And "status" in response body is "OK"
And "scope" in response body is "App"
And Verify place_Id created maps to "<name>" using "getPlaceApi"

Examples:
|name|language|Address|
|john|English|NewTown|
|johny|French|OldTown|
|Jacob|Spanish|NoTown|


Scenario: Verify if Delete Place API is working

Given Delete Place Payload
When user calls "DeletePlaceApi" with "POST" httprequest
Then the API call get success with status code 200

