#!/bin/bash

function exec_or_override(){
	source_file=$1
	override_function=override_$(basename ${source_file%.*})
	[ "$(type -t $override_function)" == 'function' ] && $override_function $source_file || . $source_file
}
