
#!/bin/bash

# run Jenkins container
docker run \
  --name instaprizer-jenkins \
  --detach \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume /var/jenkins_home:/var/jenkins_home \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  instaprizer-jenkins

# show endpoint
echo '##### Instaprizer Jenkins container successfully created #####'
echo 'You can access Jenkins at: http://'$(curl -s ipconfig.co)':8080'
