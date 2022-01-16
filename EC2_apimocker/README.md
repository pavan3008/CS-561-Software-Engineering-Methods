**API mocking using EC2 instance**

URL to check the apimocking: http://18.204.216.147:7878/data/2.5/weather

*This URL works only when the apimocking is running the EC2 instance terminal* 

![](https://miro.medium.com/max/287/0*at6076vHFC6hPbP0.jpg)

The following steps will guide you through the process of apimocking in an EC2 instance of AWS

1. Create a new EC2 instance in your AWS with any specifications of your choice
2. Now, connect the EC2 instance once it's in the running state. You can connect via ssh or other options you like.
3. Install node and apimocker along with git which will aid you in cloning the repository
    - use command ```sudo yum install git -y``` to install git
    - follow this [link](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html) to install node
    - use command ```sudo npm install -g apimocker``` to install apimocker.
5. Use git clone to clone your repository into your desired directory
6. Now, go to the ```config.json``` file and edit mockdirectory path to your pwd path and save it
7. Finally, run the command ```apimocker -c config.json```
8. Now, open other terminal from EC2 instance and run the command ```curl "your url"```

FInally, it displays the information of the weather at corvallis and verfies that the api is successfully mocked.


