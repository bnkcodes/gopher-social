# Gopher Social

## Requirements

- Go 1.24.2
- direnv (for environment variables management)
- Air (for hot reload during development)

## Setup

1. Clone the repository:
```bash
git clone https://github.com/bnkcodes/gopher-social.git
cd gopher-social
```

2. Install Air for hot reload:
```bash
go install github.com/air-verse/air@latest
```

3. Install and configure direnv:
   - Follow the official direnv installation guide at [direnv.net](https://direnv.net)
   - Make sure to hook direnv into your shell as described in their documentation
   - After installation, allow direnv in this project:
   ```bash
   direnv allow .
   ```

## Environment Variables

The project uses the following environment variables (configured in `.envrc`):

- `ADDR`: Address and port where the application will run (default: ":8080")

## Running the Project

1. Make sure all dependencies are installed:
```bash
go mod download
```

2. Run the project with hot reload:
```bash
air
```

The application will be available at `http://localhost:8080` and will automatically reload when you make changes to the code.

## Testing the API

To verify if the API is running correctly, you can test the health check endpoint:

```bash
curl http://localhost:8080/v1/health
```

> **Note:** Make sure to use the port configured in your `.envrc` file. The example above uses port 8080, but you should adjust it according to your configuration.

## Development

To add new environment variables:

1. Edit the `.envrc` file
2. Run `direnv allow .` to apply the changes 