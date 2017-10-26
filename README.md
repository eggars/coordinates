# Coordinates

Sample API for fetching geo location of a street address

## Getting Started


* check-out
* run server
* make http GET calls to **/coordinates/{street address}**


## Running the tests

While in project dir run:
```
rspec spec
```

## What to expect (or not):
* GET calls will return a JSON string containing an array of LAT and LON in that order
* invalid street address will return NULL
* API errors and/or timeouts will not bubble up - instead a NULL value will be returned


## Acknowledgments

* Thanks "Asana Rebel" for reminding me how cool RoR is!