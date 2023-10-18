Project Documentation: Running AllAuth Login System

Note: Replace 'your_path' with the actual path where the project files are located. It is recommended to store them in 'C:/documents'.

This documentation guides you through the process of setting up and running the AllAuth Login System project in a development environment.

Step 1: Navigate to Project Directory

Open a terminal: ctrl + j

Activate the environment with the command line:

venv/scripts/activate

Change the working directory to the root folder of your project using the command:

cd your_path/system_login_project

Step 2: Migrate Database

Navigate to the "djangoapp" subdirectory of your project:

cd "./djangoapp"

Migrate the database:

python manage.py migrate

Start the development server using the following command:

python manage.py runserver_plus --cert-file ".\certificates\cert.crt"

This command launches the server with HTTPS enabled and using the specified SSL certificate.

Step 3: Access the Site

Open your web browser.

In the address bar, type: https://localhost:8000/

If your browser displays a warning about an insecure connection due to the self-signed certificate, follow these steps to access the site:

Chrome: Click on "Advanced" > "Proceed to localhost (unsafe)".

Firefox: Click on "Accept the Risk and Continue".

Edge: Click on "Details" > "Go on to the webpage (not recommended)".

Step 4: Navigate the Site

Once you've accessed the site, you can explore its functionalities. If you're prompted to log in, you can use the authentication options available, such as Facebook or GitHub, depending on the configuration.
Login Page:

![Captura de tela 2023-10-18 144124](https://github.com/luanalouza/System_login_Django-project/assets/95712511/bc637b1c-6a97-4f43-92e6-97afcc30d83e)

Sign up page:

![Captura de tela 2023-10-18 143956](https://github.com/luanalouza/System_login_Django-project/assets/95712511/b1a2771b-4d86-4c90-8da7-78f32d392639)

Social  media authentication:

![Captura de tela 2023-10-18 143929](https://github.com/luanalouza/System_login_Django-project/assets/95712511/3cacf051-54e5-4435-be82-e7943c2fb402)

Authentication confirmation page:

![Captura de tela 2023-10-18 143845](https://github.com/luanalouza/System_login_Django-project/assets/95712511/7e2fc993-b00c-48ab-a0ee-913cb36cf684)
