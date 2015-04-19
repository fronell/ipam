curl http://localhost:4000/ips -iv -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '
{
  "ip":
  {
    "ip":"10.180.190.1",
    "class_c":"10.180.190",
    "occupado":"false"
  }
}'
