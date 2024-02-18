'''
All the commands we will use in docker
1. FROM
2. copy
3. EXPOSE
4.WORKDIR
5. RUN
6. CMD 
'''

# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/app

# Copy the current directory contents into the container at /usr/app
COPY . .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run flask_api.py when the container launches
CMD ["python3", "flask_api.py"]