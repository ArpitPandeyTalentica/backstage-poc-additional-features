# Cat Facts API Documentation

Welcome to the **Cat Facts API** documentation. This API provides information about cat facts, with two versions available for different functionalities.

## Overview

The Cat Facts API supports the following endpoints:

- **Version 1 (v1):** Fetches a single random cat fact.
- **Version 2 (v2):** Fetches a list of cat facts.

Base URL: [https://catfact.ninja](https://catfact.ninja)

---

## Endpoints

### Version 1: Fetch a Single Cat Fact

**Endpoint:**
```
GET /fact
```

**Description:**
Fetches a single random cat fact.

**Response:**
- **200 OK**: A JSON object containing a single cat fact.

**Example Response:**
```json
{
  "fact": "Cats sleep 16-20 hours a day.",
  "length": 36
}
```

---

### Version 2: Fetch a List of Cat Facts

**Endpoint:**
```
GET /facts
```

**Description:**
Fetches a list of cat facts.

**Response:**
- **200 OK**: A JSON array containing multiple cat facts.

**Example Response:**
```json
[
  {
    "fact": "Cats sleep 16-20 hours a day.",
    "length": 36
  },
  {
    "fact": "A group of cats is called a clowder.",
    "length": 37
  }
]
```

---

## API Details

### Base URLs
- **v1 Base URL:** [https://catfact.ninja](https://catfact.ninja)
- **v2 Base URL:** [https://catfact.ninja](https://catfact.ninja)

### Authentication
This API does not require authentication.

---

## Contact

For support or questions, reach out to **Team A**.

- **Lifecycle:** Production
- **Owner:** Team A
