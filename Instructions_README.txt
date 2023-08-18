Project Documentation: Running AllAuth Login System

Important: Replace 'your_path' with the actual path where the project files are located. It is recommended to store them in 'C:/documents'. 

management:
https://localhost:8000/admin 
username:admin 
password:user1234


This documentation guides you through the process of setting up and running the AllAuth Login System project in a development environment.

Step 1: Navigate to Project Directory

Open a terminal.

Change the working directory to the root folder of your project using the command:


cd "your_path/System_login_project-master"
Step 2: Activate Virtual Environment

Navigate to the virtual environment's "Scripts" directory:


cd venv/Scripts
Activate the virtual environment:

On Windows: Run activate
On macOS and Linux: Run source activate
Step 3: Start Development Server

Navigate to the "login_system" subdirectory of your project:
cd "your_path/System_login_project-master/login_system


Start the development server using the following command:

python manage.py runserver_plus --cert-file "your_path\System_login_project-master\login_system\cert.crt"  
command launches the server with HTTPS enabled and using the specified SSL certificate.

Step 4: Access the Site

Open your web browser.

In the address bar, type:
https://localhost:8000/
If your browser displays a warning about an insecure connection due to the self-signed certificate, follow these steps to access the site:

Chrome: Click on "Advanced" > "Proceed to localhost (unsafe)".
Firefox: Click on "Accept the Risk and Continue".
Edge: Click on "Details" > "Go on to the webpage (not recommended)".
Step 5: Navigate the Site

Once you've accessed the site, you can explore its functionalities.

If you're prompted to log in, you can use the authentication options available, such as Facebook or GitHub, depending on the configuration.

Conclusion

Congratulations! You've successfully set up and run the AllAuth Login System project in a development environment. Remember that this setup is not suitable for production deployment due to the self-signed certificate and the use of the development server.

For more advanced deployment options and production-ready setups, consider consulting the official Django and web server documentation.

