sudo npm install -g @aws-amplify/cli

# Amplify Mocking require Java runtime
wget -O- https://apt.corretto.aws/corretto.key | sudo apt-key add - 
sudo add-apt-repository 'deb https://apt.corretto.aws stable main'
sudo apt-get update; sudo apt-get install -y java-1.8.0-amazon-corretto-jdk

sudo npm install --save aws-amplify-react aws-amplify 