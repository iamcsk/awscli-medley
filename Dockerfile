FROM alpine

LABEL maintainer="iamcsk90@gmail.com"

ADD install.sh install.sh
RUN chmod +x install.sh && sh install.sh && rm install.sh

CMD ["/bin/bash"]