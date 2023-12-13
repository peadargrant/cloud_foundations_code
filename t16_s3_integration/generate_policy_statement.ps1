param (
	[Parameter(Mandatory)] $TopicArn,
	[Parameter(Mandatory)] $BucketArn
	)
	
# read the JSON policy file and convert to Powershell objects
$NewPolicy = Get-Content topic_policy_template.json | ConvertFrom-Json

# fill in the Topic ARN as the resource
$NewPolicy.Statement[0].Resource=$TopicArn

# fill in the S3 bucket ARN in the condition
$NewPolicy.Statement[0].Condition.ArnEquals.'aws:SourceArn'=$BucketArn

# read in the attributes
$Attributes=(aws sns get-topic-attributes --topic-arn $TopicArn | ConvertFrom-Json)

# get the existing policy as PowerShell object
$Policy = $Attributes.Attributes.Policy | ConvertFrom-Json

# add the statement from the New policy on to the existing policy
# (the += operator means append to list)
$Policy.Statement += $NewPolicy.Statement[0]

# JSON encode the amended policy and output to file
$Policy | ConvertTo-Json -Depth 99 | Out-File topic_policy.json -Encoding ascii

# Apply the new policy file
aws sns set-topic-attribute --topic-arn $TopicArn --attribute-name Policy --attribute-value file://topic_policy.json
