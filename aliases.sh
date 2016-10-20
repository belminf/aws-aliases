#!/bin/env bash:

alias 'aws-ec2s'="aws ec2 describe-instances --filters  \"Name=instance-state-name,Values=pending,running,stopped,stopping\" --query \"Reservations[].Instances[].{ID:InstanceId, Name:Tags[?Key=='Name'].Value | [0].Value, State:State.Name, \\\"Private IP\\\":PrivateIpAddress, \\\"Public IP\\\":PublicIpAddress}\" --output=table"

alias 'aws-keys'="aws ec2 describe-key-pairs --query \"KeyPairs[].{Name:KeyName, Fingerprint:KeyFingerprint}\" --output=table "
