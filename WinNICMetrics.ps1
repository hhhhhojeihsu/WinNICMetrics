function main()
{
  # Show NIC
  Get-NetIPInterface
  $default_nic = Read-Host "Please enter the ifIndex (first column) of your 'default' NIC"
  $target_nic = Read-Host "Please enter the ifIndex (first column) of your 'target' NIC"

  Set-Metric $default_nic $target_nic
  Read-Host "After your operation is finished, press enter to revert"
  Reset-Metric $default_nic $target_nic
  return
}

function Set-Metric
{
  Param
  (
    [Parameter()][int]$default_nic,
    [Parameter()][int]$target_nic
  )
  Set-NetIPInterface -InterfaceIndex $default_nic -InterfaceMetric 2
  Set-NetIPInterface -InterfaceIndex $target_nic -InterfaceMetric 1
  Write-Output "Metrics set"
  return
}

function Reset-Metric()
{
  Param
  (
    [Parameter()][int]$default_nic,
    [Parameter()][int]$target_nic
  )
  Set-NetIPInterface -InterfaceIndex $default_nic -AutomaticMetric Enabled
  Set-NetIPInterface -InterfaceIndex $target_nic -AutomaticMetric Enabled
  Write-Output "Metrics revert"
  return
}

main