@echo off

rem
rem Licensed to the Apache Software Foundation (ASF) under one or more
rem contributor license agreements.  See the NOTICE file distributed with
rem this work for additional information regarding copyright ownership.
rem The ASF licenses this file to You under the Apache License, Version 2.0
rem (the "License"); you may not use this file except in compliance with
rem the License.  You may obtain a copy of the License at
rem
rem    http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.
rem

rem Figure out where the Spark framework is installed
call "%~dp0find-spark-home.cmd"

set _SPARK_CMD_USAGE=Usage: .\bin\run-example [options] example-class [example args]

rem The outermost quotes are used to prevent Windows command line parse error
rem when there are some quotes in parameters, see SPARK-21877.
cmd /V /E /C ""%~dp0spark-submit.cmd" run-example %*"


