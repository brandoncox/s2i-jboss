# s2i-jboss

### First make sure s2i is installed
  https://github.com/openshift/source-to-image#installation


####Download:
    git clone https://github.com/brandoncox/s2i-jboss/ && cd s2i-jboss/
####Build:
    s2i build test/test-app/ karsuncloud/eofferapp *whatever_image_name*
####Run:
    docker run -p 8080:8080 *whatever_image_name*
  
