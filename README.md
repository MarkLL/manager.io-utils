# manager.io-utils
Collection of scripts, tools and notes for automating Manager.io maintenance.

Include are both Windows and Linux/bash versions. In general I develop on
a Windows 10 environment with a couple of WSL environments for times when
it's easier to run something on Linus.

For personal use, I have the stand alone version running on Windows and for
development purposes, I tend to use ManagerServer running with mono on a
WSL2 Ubuntu 18.04 LTS environment.

Utilities included:
So far we have a bash script to download either the latests version of
Manager.zip or a specified version. These are downloaded to a storage
location (./zips) and extracted to a temporary program location. This
is all designed to work in a location that the user is an administrator
to avoid using sudo or root permissions.

Also included is a way to check the database schema version of your manager
files (managerDbVer.sh/mioDbVer.cmd). The goal is to have a list of
program versions and database schema's so it's possible to know what version
you can down-grade to if you decide to downgrade.
