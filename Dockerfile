FROM registry.redhat.io/ubi9:9.2-722
MAINTAINER <Rajakumar.Batulla@ibm.com>
LABEL name="happywebserver1" \
      vendor="Example Inc1" \
      version="1.0" \
      release="1" \
      run='docker run -d -p 8080:80 --name=happyweb happywebserver' \
      description='a different sample description1' \
      summary='sa different'
RUN mkdir /licenses && echo "some license text" > /licenses/evil-terms
RUN echo "This container image was build on:" > /foo.text
RUN date >> /foobar.text
RUN echo "new user QA 1"
EXPOSE 8080
USER test

# Start the service
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
