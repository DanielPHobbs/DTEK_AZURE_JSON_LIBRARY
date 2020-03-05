#Use one of the templates below as a JSON file that describes how to create the alert.
#Edit and use the corresponding parameters file as a JSON to customize the alert.
#For the metricName parameter, see the available metrics in Azure Monitor supported metrics.
#Deploy the template using any deployment method.

#An explanation of the schema and properties for an alert rule is available here.

#To create an alert using a Resource Manager template, you create a resource of type Microsoft.Insights/metricAlerts 
#and fill in all related properties. 

Connect-AzAccount

Select-AzSubscription -SubscriptionName <yourSubscriptionName>
 
New-AzResourceGroupDeployment -Name AlertDeployment -ResourceGroupName ResourceGroupofTargetResource `
  -TemplateFile simplestaticmetricalert.json -TemplateParameterFile simplestaticmetricalert.parameters.json