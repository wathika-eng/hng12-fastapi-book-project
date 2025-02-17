# FastAPI Book Management API

## Overview

This project is a RESTful API built with FastAPI for managing a book collection. It provides comprehensive CRUD (Create, Read, Update, Delete) operations for books with proper error handling, input validation, and documentation.

## Features

- 📚 Book management (CRUD operations)
- ✅ Input validation using Pydantic models
- 🔍 Enum-based genre classification
- 🧪 Complete test coverage
- 📝 API documentation (auto-generated by FastAPI)
- 🔒 CORS middleware enabled

## Project Structure

```bash
├── api
│   ├── db
│   │   ├── __init__.py
│   │
│   │   └── schemas.py
│   ├── __init__.py
│
│   ├── router.py
│   └── routes
│       ├── books.py
│       ├── __init__.py
│  
├── core
│   ├── config.py
│   ├── __init__.py
│
├── docker-compose.yml
├── Dockerfile
├── LICENSE
├── main.py
├── nginx
│   ├── Dockerfile
│   └── nginx.co
├── README.md
├── render.yml
├── requirements.txt
└── tests
    ├── __init__.py
    └── test_books.py
```

## Technologies Used

- Python 3.12
- FastAPI
- Pydantic
- pytest
- uvicorn
- Docker
- Nginx

## Installation

1. Clone the repository:

```bash
git clone https://github.com/wathika-eng/hng12-fastapi-book-project && cd fastapi-book-project
```

2. Create a virtual environment:

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:

```bash
pip install -r requirements.txt
```

4. Optionally, using Docker:

```bash
docker-compose up --build
```

## Running the Application

1. Start the server:

```bash
uvicorn main:app
```

2. Access the API documentation:

- Swagger UI: http://localhost:8000/docs
- ReDoc: http://localhost:8000/redoc

## API Endpoints

Testing the API using Postman or any other API client.

```bash
curl -X GET http://127.0.0.1/api/v1/books/ #returns all books
curl -X GET http://127.0.0.1/api/v1/books/1 #returns a specific book
curl -X GET http://127.0.0.1/api/v1/books/4453 #returns an error since it's not found
```

Sample responses:
If using Docker, API will be served via Nginx

```bash
curl -I http://127.0.0.1/api/v1/books/
```

```bash
HTTP/1.1 200 OK
Server: nginx/1.27.4
Date: Tue, 11 Feb 2025 10:15:18 GMT
Content-Type: application/json
Content-Length: 338
Connection: keep-alive
```

```json
{
  "id": 1,
  "title": "The Hobbit",
  "author": "J.R.R. Tolkien",
  "publication_year": 1937,
  "genre": "Science Fiction"
}
```

```json
{ "detail": "Book not found" }
```

### Books

- `GET /api/v1/books/` - Get all books
- `GET /api/v1/books/{book_id}` - Get a specific book
- `POST /api/v1/books/` - Create a new book
- `PUT /api/v1/books/{book_id}` - Update a book
- `DELETE /api/v1/books/{book_id}` - Delete a book

### Health Check

- `GET /healthcheck` - Check API status

## Book Schema

```json
{
  "id": 1,
  "title": "Book Title",
  "author": "Author Name",
  "publication_year": 2024,
  "genre": "Fantasy"
}
```

Available genres:

- Science Fiction
- Fantasy
- Horror
- Mystery
- Romance
- Thriller

## Running Tests

```bash
pytest
```

## Error Handling

The API includes proper error handling for:

- Non-existent books
- Invalid book IDs
- Invalid genre types
- Malformed requests

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, please open an issue in the GitHub repository.
