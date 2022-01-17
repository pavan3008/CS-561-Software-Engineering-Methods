**API mocking using EC2 instance**

URL to check the apimocking: http://18.204.216.147:7878/data/2.5/weather

![](https://miro.medium.com/max/287/0*at6076vHFC6hPbP0.jpg)

The following steps will guide you through the process of apimocking in an EC2 instance of AWS

1. Create a new EC2 instance in your AWS with any specifications of your choice
2. Now, connect the EC2 instance once it's in the running state. You can connect via ssh or other options you like.

3. Install the following:

   - Install git 
            
            sudo yum install git -y
   - Setup Node
        > Install nvm
                
            curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
        > Activate nvm
        
            . ~/.nvm/nvm.sh
        > Install node
        
            nvm install node
            
    - Install apimocker
        
            npm install -g apimocker
            
4. Use git clone to clone your repository into your desired directory
5. Now, go to the `config.json` file and edit mockdirectory path to your pwd path and save it
6. Finally, run the command 
    
            apimocker -c config.json
7. Now, open other terminal from EC2 instance and run the command ```curl "your url"```

Finally, it displays the information of the weather at corvallis and verfies that the api is successfully mocked.

*Follow the below steps to keep your app live all the time:*
1. Install express 
        
        npm install express --save
2. Install pm2 
        
        npm install pm2
3. Start app.js
        
        pm2 start app.js



