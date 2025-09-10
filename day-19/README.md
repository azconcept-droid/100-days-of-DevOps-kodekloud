xFusionCorp Industries is planning to host two static websites on their infra in Stratos Datacenter. The development of these websites is still in-progress, but we want to get the servers ready. Please perform the following steps to accomplish the task:



a. Install httpd package and dependencies on app server 2.


b. Apache should serve on port 5000.


c. There are two website's backups /home/thor/ecommerce and /home/thor/games on jump_host. Set them up on Apache in a way that ecommerce should work on the link http://localhost:5000/ecommerce/ and games should work on link http://localhost:5000/games/ on the mentioned app server.


d. Once configured you should be able to access the website using curl command on the respective app server, i.e curl http://localhost:5000/ecommerce/ and curl http://localhost:5000/games/
