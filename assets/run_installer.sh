#!/usr/bin/env bash

#/install/database/runInstaller -silent -ignorePrereq -waitforcompletion -responseFile /assets/db_install.rsp

/install/database/runInstaller -silent -ignoreSysPrereqs -ignorePrereq -force -waitforcompletion -responseFile /assets/db_install.rsp

