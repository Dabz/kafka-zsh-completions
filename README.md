# Kafka ZSH completion 
This projects aims at developing Kafka completion scripts. The scripts may be contributed to another project when stable enough.

## Usage

To start using the Kafka autocompletion just download the repository locally and `source kafka-zsh-completions.plugin.zsh` 

For [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh) users execute:
```
cd $ZSH_CUSTOM/plugins
git clone git@github.com:Dabz/kafka-zsh-completions.git
```
and add `kafka-zsh-completions` to plugins section in your `.zshrc` file, like `plugins=(z git tmux kafka-zsh-completions)`

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

- The source of information used for the completion is gathered from the usage of the CLI tool. 
- This script relies on Apache Kafka Confluent distribution (either Open Source or Enterprise)
- To avoid reloading and parsing all the information and each shell, a first script `kafka.plugin.zsh.generator` is actually gathering all the information on the local machine and generating the `kafka-zsh-completions.plugin.zsh` auto-completion file with hardcoded information. 

## Examples

[![asciicast](https://asciinema.org/a/TenI5dsznpLp8XM4HTsjiJYGA.png)](https://asciinema.org/a/TenI5dsznpLp8XM4HTsjiJYGA)
