# Cloud Foundations CA1

**Weight:** 30/100

**Due:** as displayed on Moodle

## Introduction

This CA will demonstrate your skills developed in the Cloud Foundations module.

## Requirements

You are to demonstrate a simple interconnection of S3, SNS and SQS.
When a file is uploaded to S3 you should be able to receive an e-mail, and send a message to 2 queues.
(In total there are 3 subscribers.)
One of the queue consumers should be running on an EC2 instance. 

### Cloud environment setup (20%)

You are to set up required cloud resources (e.g. creating VPC, internet gateway etc) using a PowerShell script.
Your script must be called `setup.ps1`. 

### Instance setup (20%)

You should provide the commands you used to setup the EC2 instance in the file 
`instance_setup.sh`.

### Working screenshot (10%)

Provide a `screenshot.png` file demonstrating your solution working.
It must be possible to see a message being received on at least 1 subscriber in your screenshot.

### Teardown (20%)

Write a Powershell script to remove (some of) the resources that you created named `teardown.ps1`. 

## Submission

Place all files required above plus any additional needed for your solution in a ZIP folder named exactly `ca1.zip`.

## Feedback

Summary written feedback will be given in Moodle.
Detailed verbal feedback is available on request in consultation.

