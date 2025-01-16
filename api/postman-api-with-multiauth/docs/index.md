# Postman API with Multi-Authentication

## Overview

Welcome to the **Postman API with Multi-Authentication** documentation. This API demonstrates various authentication methods to access different endpoints. You can test the API with multiple authentication mechanisms including Basic Auth, Bearer Token (JWT), API Key (in header and query), OAuth2, and OpenID Connect.

The API provides various data, both public and private, and allows access based on different levels of authentication. Explore the different authentication types and their corresponding endpoints below.

## Authentication Methods

This API supports the following authentication methods:

- **Basic Authentication**: Use HTTP Basic Auth to authenticate.
- **Bearer Token (JWT)**: Use a Bearer Token for authentication (usually JWT).
- **API Key in Header**: Pass the API Key in the HTTP header for authentication.
- **API Key in Query**: Pass the API Key as a query parameter in the URL.
- **OAuth2 (Authorization Code Flow)**: Use OAuth2 authentication with an authorization code flow.
- **OpenID Connect**: Use OpenID Connect for authentication.

### Supported Security Schemes

The API supports the following security schemes:

- **basicAuth**: Basic Authentication (username and password).
- **bearerAuth**: Bearer Token (JWT) Authentication.
- **ApiKeyAuthHeader**: API Key in HTTP Header.
- **ApiKeyAuthQuery**: API Key in URL query parameters.
- **OAuth2Auth**: OAuth2 Authentication (Authorization Code Flow).
- **OpenIDConnectAuth**: OpenID Connect Authentication.

## Endpoints

The API exposes the following endpoints with various authentication requirements:

### Public Endpoints (No Authentication Required)

- **`GET /public-data`**: Retrieve public data (No authentication required).

### Private Endpoints (Authentication Required)

- **`GET /private-data`**: Retrieve private data (Requires Bearer Token Authentication).

### Admin Endpoints (OAuth2 Required)

- **`GET /admin-data`**: Retrieve admin data (Requires OAuth2 Authentication with 'read' scope).

### API Key Authentication (Required)

- **`GET /query-api-key`**: Retrieve data with an API Key in the query string.
- **`GET /header-api-key`**: Retrieve data with an API Key in the HTTP header.

### Weather Data Endpoint

- **`GET /WeatherForecast`**: Get weather forecast data.

### Cat Facts Endpoint

- **`GET /fact`**: Retrieve a random cat fact (Requires Bearer Authentication).

## Security

The API utilizes several security schemes to control access:

- **Basic Authentication**: Used for endpoints that require simple authentication.
- **Bearer Token (JWT)**: Used for more secure endpoints.
- **API Key (Header or Query)**: Used for API key-based access.
- **OAuth2**: Used for endpoints that require OAuth2 access tokens.
- **OpenID Connect**: Used for OpenID Connect authentication.

## Example Requests

### Example 1: Retrieve Public Data

No authentication is required for this request.

```bash
curl -X GET https://api.example.com/v1/public-data
