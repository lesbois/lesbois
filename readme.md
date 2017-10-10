### Les Bois Engineering and Innovations ###
----------
Installation instruction
----------

1. Download and install python(Make sure it works in your terminal or command line)
2. On your terminal type python

    get-pip.py
3. pip install -r requirements/base.txt
4.  pip install -r requirements/local.txt
5. create a .env file and follow the config in env.example
6. Install postgres and get your credentials
7. add the credentials in DATABASE_URL of your .env file
8. To start the server hit python manage.py runserver
9. To start the hot reloading go to the client folder in your terminal and type yarn install to install the modules
10. type yarn hot
