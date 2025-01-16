# Weather Forecast API with Authentication

## Overview

The **Weather Forecast API with Authentication** provides weather forecast data for a given location and date. This API requires an API key for authentication and is intended to be used in applications that need weather data with secure access control.

- **API Version**: 1.0
- **Base URL**: `http://localhost:7008/api/weather`
- **Authentication**: API Key (via the `Authorization` header)
- **Rate Limiting**: No rate limits imposed (subject to backend configuration)

## API Specification

The API follows the OpenAPI 3.0.1 specification. It provides a single endpoint to fetch weather forecast data. The response includes details such as temperature, date, and a summary of weather conditions. Authentication is required for access to this API via an API key passed in the `Authorization` header.

## Authentication

To interact with this API, you must include a valid API key in the `Authorization` header. The key is expected to be passed as a Bearer token.

### Request Header

```http
Authorization: Bearer <API_KEY>
Example API Key: Bearer abcdefghijklmnopqrstuvwxyz123456
Where to get the API Key: API keys can be obtained from the [API Portal] (or contact your administrator if the portal isn't available).
