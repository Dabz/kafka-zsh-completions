# Kafka ZSH completion 
This projects aims at developing Kafka completion scripts. The scripts may be contributed to another project when stable enough.

## Usage

To start using the Kafka autocompletion just download the repository locally and `source kafka.zsh` 

## Notes

- The source of information used for the completion is gathered from the usage of the CLI tool. 
- This script relies on Apache Kafka Confluent distribution (either Open Source or Enterprise)
- To avoid reloading and parsing all the information and each shell, a first script `generate.zsh` is actually gathering all the information on the local machine and generating the `kafka.zsh` auto-completion file with hardcoded information. 

## Examples

[![asciicast](https://asciinema.org/a/uEjgB2jcnLBeHMZXHAcyya2wH.png)](https://asciinema.org/a/uEjgB2jcnLBeHMZXHAcyya2wH)
