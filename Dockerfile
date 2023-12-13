# Use an official Python runtime as a parent image
FROM python:3.8

# ### We make sure that we have authorizations to write on /tmp
# RUN chmod 777 -R /tmp && chmod o+t -R /tmp

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY src/app.py /app

# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Run app.py when the container launches
CMD ["python3", "app/app.py"]















