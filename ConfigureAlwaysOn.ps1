# Define parameters
$ClusterName = "Cluster1"
$InstanceName = "Instance1"
$AGName = "AG1"

# Example configuration command
Enable-SqlAlwaysOn -Path "SQLSERVER:\SQL\$InstanceName\AvailabilityGroups\$AGName" -ClusterName $ClusterName
