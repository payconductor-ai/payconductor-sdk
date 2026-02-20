# PayConductor SDK

Multi-language SDKs for the PayConductor API. Generate client libraries in multiple programming languages to integrate with PayConductor payment services.

![NPM Version](https://img.shields.io/npm/v/payconductor-sdk)

## About

PayConductor is a payment orchestration platform that provides APIs for:

- **Card Tokenization** - Generate and manage credit card tokens
- **Customers** - Create and manage customer data
- **Orders** - Create and manage payment orders (PIX, Credit Card, Bank Slip, NuPay, PicPay)
- **Withdrawals & Transfers** - Process withdrawals and transfers via PIX

This repository contains generated SDKs in multiple programming languages to simplify integration with the PayConductor API.

## Features

- Multi-language support (C, C#, Clojure, Dart, Elixir, Go, Java, JavaScript, Kotlin, Lua, Perl, PHP, Python, R, Ruby, Rust, TypeScript)
- Auto-generated from OpenAPI specification
- Versioned SDKs (currently v1)
- Interactive CLI for SDK generation

## Project Structure

```
pay.conductor-sdk/
├── library/
│   └── v1/
│       ├── packages/           # Generated SDK packages
│       │   ├── typescript/     # TypeScript SDK
│       │   ├── csharp/         # C# SDK
│       │   ├── java/           # Java SDK
│       │   ├── go/             # Go SDK
│       │   └── ...
│       └── examples/           # Usage examples
│           └── typescript/     # TypeScript examples
├── scripts/
│   └── sdk.ts                  # CLI for SDK generation
├── package.json
└── README.md
```

## Examples

Check the [library/v1/examples/typescript](./library/v1/examples/typescript) folder for complete usage examples.

```bash
cd library/v1/examples/typescript
bun install
bun run index.ts 1   # Run PIX order example
bun run index.ts all # Run all examples
```

## Requirements

- [Bun](https://bun.sh/) - JavaScript runtime and package manager
- [Java](https://www.java.com/) - Required for OpenAPI Generator

## Installation

```bash
bun install
```

## Usage

### Download OpenAPI Specification

```bash
bun run sdk download
```

### Generate SDKs

```bash
bun run sdk generate
```

## Authentication

The PayConductor API uses HTTP Basic Authentication. You'll need:

1. **Client ID** - Your application's client identifier
2. **Client Secret** - Your application's secret key

```javascript
const clientId = 'your_client_id';
const clientSecret = 'your_client_secret';
const credentials = Buffer.from(`${clientId}:${clientSecret}`).toString('base64');
```

## Code Examples

### TypeScript

```typescript
import {
  Configuration,
  OrderApi,
  CustomerApi,
  CardTokenizationApi,
  WithdrawApi,
  DocumentType,
  PaymentMethod,
  PixType,
  type OrderCreateRequest,
  type CustomerCreateRequest,
  type WithdrawCreateRequest,
  type CardTokenizationCreateRequest,
} from 'payconductor-sdk';

const config = new Configuration({
  username: 'your_client_id',
  password: 'your_client_secret',
});

const orderApi = new OrderApi(config);
const customerApi = new CustomerApi(config);
const cardTokenizationApi = new CardTokenizationApi(config);
const withdrawApi = new WithdrawApi(config);

// Create PIX Order
async function createPixOrder() {
  const customer: CustomerCreateRequest = {
    documentNumber: '12345678900',
    documentType: DocumentType.Cpf,
    email: 'cliente@exemplo.com',
    name: 'Joao da Silva',
    phoneNumber: '+55 11 999999999',
  };

  const request: OrderCreateRequest = {
    chargeAmount: 100.00,
    clientIp: '192.168.1.1',
    customer,
    discountAmount: 0,
    externalId: `order-${Date.now()}`,
    payment: {
      paymentMethod: PaymentMethod.Pix,
      expirationInSeconds: 3600,
    },
    shippingFee: 0,
    taxFee: 0,
    items: [
      {
        id: 'item-1',
        isPhysical: false,
        name: 'Produto Exemplo',
        qty: 1,
        unitPrice: 100.00,
      },
    ],
  };

  const response = await orderApi.orderCreate(request);
  console.log('PIX Copy Paste:', response.data.pix?.copyAndPasteCode);
  console.log('QR Code URL:', response.data.pix?.qrCodeUrl);
}

// Create Credit Card Order
async function createCreditCardOrder() {
  const customer: CustomerCreateRequest = {
    documentNumber: '12345678900',
    documentType: DocumentType.Cpf,
    email: 'cliente@exemplo.com',
    name: 'Joao da Silva',
  };

  const request: OrderCreateRequest = {
    chargeAmount: 150.00,
    clientIp: '192.168.1.1',
    customer,
    discountAmount: 0,
    externalId: `cc-order-${Date.now()}`,
    payment: {
      paymentMethod: PaymentMethod.CreditCard,
      card: {
        number: '4111111111111111',
        holderName: 'JOAO DA SILVA',
        cvv: '123',
        expiration: { month: 12, year: 2028 },
      },
      installments: 1,
      softDescriptor: 'PAYCONDUCTOR',
    },
    shippingFee: 0,
    taxFee: 0,
    items: [
      {
        id: 'item-1',
        isPhysical: true,
        name: 'Produto',
        qty: 1,
        unitPrice: 150.00,
      },
    ],
  };

  const response = await orderApi.orderCreate(request);
  console.log('Order ID:', response.data.id);
  console.log('Status:', response.data.status);
}

// Create Bank Slip Order
async function createBankSlipOrder() {
  const customer: CustomerCreateRequest = {
    documentNumber: '12345678900',
    documentType: DocumentType.Cpf,
    email: 'cliente@exemplo.com',
    name: 'Joao da Silva',
    address: {
      street: 'Rua das Flores',
      number: '123',
      neighborhood: 'Centro',
      city: 'Sao Paulo',
      state: 'SP',
      zipCode: '01234567',
      country: 'BR',
    },
  };

  const request: OrderCreateRequest = {
    chargeAmount: 200.00,
    clientIp: '192.168.1.1',
    customer,
    discountAmount: 0,
    externalId: `boleto-order-${Date.now()}`,
    payment: {
      paymentMethod: PaymentMethod.BankSlip,
      expirationInDays: 7,
    },
    shippingFee: 0,
    taxFee: 0,
    items: [
      {
        id: 'item-1',
        isPhysical: true,
        name: 'Produto',
        qty: 1,
        unitPrice: 200.00,
      },
    ],
  };

  const response = await orderApi.orderCreate(request);
  console.log('Barcode:', response.data.bankSlip?.barCode);
  console.log('PDF URL:', response.data.bankSlip?.pdfUrl);
}

// Create Customer
async function createCustomer() {
  const response = await customerApi.customerCreate({
    documentNumber: '12345678900',
    documentType: DocumentType.Cpf,
    email: 'cliente@exemplo.com',
    name: 'Joao da Silva',
    phoneNumber: '+55 11 999999999',
    address: {
      street: 'Rua das Flores',
      number: '123',
      neighborhood: 'Centro',
      city: 'Sao Paulo',
      state: 'SP',
      zipCode: '01234567',
      country: 'BR',
    },
  });
  console.log('Customer created:', response.data);
}

// Tokenize Card
async function tokenizeCard() {
  const request: CardTokenizationCreateRequest = {
    card: {
      number: '4111111111111111',
      holderName: 'JOAO DA SILVA',
      cvv: '123',
      expiration: { month: 12, year: 2028 },
    },
    saveCard: true,
    customer: {
      documentNumber: '12345678900',
      documentType: DocumentType.Cpf,
      email: 'cliente@exemplo.com',
      name: 'Joao da Silva',
    },
  };

  const response = await cardTokenizationApi.cardTokenize(request);
  console.log('Token:', response.data.token);
  console.log('Customer ID:', response.data.customerId);
}

// Create Withdrawal (PIX)
async function createWithdrawal() {
  const request: WithdrawCreateRequest = {
    amount: 50.00,
    externalId: `withdraw-${Date.now()}`,
    payoutAccount: {
      ownerDocument: '12345678900',
      ownerName: 'Joao da Silva',
      pixKey: 'joao.silva@exemplo.com',
      pixType: PixType.Email,
    },
  };

  const response = await withdrawApi.withdrawCreate(request);
  console.log('Withdrawal ID:', response.data.id);
  console.log('Status:', response.data.status);
}

// List Orders
async function listOrders() {
  const response = await orderApi.orderList(1, 10);
  console.log('Orders:', response.data);
}

// Refund Order
async function refundOrder(orderId: string) {
  const response = await orderApi.orderRefund(orderId);
  console.log('Refund status:', response.data);
}
```

### Java

```java
import payconductor.sdk.ApiClient;
import payconductor.sdk.ApiException;
import payconductor.sdk.Configuration;
import payconductor.sdk.api.OrdersApi;
import payconductor.sdk.api.CustomersApi;
import payconductor.sdk.api.CardTokenizationApi;
import payconductor.sdk.api.TransfersApi;
import payconductor.sdk.model.*;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setUsername("your_client_id");
        defaultClient.setPassword("your_client_secret");

        OrdersApi ordersApi = new OrdersApi(defaultClient);
        CustomersApi customersApi = new CustomersApi(defaultClient);
        CardTokenizationApi cardApi = new CardTokenizationApi(defaultClient);
        TransfersApi transfersApi = new TransfersApi(defaultClient);

        try {
            // Create PIX Order
            PostOrdersRequest pixOrder = new PostOrdersRequest()
                .chargeAmount(100.0f)
                .clientIp("192.168.1.1")
                .customer(new Customer()
                    .documentNumber("12345678900")
                    .documentType(DocumentTypeEnum.CPF)
                    .email("cliente@exemplo.com")
                    .name("Joao da Silva"))
                .discountAmount(0f)
                .externalId("pix-order-123")
                .payment(new Pix()
                    .paymentMethod(PaymentMethodEnum.PIX)
                    .expirationInSeconds(3600))
                .shippingFee(0f)
                .taxFee(0f);
            
            PostOrders200Response pixResponse = ordersApi.postOrders(pixOrder);
            System.out.println("PIX Copy Paste: " + pixResponse.getPix().getCopyAndPasteCode());

            // Create Credit Card Order
            PostOrdersRequest ccOrder = new PostOrdersRequest()
                .chargeAmount(150.0f)
                .clientIp("192.168.1.1")
                .customer(new Customer()
                    .documentNumber("12345678900")
                    .documentType(DocumentTypeEnum.CPF)
                    .email("cliente@exemplo.com")
                    .name("Joao da Silva"))
                .discountAmount(0f)
                .externalId("cc-order-123")
                .payment(new CreditCard()
                    .paymentMethod(PaymentMethodEnum.CREDIT_CARD)
                    .card(new CreditCardCard()
                        .number("4111111111111111")
                        .holderName("JOAO DA SILVA")
                        .cvv("123")
                        .expiration(new CompleteCardDataExpiration()
                            .month(12)
                            .year(2028)))
                    .installments(1))
                .shippingFee(0f)
                .taxFee(0f);
            
            PostOrders200Response ccResponse = ordersApi.postOrders(ccOrder);
            System.out.println("Order ID: " + ccResponse.getId());

            // Tokenize Card
            PostCardTokenizationRequest tokenRequest = new PostCardTokenizationRequest()
                .card(new CompleteCardData()
                    .number("4111111111111111")
                    .holderName("JOAO DA SILVA")
                    .cvv("123")
                    .expiration(new CompleteCardDataExpiration()
                        .month(12)
                        .year(2028)))
                .saveCard(true)
                .customer(new PostCardTokenizationRequestCustomer()
                    .documentNumber("12345678900")
                    .documentType(DocumentTypeEnum.CPF)
                    .email("cliente@exemplo.com")
                    .name("Joao da Silva"));
            
            PostCardTokenization200Response tokenResponse = cardApi.postCardTokenization(tokenRequest);
            System.out.println("Token: " + tokenResponse.getToken());

            // Create Withdrawal
            PostWithdrawsRequest withdrawRequest = new PostWithdrawsRequest()
                .amount(50.0f)
                .externalId("withdraw-123")
                .payoutAccount(new PostWithdrawsRequestPayoutAccount()
                    .ownerDocument("12345678900")
                    .ownerName("Joao da Silva")
                    .pixKey("joao.silva@exemplo.com")
                    .pixType(PixTypeEnum.EMAIL));
            
            PostWithdraws200Response withdrawResponse = transfersApi.postWithdraws(withdrawRequest);
            System.out.println("Withdrawal ID: " + withdrawResponse.getId());

        } catch (ApiException e) {
            System.err.println("Exception: " + e.getMessage());
        }
    }
}
```

### C#

```csharp
using Microsoft.Extensions.DependencyInjection;
using Payconductor.Sdk.Api;
using Payconductor.Sdk.Client;
using Payconductor.Sdk.Model;

var services = new ServiceCollection();

services.AddPayconductorApi((sp, options) =>
{
    options.Username = "your_client_id";
    options.Password = "your_client_secret";
});

var serviceProvider = services.BuildServiceProvider();

// Get API instances
var ordersApi = serviceProvider.GetRequiredService<IOrdersApi>();
var customersApi = serviceProvider.GetRequiredService<ICustomersApi>();
var cardApi = serviceProvider.GetRequiredService<ICardTokenizationApi>();
var transfersApi = serviceProvider.GetRequiredService<ITransfersApi>();

// Create PIX Order
var pixOrder = new PostOrdersRequest
{
    ChargeAmount = 100.00f,
    ClientIp = "192.168.1.1",
    Customer = new Customer
    {
        DocumentNumber = "12345678900",
        DocumentType = DocumentTypeEnum.Cpf,
        Email = "cliente@exemplo.com",
        Name = "Joao da Silva"
    },
    DiscountAmount = 0f,
    ExternalId = $"pix-order-{DateTime.Now.Ticks}",
    Payment = new Pix
    {
        PaymentMethod = PaymentMethodEnum.Pix,
        ExpirationInSeconds = 3600
    },
    ShippingFee = 0f,
    TaxFee = 0f
};

var pixResponse = await ordersApi.PostOrdersAsync(pixOrder);
Console.WriteLine($"PIX Copy Paste: {pixResponse.Pix.CopyAndPasteCode}");
Console.WriteLine($"QR Code URL: {pixResponse.Pix.QrCodeUrl}");

// Create Credit Card Order
var ccOrder = new PostOrdersRequest
{
    ChargeAmount = 150.00f,
    ClientIp = "192.168.1.1",
    Customer = new Customer
    {
        DocumentNumber = "12345678900",
        DocumentType = DocumentTypeEnum.Cpf,
        Email = "cliente@exemplo.com",
        Name = "Joao da Silva"
    },
    DiscountAmount = 0f,
    ExternalId = $"cc-order-{DateTime.Now.Ticks}",
    Payment = new CreditCard
    {
        PaymentMethod = PaymentMethodEnum.CreditCard,
        Card = new CreditCardCard
        {
            Number = "4111111111111111",
            HolderName = "JOAO DA SILVA",
            Cvv = "123",
            Expiration = new CompleteCardDataExpiration
            {
                Month = 12,
                Year = 2028
            }
        },
        Installments = 1,
        SoftDescriptor = "PAYCONDUCTOR"
    },
    ShippingFee = 0f,
    TaxFee = 0f
};

var ccResponse = await ordersApi.PostOrdersAsync(ccOrder);
Console.WriteLine($"Order ID: {ccResponse.Id}");
Console.WriteLine($"Status: {ccResponse.Status}");

// Create Bank Slip Order
var bankSlipOrder = new PostOrdersRequest
{
    ChargeAmount = 200.00f,
    ClientIp = "192.168.1.1",
    Customer = new Customer
    {
        DocumentNumber = "12345678900",
        DocumentType = DocumentTypeEnum.Cpf,
        Email = "cliente@exemplo.com",
        Name = "Joao da Silva",
        Address = new CustomerAddress
        {
            Street = "Rua das Flores",
            Number = "123",
            Neighborhood = "Centro",
            City = "Sao Paulo",
            State = "SP",
            ZipCode = "01234567",
            Country = "BR"
        }
    },
    DiscountAmount = 0f,
    ExternalId = $"boleto-order-{DateTime.Now.Ticks}",
    Payment = new BankSlip
    {
        PaymentMethod = PaymentMethodEnum.BankSlip,
        ExpirationInDays = 7
    },
    ShippingFee = 0f,
    TaxFee = 0f
};

var bankSlipResponse = await ordersApi.PostOrdersAsync(bankSlipOrder);
Console.WriteLine($"Barcode: {bankSlipResponse.BankSlip.BarCode}");
Console.WriteLine($"PDF URL: {bankSlipResponse.BankSlip.PdfUrl}");

// Create Customer
var customerRequest = new Customer
{
    DocumentNumber = "12345678900",
    DocumentType = DocumentTypeEnum.Cpf,
    Email = "cliente@exemplo.com",
    Name = "Joao da Silva",
    PhoneNumber = "+55 11 999999999",
    Address = new CustomerAddress
    {
        Street = "Rua das Flores",
        Number = "123",
        Neighborhood = "Centro",
        City = "Sao Paulo",
        State = "SP",
        ZipCode = "01234567",
        Country = "BR"
    }
};

await customersApi.PostCustomersAsync(customerRequest);

// Tokenize Card
var tokenRequest = new PostCardTokenizationRequest
{
    Card = new CompleteCardData
    {
        Number = "4111111111111111",
        HolderName = "JOAO DA SILVA",
        Cvv = "123",
        Expiration = new CompleteCardDataExpiration
        {
            Month = 12,
            Year = 2028
        }
    },
    SaveCard = true,
    Customer = new PostCardTokenizationRequestCustomer
    {
        DocumentNumber = "12345678900",
        DocumentType = DocumentTypeEnum.Cpf,
        Email = "cliente@exemplo.com",
        Name = "Joao da Silva"
    }
};

var tokenResponse = await cardApi.PostCardTokenizationAsync(tokenRequest);
Console.WriteLine($"Token: {tokenResponse.Token}");

// Create Withdrawal
var withdrawRequest = new PostWithdrawsRequest
{
    Amount = 50.00f,
    ExternalId = $"withdraw-{DateTime.Now.Ticks}",
    PayoutAccount = new PostWithdrawsRequestPayoutAccount
    {
        OwnerDocument = "12345678900",
        OwnerName = "Joao da Silva",
        PixKey = "joao.silva@exemplo.com",
        PixType = PixTypeEnum.Email
    }
};

var withdrawResponse = await transfersApi.PostWithdrawsAsync(withdrawRequest);
Console.WriteLine($"Withdrawal ID: {withdrawResponse.Id}");

// List Orders
var orders = await ordersApi.GetOrdersAsync(page: 1, pageSize: 10);
Console.WriteLine($"Total orders: {orders.Count}");

// Refund Order
await ordersApi.PostOrdersByIdRefundAsync("order-id-here");
Console.WriteLine("Order refunded successfully");
```

## API Reference

### Card Tokenization

- `POST /card-tokenization/` - Generate a credit card token

### Customers

- `POST /customers/` - Create a new customer
- `GET /customers/` - List customers (supports: page, pageSize, email, name, startDate, endDate)
- `GET /customers/{id}` - Get customer by ID
- `PATCH /customers/{id}` - Update customer

### Orders

- `POST /orders/` - Create a new payment order
- `GET /orders/` - List orders (supports: page, pageSize, endDate, startDate, id, status)
- `GET /orders/{id}` - Get order by ID
- `POST /orders/{id}/confirm` - Confirm a draft order
- `POST /orders/{id}/refund` - Refund an order

### Withdrawals & Transfers

- `POST /withdraws/` - Create a withdrawal/transfer via PIX
- `GET /withdraws/` - List withdrawals (supports: page, pageSize, endDate, startDate, id)
- `GET /withdraws/{id}` - Get withdrawal by ID

## Payment Methods

| Method | Description |
|--------|-------------|
| `Pix` | PIX instant payment |
| `CreditCard` | Credit card payment |
| `DebitCard` | Debit card payment |
| `BankSlip` | Bank slip (Boleto) |
| `NuPay` | NuPay payment |
| `PicPay` | PicPay payment |
| `Draft` | Draft order (pay later) |

## PIX Types

| Type | Description |
|------|-------------|
| `Cpf` | CPF key |
| `Cnpj` | CNPJ key |
| `Email` | Email key |
| `Phone` | Phone key |
| `Random` | Random UUID key |

## License

Private - All rights reserved

## Support

For API support, contact PayConductor directly through their official channels.
