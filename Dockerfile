FROM mageai/mageai:0.9.76

ARG USER_CODE_PATH=/home/src/${PROJECT_NAME}
ARG REQUIRE_USER_AUTHENTICATION=1
ARG DEFAULT_OWNER_EMAIL=admin@admin.com
ARG DEFAULT_OWNER_PASSWORD=admin
ARG DEFAULT_OWNER_USERNAME=admin
# Note: this overwrites the requirements.txt file in your new project on first run. 
# You can delete this line for the second run :) 
COPY requirements.txt ${USER_CODE_PATH}/requirements.txt 

RUN pip3 install -r ${USER_CODE_PATH}/requirements.txt 