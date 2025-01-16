# Public Weather Forecast API Documentation

## Overview

The **Public Weather Forecast API** provides weather forecast data for a given location and date without requiring authentication. This API is designed for public use and is ideal for integrating weather forecast information into applications, websites, or services that do not require authentication.

- **API Version**: 1.0
- **Base URL**: `http://localhost:7008/api/weather`
- **Authentication**: None required
- **Rate Limiting**: No rate limits imposed (public API)

## API Specification

The API follows the OpenAPI 3.0.1 specification. It provides a simple endpoint to fetch weather forecast data for a given date. The response includes details such as temperature, date, and a summary of weather conditions.

## API Endpoints

### 1. `GET /PublicWeatherForecast`

Retrieve weather forecast data for a specific day.

- **Description**: This endpoint provides a forecast for a given date. The response contains an array of weather data for each forecasted date.
- **Authentication**: Not required
- **Rate Limiting**: None
- **Request Format**: `GET /PublicWeatherForecast`
- **Response Format**: JSON array of forecast data

#### Request

The request for this endpoint doesn't require any parameters.

**Example Request**:

```http
GET http://localhost:7008/api/weather/PublicWeatherForecast
