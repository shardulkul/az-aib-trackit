Invoke-WebRequest https://raw.githubusercontent.com/shardulkul/az-aib-trackit/master/deploy-iis.xml -OutFile .\deploy-iis.xml
Invoke-WebRequest https://download.microsoft.com/download/E/6/B/E6BFDC7A-5BCD-4C51-9912-635646DA801E/en-US/msodbcsql_17.5.1.1_x64.msi -OutFile .\msodbcsql_17.5.1.1_x64.msi
Invoke-WebRequest https://download.microsoft.com/download/A/9/8/A98CF446-A38E-4B0A-A967-F93FAB474AE0/en-US/msoledbsql_18.3.0.0_x64.msi -OutFile .\msoledbsql_18.3.0.0_x64.msi

Install-WindowsFeature -ConfigurationFile .\deploy-iis.xml
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i msodbcsql_17.5.1.1_x64.msi /qb!" -Wait
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i msoledbsql_18.3.0.0_x64.msi /qb!" -Wait
