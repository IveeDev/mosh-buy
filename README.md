# Storefront Backend API

This is a backend project for an e-commerce application. The API provides functionality to manage products, collections, and orders, allowing clients to interact with the store via RESTful endpoints. Additionally, the project includes tests to ensure the reliability of the various endpoints.

## Features

- View available products
- Manage product collections
- Place and manage orders
- Authentication and authorization
- Comprehensive testing of endpoints

## Technologies

- Backend Framework: Pytho Django
- Database: MySQL
- Testing: pytest
- Authentication: JWT
- Tools: Git, Postman

## Installation

### Prerequsite

- Make sure you have the following installed:
  - Python or Node.js
  - PostgreSQL/MySQL for database
  - pip for Python or npm for Node.js projects
  - Git for version control

### Steps to Install

1. #### Clone the repository:

```bash
git clone https://github.com//IveeDev/mosh-buy
cd mosh-buy
```

2. #### Install dependencies:

```bash
pip install -r requirements.txt
```

3. #### Set up environment variables:

- Create a .env file in the project root and add your environment variables:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': '',
        'HOST': 'localhost',
        'USER': '',
        'PASSWORD': ''
    }
}
```
