#!/bin/env bash:

alias 'ec2'="aws ec2 describe-instances --filters  \"Name=instance-state-name,Values=pending,running,stopped,stopping\" --query \"Reservations[].Instances[].[InstanceId, [Tags[?Key=='Name'].Value][0][0], State.Name, PrivateIpAddress, PublicIpAddress]\" --output=table"

alias 'key'="aws ec2 describe-key-pairs --query \"KeyPairs[].[KeyName, KeyFingerprint]\" --output=table "
