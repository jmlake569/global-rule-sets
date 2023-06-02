#define API Endpoint
$uri = "https://workload.us-1.cloudone.trendmicro.com/api/applicationcontrolglobalrules"

#define headers
$headers = @{
    'Authorization' = 'YOUR API KEY HERE'
    'Content-Type'  = 'application/json'
    'api-version' = 'v1'
}

#define JSON payload
$body = @{
    "applicationControlGlobalRules" = @(
        @{
            "sha256": "string",
            "sha1": "string",
            "md5": "string",
            "description": "string"
        }
    )
} | ConvertTo-Json

#use the Invoke-RestMethod to call the API
$response = Invoke-RestMethod -Uri $uri -Method Post -Body $body -Headers $headers

#output the response
$response
