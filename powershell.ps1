# Set variables
$resourceGroupName = "myResourceGroup"
$storageAccountName = "mystorageaccount"

# Get the storage account key
$storageAccountKey = (Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName).Value[0]

# Get the storage account context
$storageContext = New-AzStorageContext -StorageAccountName $storageAccountName -StorageAccountKey $storageAccountKey

# Get the connection string
$connectionString = $storageContext.ConnectionString

# Print the connection string
Write-Output $connectionString