FROM busybox
RUN echo "###############################################################################"; \
echo "In order to build the containers, run \"docker build -f <component>.dockerfile>\"";\
echo "###############################################################################"; exit 1
