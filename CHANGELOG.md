## v1.1.9

* Add `nodejs_bin` attribute to explicitly point to a Node.js binary.

## v1.1.8

* Ensure `globalSuffix` is `undefined` when not used.

## v1.1.7

* Add attribute for `globalSuffix` configuration settings.

## v1.1.6

* Add attribute for `dumpMessages` configuration setting.
* Update CentOS tests to CentOS 6.5.

## v1.1.5

* Fixed issue with non-HTTPS Git repository was triggering an error on RHEL.

## v1.1.4

* Fixed hardcoded path to `node` within runit.
* Fix reference to runit service and delay notification.

## v1.1.3

* Add `reference` attribute to specify StatsD versions.

## v1.1.2

* Changed Git repository protocol to HTTPS.

## v1.1.1

* Added `percentThreshold` option to StatsD configuration.

## v1.1.0

* Added auto-discovery for Graphite.
* Added deleteIdleStats, deleteSets and deleteCounters.

## v1.0.0

* Switched to runit for uniform init support across Debian + RHEL.
* Fixed FC002.
* Added Test Kitchen support.

## v0.1.4

* Added `deleteGauges` and `deleteTimers` options to StatsD configuration.

## v0.1.3

* Fixed hardcoded StatsD path in Upstart script.

## v0.1.2

* Added the rest of the namespacing attributes. See: https://github.com/etsy/statsd/blob/master/docs/namespacing.md

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
