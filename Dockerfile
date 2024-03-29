# Use an official Python runtime based on Debian  11 (bullseye) as a parent image
FROM python:3.10-slim-bullseye

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip

# Make port  80 available to the world outside this container
EXPOSE  80

# Define environment variable
ENV NAME World

# Run player_detection.py when the container launches
CMD ["python", "player_detection.py"]
