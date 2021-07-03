# Set base image (host OS)
FROM python:3.8

# Set The Working Directory in the Container
WORKDIR /code

# copy the dependencies file to the working directory
COPY requirements.txt .

# Install Dependencies
RUN pip install -r ./requirements.txt

# copy the content to the working directory
COPY server.py .

# command to run container start
CMD [ "python", "./server.py" ]