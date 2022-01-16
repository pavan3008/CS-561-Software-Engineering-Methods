EC2 instance

The following steps will guide you through the process of apimocking in an EC2 instance of AWS

1. Create a new EC2 instance in your AWS with any specifications of your choice
2. Now, connect the EC2 instance once it's in the running state. You can connect via ssh or other options you like.
3. Install node and apimocker along with git which will aid you in cloning the repository
4. Use git clone to clone your repository into your desired directory
5. Now, go to the config.json file and edit mockdirectory path to your pwd path and save it
6. Finally, run the command "apimocker -c config.json"
7. Now, open other terminal from EC2 instance and run the command "curl "your url""

Thus, it displays the information of the weather at corvallis and verfies that the api is successfully mocked.


