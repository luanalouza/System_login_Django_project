# Project Documentation: Running AllAuth Login System

Note: Replace 'your_path' with the actual path where the project files are located. It is recommended to store them in 'C:/documents'.

This documentation guides you through the process of setting up and running the AllAuth Login System project in a development environment.

# Navigate to Project Directory

Open a terminal: ctrl + j

# Create and Activate the environment:

Create

python -m venv venv   

# On Linux/Mac

source venv/bin/activate 

# On Windows

venv\Scripts\activate      

cd your_path/system_login_project

# Install Dependencies

pip install -r requirements.txt


# Navigate to the "djangoapp" subdirectory of your project:

cd "./djangoapp"

# Migrate the database:

python manage.py migrate

#Start the development server using the following command:

python manage.py runserver_plus --cert-file ".\certificates\cert.crt"

This command launches the server with HTTPS enabled and using the specified SSL certificate.

# Access the Site

Open your web browser.

In the address bar, type: https://localhost:8000/

If your browser displays a warning about an insecure connection due to the self-signed certificate, follow these steps to access the site:

Chrome: Click on "Advanced" > "Proceed to localhost (unsafe)".

Firefox: Click on "Accept the Risk and Continue".

Edge: Click on "Details" > "Go on to the webpage (not recommended)".

# Navigate the Site

Once you've accessed the site, you can explore its functionalities. If you're prompted to log in, you can use the authentication options available, such as Facebook or GitHub, depending on the configuration.




# Login Page:

![Captura de tela 2023-10-18 143845](https://github.com/luanalouza/System_login_Django-project/assets/95712511/eddd6c44-896d-4671-8808-a79740d52f43)



# Sign up page:


![Captura de tela 2023-10-18 143929](https://github.com/luanalouza/System_login_Django-project/assets/95712511/05468d71-be73-4fec-bf98-c01155e080e6)



# Social  media authentication:


![Captura de tela 2023-10-18 143956](https://github.com/luanalouza/System_login_Django-project/assets/95712511/cd05d8a9-48a4-47eb-a468-c713833ab5d8)




# Authentication confirmation page:


![Captura de tela 2023-10-18 144124](https://github.com/luanalouza/System_login_Django-project/assets/95712511/5f69f79c-c7be-4e7a-95bc-d26d9b0e740a)


