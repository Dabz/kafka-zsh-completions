#!/bin/zsh

OUT=kafka.zsh
COMMANDS=("kafka-acls" "kafka-avro-console-consumer" "kafka-avro-console-producer"
"kafka-broker-api-versions" "kafka-configs" "kafka-console-consumer" 
"kafka-console-producer" "kafka-consumer-groups" "kafka-consumer-perf-test" 
"kafka-delegation-tokens" "kafka-topics"
)

function kafka_retrieve_help_command() {
	cmd=$1
	option=""
	desc=""
	help_output=`$cmd 2>&1`
	arg_name="$(echo $cmd | tr - _)_args"

	echo "declare -a $arg_name"  >> $OUT
	echo "$arg_name=()" >> $OUT

	for word in `echo $help_output`; do
		if [[ $word =~ ^--[a-z\-]+ ]] && [[ $word =~ [a-z]+ ]]; then
			if [ ! -z $option ]; then
				echo "$arg_name+=('$option:${desc//\'/''}')" >> $OUT
			fi	

			option=$word
			desc=""
		else
			desc="$desc $word"
		fi
	done

	if [ ! -z $option ]; then
		echo "$arg_name+=('$option:${desc//\'/''}')" >> $OUT
	fi	
}

function kafka-command() {
	cmd=$1
	echo "compdef \"_kafka-command $cmd\" $cmd" >> $OUT
}

cat << EOF > $OUT
#!/bin/sh
#
# DISCLAIMER: THIS FILE HAS BEEN AUTOMATICALLY GENERATED
# PLEASE DO NOT TOUCH!!!
# IF YOU NEED TO DO ANY MODIFICATION, EDIT GENERATE.ZSH
# FOR MORE INFORMATION https://github.com/Dabz/kafka-zsh-completions
#

function _kafka-command() {
	cmd=\$1
	arg_name="\$(echo \$cmd | tr - _)_args"
	typeset -a options
	eval _describe 'values' options -- \$arg_name
}

EOF

for cmd in ${COMMANDS[@]}; do
	kafka_retrieve_help_command $cmd
	kafka-command $cmd
done
