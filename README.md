# Gopher Social

## Requirements

- Go 1.24.2
- PostgreSQL
- direnv (for environment variables management)
- Air (for hot reload during development)
- migrate (for database migrations)

## Environment Setup

1. Clone the repository:
```bash
git clone https://github.com/bnkcodes/gopher-social.git
cd gopher-social
```

2. Install and configure direnv:
   - Follow the official direnv installation guide at [direnv.net](https://direnv.net)
   - Make sure to hook direnv into your shell as described in their documentation
   - After installation, allow direnv in this project:
   ```bash
   direnv allow .
   ```

3. Install Air for hot reload:
```bash
go install github.com/air-verse/air@latest
```

## Environment Variables

The project uses the following environment variables (configured in `.envrc`):

- `ADDR`: Address and port where the application will run (default: ":8080")
- `DB_ADDR`: Database connection string (default: "postgres://admin:adminpassword@localhost/gopher_social?sslmode=disable")

## Database Setup

1. Start the database:
```bash
docker compose up -d
```

2. Run migrations:
```bash
make migrate-up
```

## Database Migrations

The project uses [golang-migrate](https://github.com/golang-migrate/migrate) for database migrations. Available commands:

- Create a new migration:
```bash
make migration <name>
```

- Apply migrations:
```bash
make migrate-up
```

- Revert migrations:
```bash
make migrate-down
```

## Development

1. Make sure all dependencies are installed:
```bash
go mod download
```

2. Run the project with hot reload:
```bash
air
```

The application will be available at `http://localhost:8080` and will automatically reload when you make changes to the code.

## Testing

To verify if the API is running correctly, you can test the health check endpoint:

```bash
curl http://localhost:8080/v1/health
```

> **Note:** Make sure to use the port configured in your `.envrc` file. The example above uses port 8080, but you should adjust it according to your configuration.

## Adding Environment Variables

To add new environment variables:

1. Edit the `.envrc` file
2. Run `direnv allow .` to apply the changes 