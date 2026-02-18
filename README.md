# PayConductor SDK

Multi-language SDKs for the PayConductor API. Generate client libraries in multiple programming languages to integrate with PayConductor payment services.

## About

PayConductor is a payment orchestration platform that provides APIs for:

- **Card Tokenization** - Generate and manage credit card tokens
- **Customers** - Create and manage customer data
- **Orders** - Create and manage payment orders
- **Withdrawals & Transfers** - Process withdrawals and transfers

This repository contains generated SDKs in multiple programming languages to simplify integration with the PayConductor API.

## Features

- Multi-language support (C, C#, Clojure, Dart, Elixir, Go, Java, JavaScript, Kotlin, Lua, Perl, PHP, Python, R, Ruby, Rust, TypeScript)
- Auto-generated from OpenAPI specification
- Versioned SDKs (currently v1)
- Interactive CLI for SDK generation

## Project Structure

```
pay.conductor-sdk/
├── src/
│   └── v1/                    # API Version
│       ├── openapi.json       # OpenAPI specification (JSON)
│       ├── openapi.yaml       # OpenAPI specification (YAML)
│       ├── c/                 # C SDK
│       ├── clojure/           # Clojure SDK
│       ├── csharp/            # C# SDK
│       ├── dart/              # Dart SDK
│       ├── elixir/            # Elixir SDK
│       ├── go/                # Go SDK
│       ├── java/              # Java SDK
│       ├── javascript/        # JavaScript SDK
│       ├── kotlin/            # Kotlin SDK
│       ├── lua/               # Lua SDK
│       ├── perl/              # Perl SDK
│       ├── php/               # PHP SDK
│       ├── python/            # Python SDK
│       ├── r/                 # R SDK
│       ├── ruby/              # Ruby SDK
│       ├── rust/              # Rust SDK
│       └── typescript/        # TypeScript SDK
├── scripts/
│   └── sdk.ts                 # CLI for SDK generation
├── package.json               # Node.js dependencies
├── tsconfig.json              # TypeScript configuration
└── README.md                  # This file
```

## Requirements

- [Bun](https://bun.sh/) - JavaScript runtime and package manager
- [Java](https://www.java.com/) - Required for OpenAPI Generator

## Installation

```bash
# Install dependencies
bun install
```

## Usage

### Download OpenAPI Specification

```bash
# Interactive: select version
bun run sdk

# Or explicitly
bun run sdk download
```

### Generate SDKs

```bash
# Interactive: select version and languages (use space to multi-select)
bun run sdk generate

# Generate all SDKs for v1
# (select "all" in the language prompt)
```

### Available Languages

| Language | Directory |
|----------|-----------|
| C | `src/v1/c` |
| C# | `src/v1/csharp` |
| Clojure | `src/v1/clojure` |
| Dart | `src/v1/dart` |
| Elixir | `src/v1/elixir` |
| Go | `src/v1/go` |
| Java | `src/v1/java` |
| JavaScript | `src/v1/javascript` |
| Kotlin | `src/v1/kotlin` |
| Lua | `src/v1/lua` |
| Perl | `src/v1/perl` |
| PHP | `src/v1/php` |
| Python | `src/v1/python` |
| R | `src/v1/r` |
| Ruby | `src/v1/ruby` |
| Rust | `src/v1/rust` |
| TypeScript | `src/v1/typescript` |

## Adding a New Language

To add support for a new language:

1. Edit `scripts/sdk.ts`
2. Add the language to the `VERSIONS.v1.languages` object:

```typescript
const VERSIONS: Record<string, { apiUrl: string; languages: Record<string, { generator: string; outputDir: string }> }> = {
  v1: {
    apiUrl: "https://app.payconductor.ai/api/v1/docs/json",
    languages: {
      // Add new language here
      newlang: { 
        generator: "newlang",  // OpenAPI Generator name
        outputDir: "src/v1/newlang" 
      },
    },
  },
};
```

3. Run `bun run sdk generate` to generate the new SDK

## Adding a New Version

To add a new API version:

1. Edit `scripts/sdk.ts`
2. Add the new version to the `VERSIONS` object:

```typescript
const VERSIONS: Record<string, { apiUrl: string; languages: Record<string, {...}> }> = {
  v1: { ... },
  v2: {
    apiUrl: "https://app.payconductor.ai/api/v2/docs/json",
    languages: { ... },
  },
};
```

## Authentication

The PayConductor API uses HTTP Basic Authentication. You'll need:

1. **Client ID** - Your application's client identifier
2. **Client Secret** - Your application's secret key

### Example: Encoding Credentials

```javascript
const clientId = 'your_client_id';
const clientSecret = 'your_client_secret';

const credentials = Buffer.from(`${clientId}:${clientSecret}`).toString('base64');
// Result: "eW91cl9jbGllbnRfaWQ6eW91cl9jbGllbnRfc2VjcmV0"
```

Then use in requests:

```javascript
fetch('https://app.payconductor.ai/api/v1/orders/', {
  headers: {
    'Authorization': `Basic ${credentials}`,
    'Content-Type': 'application/json'
  }
});
```

## API Reference

### Card Tokenization

- `POST /cards/tokenization` - Generate a credit card token

### Customers

- `POST /customers/` - Create a new customer
- `GET /customers/` - List customers (supports: page, pageSize, period, email, name, startDate, endDate)
- `GET /customers/{id}` - Get customer by ID
- `PATCH /customers/{id}` - Update customer
- `DELETE /customers/{id}` - Delete customer

### Orders

- `POST /orders/` - Create a new payment order
- `GET /orders/` - List orders (supports: period, page, pageSize, endDate, startDate, id, status)
- `GET /orders/{id}` - Get order by ID
- `POST /orders/{id}/refund` - Refund an order

### Withdrawals & Transfers

- `POST /withdraws/` - Create a withdrawal/transfer
- `GET /withdraws/` - List withdrawals (supports: period, page, pageSize, endDate, startDate, id)
- `GET /withdraws/{id}` - Get withdrawal by ID

## Code Examples

### TypeScript

```typescript
import { Configuration, OrdersApi, CustomersApi, CardTokenizationApi, WithdrawalsAndTransfersApi } from './src/v1/typescript';

const config = new Configuration({
  username: 'your_client_id',
  password: 'your_client_secret',
});

const ordersApi = new OrdersApi(config);
const customersApi = new CustomersApi(config);
const cardTokenizationApi = new CardTokenizationApi(config);
const withdrawalsApi = new WithdrawalsAndTransfersApi(config);

// Create an order
const order = await ordersApi.postOrders({
  amount: 100.00,
  currency: 'BRL',
  payment: {
    paymentMethod: 'credit_card',
    // ... other payment details
  },
  items: [
    {
      name: 'Product 1',
      quantity: 1,
      price: 100.00,
    },
  ],
});

// Get all orders
const orders = await ordersApi.getOrders('seven_days', 1, 10);

// Tokenize a credit card
const tokenizedCard = await cardTokenizationApi.postCardTokenization({
  customer: {
    document: '12345678900',
    documentType: 'cpf',
    email: 'customer@example.com',
    name: 'John Doe',
  },
  card: {
    number: '4111111111111111',
    holderName: 'John Doe',
    cvv: '123',
    expiration: {
      month: 12,
      year: 2025,
    },
  },
});

// Create a withdrawal
const withdrawal = await withdrawalsApi.postWithdraws({
  amount: 50.00,
  currency: 'BRL',
  payoutAccount: {
    // ... payout account details
  },
});
```

### C#

```csharp
using Microsoft.Extensions.DependencyInjection;
using payconductor_sdk.Api;
using payconductor_sdk.Client;
using payconductor_sdk.Model;

var services = new ServiceCollection();

services.AddPayconductorApi((sp, options) =>
{
    options.Username = "your_client_id";
    options.Password = "your_client_secret";
});

var serviceProvider = services.BuildServiceProvider();

// Orders API
var ordersApi = serviceProvider.GetRequiredService<IOrdersApi>();
var orderResponse = await ordersApi.PostOrdersAsync(new PostOrdersRequest
{
    Amount = 100.00m,
    Currency = "BRL",
    Payment = new CreditCard
    {
        PaymentMethod = "credit_card",
        Card = new CreditCardCard
        {
            Number = "4111111111111111",
            HolderName = "John Doe",
            Cvv = "123",
            Expiration = new CompleteCardDataExpiration
            {
                Month = 12,
                Year = 2025
            }
        },
        Installments = new CreditCardInstallments
        {
            Value = 1
        }
    },
    Items = new List<PostOrdersRequestItemsInner>
    {
        new PostOrdersRequestItemsInner
        {
            Name = "Product 1",
            Quantity = 1,
            Price = 100.00m
        }
    }
});

// Customers API
var customersApi = serviceProvider.GetRequiredService<ICustomersApi>();
var customersResponse = await customersApi.GetCustomersAsync(page: 1, pageSize: 10, period: GetCustomersPeriodEnum.SevenDays);

// Card Tokenization API
var cardApi = serviceProvider.GetRequiredService<ICardTokenizationApi>();
var cardResponse = await cardApi.PostCardTokenizationAsync(new PostCardTokenizationRequest
{
    Customer = new PostCardTokenizationRequestCustomer
    {
        Document = "12345678900",
        DocumentType = PostCardTokenizationRequestCustomerDocumentTypeEnum.Cpf,
        Email = "customer@example.com",
        Name = "John Doe"
    },
    Card = new CompleteCardData
    {
        Number = "4111111111111111",
        HolderName = "John Doe",
        Cvv = "123",
        Expiration = new CompleteCardDataExpiration
        {
            Month = 12,
            Year = 2025
        }
    }
});

// Withdrawals API
var withdrawalsApi = serviceProvider.GetRequiredService<IWithdrawalsAndTransfersApi>();
var withdrawalResponse = await withdrawalsApi.PostWithdrawsAsync(new PostWithdrawsRequest
{
    Amount = 50.00m,
    Currency = "BRL",
    PayoutAccount = new PostWithdrawsRequestPayoutAccount
    {
        // ... payout account details
    }
});
```

## License

Private - All rights reserved

## Support

For API support, contact PayConductor directly through their official channels.
