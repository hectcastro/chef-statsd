## v0.1.1

* Added a legacyNamespace attribute for metric namespacing.

## v0.1.0

* Fixed hardcoded StatsD path in RHEL init script.
* Added test-kitchen support.

## v0.1.0

* Fixed issues with stopping statsd service via init.d.

## v0.0.10

* Removed trailing comma that was causing issues with Chef on Ruby 1.8.7.

## v0.0.9

* Fixed service resource restart support.

## v0.0.8

* Added support for RHEL.

## v0.0.7

* Fixed order of shell redirection to ensure that `STDERR` flows to log file.

## v0.0.6

* Added init script support for Ubuntu 10.04 and Upstart 0.6.5.

## v0.0.5

* Altered Upstart configuration file for version 1.4 and above.

## v0.0.4

* Added Foodcritic and Travis CI.
