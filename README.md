# Kafka ZSH completion 
This projects aims at developing Kafka completion scripts. The scripts may be contributed to another project when stable enough.

## Important information

For topic completion, you **must**:

1. Have [kcat](https://docs.confluent.io/platform/current/app-development/kafkacat-usage.html) in your ZSH PATH
1. `$HOME/.config/kcat.conf` configured to connect to your Apache Kafka cluster 

## Usage

To start using the Kafka autocompletion just download the repository locally and `source kafka.plugin.zsh` 

## Supported completion

- kafka-topics
- kafka-acls
- kafka-configs
- kafka-console-producer
- kafka-console-consumer
- kafka-consumer-perf-test
- kafka-producer-perf-test
- kafka-avro-console-consumer
- kafka-avro-console-producer
- kafka-broker-api-versions
- kafka-consumer-groups
- kafka-delegation-tokens
- kafka-dump-log
- kafka-log-dirs
- kafka-verifiable-consumer
- kafka-verifiable-producer
- kafka-streams-application-reset
- kafka-mirror-maker
- kafka-delete-records
- replicator

## Notes

- The source of information used for the completion is gathered from the usage of the CLI tools. 
- This script relies on Apache Kafka Confluent distribution (either Open Source or Enterprise).
- To avoid reloading and parsing all the information at the beginning of each session, a script `kafka.plugin.zsh.generator` is generating the `kafka.plugin.zsh` auto-completion file with hardcoded information. 

## Examples

[![asciicast](https://asciinema.org/a/TenI5dsznpLp8XM4HTsjiJYGA.png)](https://asciinema.org/a/TenI5dsznpLp8XM4HTsjiJYGA)
