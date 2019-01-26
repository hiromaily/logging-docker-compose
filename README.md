# logging-docker-compose
logging on docker-compose


## Configuration on Grafana
#### Connect Grafana To Elasticsearch
1. Click on the Add Data Source button to be taken to the new data source form.
2. In the name, enter Logs.
3. Choose Elasticsearch in the Type drop down.
4. Enter http://elasticsearch:9200 for the URL.
5. In Index Name enter [logstash-]YYYY.MM.DD and choose Daily in the Pattern field.

![images](https://raw.githubusercontent.com/hiromaily/logging-docker-compose/master/images/elasticsearch01.png)

#### View The Log Data in Grafana
1. In the left sidebar hover over the plus icon[+] and choose Dashboard.
2. Choose Table as the panel type and a table will appear.
3. Drag the bottom right corner of the table to fill the window.

4. To edit the contents of the table, hover over the title bar for the table and choose Edit.
5. Click on the General tab and give your table the Title field `Logs`.
6. Click on the Metrics tab and choose `Elasticsearch` in the Data Source field from drop down.
7. For the Metric field, click and change it to `Raw Document`.
8. Click on the Options tab and change the Table Transform to JSON Data.
9. Click the [+] icon next to Columns field and choose `@timestamp`.
10. Click the [+] icon again and choose `log`.
11. Close the edit panel.

#### Filter the Log Data in Grafana
1. From the created dashboard(left panel), click on the `gear` icon in the top right corner to open the Dashboard settings.
2. On the left side, click on Variables and click the `Add Variable` button.
3. Under Name, enter `filter`.
4. For Label, enter `Filter`.
5. Under Type, choose `Ad hoc filters`.
6. Under Data Source choose `Elasticsearch`.
7. Click the `Add` button.
8. Click the back arrow in the top right corner to return to the Dashboard.
![images](https://raw.githubusercontent.com/hiromaily/logging-docker-compose/master/images/elasticsearch02.png)

