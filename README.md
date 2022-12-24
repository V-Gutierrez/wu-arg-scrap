# I love bash scripting
  This one does one of my daily chores which is to keep look currencies so I can pick a favorable one. Using ntfy I fastly could make a setup where I receive notifications on my phone and store data for research purposes.

  Run the code, mess a little with cron timings and have fun!


### 2.0.1
- Python charts Generation based on time and values
![image](https://user-images.githubusercontent.com/62355596/208725165-50a32946-5a62-4ce3-8e19-3f5f3192d1ee.png)


### 3.0.0
- Conversions REST API is out:
  http://_:5858/convertion/BRL/ARS/:value-to-convert
  http://_:5858/convertion/BRL/USD/:value-to-convert

Return example
  ```json
{
"value": "10002",
"convertedAmount": "647529.48 ARS",
"lastPrice": "64.74ARS"
}
```