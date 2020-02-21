Invoke-WebRequest https://raw.githubusercontent.com/shardulkul/az-aib-trackit/master/deploy-iis.xml -OutFile .\deploy-iis.xml
Install-WindowsFeature -ConfigurationFile .\deploy-iis.xml