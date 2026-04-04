/* tslint:disable */
/* eslint-disable */
/**
 * PayConductor API
 * # Introdução  Esta documentação cobre todas as funcionalidades disponíveis na API RESTful do PayConductor, incluindo autenticação, gerenciamento de recursos e exemplos de uso.  ----  # Autenticação  A API do PayConductor usa autenticação HTTP Basic para validar requisições. Você precisa fornecer suas credenciais (Client ID e Client Secret) no formato `client:secret` codificado em Base64.  ## Obtendo Credenciais  1. Acesse o painel administrativo do PayConductor 2. Navegue para **Configurações > Chaves de API** 3. Gere um novo par de credenciais (Client ID e Client Secret) 4. Armazene o Client Secret em um local seguro - ele não será exibido novamente  ## Formato de Autenticação  As credenciais devem ser enviadas no cabeçalho `Authorization` usando o esquema Basic:  ``` Authorization: Basic base64(client_id:client_secret) ```  ## Exemplo em Node.js  ```javascript const clientId = \'your_client_id\'; const clientSecret = \'your_client_secret\';  // Codificar credenciais em Base64 const credentials = Buffer.from(`${clientId}:${clientSecret}`).toString(\'base64\');  const response = await fetch(\'https://api.payconductor.com/api/v1/orders\', {   method: \'GET\',   headers: {     \'Authorization\': `Basic ${credentials}`,     \'Content-Type\': \'application/json\'   } });  const data = await response.json(); console.log(data); ```  ## Erros de Autenticação  | Código | Descrição | |--------|----------| | `401` | Credenciais inválidas ou ausentes | | `403` | Credenciais válidas mas sem permissão para o recurso | | `429` | Muitas requisições (limite de taxa excedido) |  ### Exemplo de Resposta de Erro  ```json {   \"error\": {     \"code\": \"UNAUTHORIZED\",     \"message\": \"Credenciais inválidas\",     \"details\": \"O client ID ou secret fornecido está incorreto\"   } } ```  ----  # Códigos de Erro  A API do PayConductor usa códigos de erro padronizados para comunicar problemas nas requisições. Os erros são divididos em duas categorias principais: **códigos de erro da plataforma** (`code`) e **códigos de erro do provedor de pagamento** (`acquirerErrorCode`).  ## Códigos de Erro da Plataforma  Estes são os códigos de erro retornados no campo `code` quando ocorre um problema na plataforma PayConductor:  | Código | Descrição | Status HTTP | |--------|-----------|--------------| | `InvalidArgument` | Erro de validação de dados de entrada | 400 | | `AccountRestricted` | Conta está restrita de realizar a ação | 403 | | `PermissionDenied` | Usuário não tem permissão para realizar a ação | 403 | | `Unauthorized` | Usuário não está autenticado | 401 | | `InvalidCredentials` | Credenciais fornecidas são inválidas | 401 | | `NoCredentials` | Nenhuma credencial fornecida | 401 | | `IdempotencyKeyConflict` | Conflito de chave de idempotência detectado. O hash do payload não corresponde ao registro existente. | 409 | | `RoutingError` | Erro relacionado ao roteamento inteligente | 400 | | `WithdrawError` | Erro relacionado ao processamento de saque | 500 | | `OrganizationNotFound` | Organização não encontrada | 404 | | `IntegrationNotFound` | Integração não encontrada | 404 | | `IntegrationNotConfigured` | Integração não configurada | 400 | | `IntegrationGenericError` | Erro genérico de integração | 500 | | `MethodNotImplemented` | Método não implementado | 501 | | `Unavailable` | Serviço temporariamente indisponível | 503 | | `InternalServerError` | Erro interno do servidor | 500 | | `GenericError` | Erro genérico para problemas não especificados | 400 | | `GenericNotFound` | Recurso não encontrado | 404 | | `TooManyRequests` | Muitas requisições, limite de taxa excedido | 429 | | `UnknownError` | Erro desconhecido | 500 |  ## Códigos de Erro do Adquirente  Estes códigos aparecem quando há um erro específico do provedor de pagamento:  ### Erros de Fundos  | Código | Descrição | |--------|----------| | `InsufficientFunds` | Fundos insuficientes |  ### Erros de Cartão  | Código | Descrição | |--------|----------| | `CardExpired` | Cartão expirado | | `RecurringStoppedByCustomer` | Cobrança recorrente cancelada pelo cliente | | `InvalidCardNumber` | Número de cartão inválido | | `InvalidCVV` | CVV inválido | | `InvalidExpirationDate` | Data de expiração inválida | | `LostOrStolenCard` | Cartão perdido ou roubado |  ### Erros de PIX  | Código | Descrição | |--------|----------| | `PixExpired` | PIX expirado | | `PixInvalidKey` | Chave PIX inválida | | `PixKeyNotFound` | Chave PIX não encontrada | | `PixPaymentNotFound` | Pagamento PIX não encontrado |  ### Erros de Boleto  | Código | Descrição | |--------|----------| | `BoletoExpired` | Boleto expirado | | `BoletoInvalidBarCode` | Código de barras do boleto inválido | | `BoletoPaymentNotFound` | Pagamento de boleto não encontrado |  ### Erros de Cobrança  | Código | Descrição | |--------|----------| | `ChargeTimeout` | Timeout de cobrança | | `ChargeDenied` | Cobrança negada | | `ChargeNotFound` | Cobrança não encontrada | | `ChargeCancelled` | Cobrança cancelada | | `ChargeDeclined` | Cobrança recusada |  ### Erros de Segurança e Fraude  | Código | Descrição | |--------|----------| | `SecurityViolation` | Violação de segurança | | `FraudSuspected` | Suspeita de fraude | | `AcquirerAntiFraudReproved` | Reprovado pelo antifraude do adquirente | | `Blocked` | Bloqueado | | `CardHolderBlocked` | Titular do cartão bloqueado |  ### Erros de Validação e Limite  | Código | Descrição | |--------|----------| | `InvalidCharge` | Cobrança inválida | | `InvalidAmount` | Valor inválido | | `InvalidCurrency` | Moeda inválida | | `InvalidMerchant` | Comerciante inválido | | `ReenterTransaction` | Reentrar transação | | `RefundNotAllowed` | Reembolso não permitido | | `ExceedsAmountLimit` | Excede limite de valor | | `ExceedsWithdrawalLimit` | Excede limite de saque | | `PaymentMethodNotSupported` | Método de pagamento não suportado |  ### Erros Genéricos  | Código | Descrição | |--------|----------| | `UnknownError` | Erro desconhecido |  ## Exemplos de Resposta de Erro   ### Erro de Validação (InvalidArgument)  Este erro ocorre quando há problemas de validação nos dados enviados. O campo `details.errors` contém informações sobre os campos com erros:  ```json {   \"code\": \"InvalidArgument\",   \"message\": \"Missing required property customer\",   \"data\": null,   \"details\": {     \"errors\": [       {         \"path\": \"customer\",         \"message\": \"Missing required property customer\"       }     ]   } } ```  **Campos:** - `code`: Código de erro da plataforma (`InvalidArgument`) - `message`: Mensagem principal do erro - `data`: Dados adicionais (geralmente `null`) - `details.errors`: Array com os erros de validação encontrados   - `path`: Caminho do campo com erro (pode ser `null` para erros na raiz do objeto)   - `message`: Descrição do erro de validação  ### Erro de Roteamento (RoutingError)  Este erro ocorre quando há falha no processamento da venda através do roteamento inteligente. O campo `details` contém informações sobre as tentativas feitas:  ```json {   \"code\": \"RoutingError\",   \"message\": \"Insufficient funds (test card)\",   \"details\": {     \"chargeId\": \"ortvwh9mvin3fxzjt4avubnv\",     \"lastErrorCode\": \"InsufficientFunds\",     \"attempts\": [       {         \"number\": 1,         \"provider\": \"Sandbox\",         \"errorCode\": \"InsufficientFunds\",         \"errorMessage\": \"Insufficient funds (test card)\"       }     ]   } } ```  **Campos:** - `code`: Código de erro da plataforma (`RoutingError`) - `message`: Mensagem de erro legível - `details.chargeId`: ID da cobrança que falhou - `details.lastErrorCode`: Último código de erro do provedor (tipo `AcquirerErrorCode`) - `details.attempts`: Array com todas as tentativas realizadas   - `number`: Número da tentativa   - `provider`: Nome do provedor utilizado   - `errorCode`: Código de erro retornado pelo provedor (tipo `AcquirerErrorCode`)   - `errorMessage`: Mensagem de erro retornada pelo provedor  ### Erro de Saque (WithdrawError)  Este erro ocorre quando há falha no processamento de um saque. O campo `details` contém informações sobre todas as tentativas de provedor realizadas:  ```json {   \"code\": \"WithdrawError\",   \"message\": \"Withdrawal failed (Simulated failure for amount R$ 50.00)\",   \"data\": null,   \"details\": {     \"withdrawId\": \"a39qnkcbgrspazur55h561p7\",     \"lastErrorCode\": \"PixInvalidKey\",     \"attempts\": [       {         \"status\": \"Failed\",         \"message\": \"Withdrawal failed (Simulated failure for amount R$ 50.00)\",         \"provider\": \"Sandbox\",         \"timestamp\": \"2026-02-23T19:54:30.849Z\"       }     ]   },   \"status\": 500,   \"timestamp\": \"2026-02-23T19:54:30.864Z\" } ```  **Campos:** - `code`: Código de erro da plataforma (`WithdrawError`) - `message`: Mensagem de erro legível - `data`: Dados adicionais (geralmente `null`) - `details.withdrawId`: ID do saque que falhou - `details.lastErrorCode`: Último código de erro do provedor (tipo `AcquirerErrorCode`) - `details.attempts`: Array com todas as tentativas de provedor realizadas   - `status`: Status da tentativa (ex: `Failed`)   - `message`: Mensagem de erro do provedor   - `provider`: Nome do provedor utilizado   - `timestamp`: Timestamp ISO 8601 da tentativa - `status`: Código de status HTTP - `timestamp`: Timestamp ISO 8601 do erro  ## Tratamento de Erros  Ao integrar com a API do PayConductor, recomendamos:  1. **Verificar o campo `code`** para identificar o tipo de erro 2. **Para erros `RoutingError`**: Verificar `details.lastErrorCode` para obter o código específico do provedor e `details.chargeId` para a referência da cobrança 3. **Para erros `WithdrawError`**: Verificar `details.lastErrorCode` para o código de erro do provedor e `details.errors` para todas as tentativas de provedor 4. **Para erros `InvalidArgument`**: Verificar `details.errors` para identificar quais campos precisam ser corrigidos 5. **Implementar lógica de retry**: Alguns erros temporários (como `Unavailable` ou `ChargeTimeout`) podem ser resolvidos com novas tentativas 6. **Logs detalhados**: Armazenar a resposta de erro completa para análise e depuração  ----  # Sandbox  O ambiente Sandbox do PayConductor permite testar integrações de pagamento sem processar transações reais. Use dados de teste para simular diferentes cenários de pagamento e casos de erro.  ## Configuração  1. Acesse sua organização **Sandbox** no painel administrativo do PayConductor 2. Navegue para **Integrações** e adicione um novo provedor **Sandbox** 3. Configure as regras de roteamento para cada método de pagamento que deseja testar, conectando-os ao provedor Sandbox  ## Cartões de Crédito de Teste  Use estes números de cartão para simular diferentes resultados de transação:  | Número do Cartão | Resultado | Código de Erro | |------------------|-----------|----------------| | `4242424242424242` | Sucesso | - | | `4000000000000001` | Fundos insuficientes | `InsufficientFunds` | | `4000000000000069` | Cartão expirado | `CardExpired` | | `4000000000000127` | CVV inválido | `InvalidCVV` | | `4000000000000119` | Cartão perdido ou roubado | `LostOrStolenCard` | | `4000000000000002` | Transação negada | `ChargeDenied` | | `4000000000000010` | Transação recusada | `ChargeDeclined` | | `4100000000000019` | Suspeita de fraude | `FraudSuspected` | | `4000000000000036` | Valor inválido | `InvalidAmount` | | `4000000000000044` | Excede limite de valor | `ExceedsAmountLimit` | | `4000000000000101` | Titular do cartão bloqueado | `CardHolderBlocked` |  **Nota:** Você pode usar qualquer data de expiração futura e qualquer CVV de 3 dígitos para cartões de teste.  ## E-mails de Cliente de Teste  Os endereços de e-mail dos clientes afetam o comportamento da transação:  | E-mail | Comportamento | |--------|---------------| | `paid@sandbox.com` | Transação auto-confirma imediatamente (para métodos de pagamento assíncronos como PIX e Boleto, a confirmação é enviada via webhook) | | `failed@sandbox.com` | Transação falha com erro genérico | | Qualquer outro e-mail | Transação processa normalmente (pendente) |  ## Saques de Teste (PIX)  Os valores de saque acionam diferentes comportamentos:  | Valor (BRL) | Comportamento | |-------------|---------------| | `20.00 ~ 50.00` | Transação falha | | `50.01 ~ 100.00` | Transação auto-confirma | | Qualquer outro valor | Transação processa normalmente (pendente) |  ----  # Idempotência  A API do PayConductor suporta idempotência para operações críticas, garantindo que requisições duplicadas não resultem em múltiplas execuções da mesma operação. (O retorno será o mesmo para a mesma chave)  ## Como Usar  Para tornar uma requisição idempotente, inclua o header `Idempotency-Key` com um valor único (recomendamos UUID v4):  ```bash curl -X POST https://api.payconductor.com/api/v1/orders \\\\   -H \"Idempotency-Key: 123e4567-e89b-12d3-a456-426614174000\" \\\\   -H \"Content-Type: application/json\" \\\\   -d \'{     \"amount\": 10000,     \"currency\": \"BRL\",     \"payment\": {       \"paymentMethod\": \"Pix\"     }   }\' ```  ## Endpoints que Suportam Idempotência  Os seguintes endpoints suportam requisições idempotentes:  | Endpoint | Método | Descrição | |----------|--------|-----------| | `/api/v1/orders` | POST | Criar novo pedido | | `/api/v1/withdraws` | POST | Criar novo saque |  ## Comportamento  ### Cache de 24 Horas  Os resultados de operações idempotentes são armazenados por **24 horas**. Após esse período, a chave de idempotência expira e uma nova requisição com a mesma chave será processada como uma nova operação.  ### Requisições Duplicadas  Quando você envia uma requisição com uma chave de idempotência que já foi processada:  1. **Mesma requisição**: Se o payload for idêntico, a API retorna o resultado original do cache 2. **Payload diferente**: Se o payload for diferente, a API retorna erro `409 Conflict` com código `IdempotencyKeyConflict`  ### Exemplo de Requisição Duplicada  **Primeira requisição (processada com sucesso):** ```bash curl -X POST https://api.payconductor.com/api/v1/orders \\\\   -H \"Idempotency-Key: 123e4567-e89b-12d3-a456-426614174000\" \\\\   -d \'{\"amount\": 10000, \"currency\": \"BRL\"}\' ```  **Segunda requisição (mesmo payload - retorna resultado cacheado):** ```bash curl -X POST https://api.payconductor.com/api/v1/orders \\\\   -H \"Idempotency-Key: 123e4567-e89b-12d3-a456-426614174000\" \\\\   -d \'{\"amount\": 10000, \"currency\": \"BRL\"}\' # Retorna o mesmo pedido criado na primeira requisição ```  **Terceira requisição (payload diferente - retorna erro):** ```bash curl -X POST https://api.payconductor.com/api/v1/orders \\\\   -H \"Idempotency-Key: 123e4567-e89b-12d3-a456-426614174000\" \\\\   -d \'{\"amount\": 20000, \"currency\": \"BRL\"}\'  # Valor diferente! # Retorna erro 409 Conflict ```  ### Resposta de Conflito  Quando há conflito de hash (mesma chave, payload diferente), você receberá:  ```json {   \"code\": \"IdempotencyKeyConflict\",   \"message\": \"Idempotency key conflict detected. Hash mismatch with existing record.\",   \"status\": 409,   \"details\": {     \"expectedHash\": \"abc123...\",     \"actualHash\": \"def456...\"   } } ```
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


import type { Configuration } from './configuration';
import type { AxiosPromise, AxiosInstance, RawAxiosRequestConfig } from 'axios';
import globalAxios from 'axios';
// Some imports not used depending on template conditions
// @ts-ignore
import { DUMMY_BASE_URL, assertParamExists, setApiKeyToObject, setBasicAuthToObject, setBearerAuthToObject, setOAuthToObject, setSearchParams, serializeDataIfNeeded, toPathString, createRequestFunction, replaceWithSerializableTypeIfNeeded } from './common';
import type { RequestArgs } from './base';
// @ts-ignore
import { BASE_PATH, COLLECTION_FORMATS, BaseAPI, RequiredError, operationServerMap } from './base';

/**
 * Schema for creating a new address
 */
export interface AddressCreateRequest {
    /**
     * City name
     */
    'city': string;
    /**
     * Country code in ISO 3166-1 alpha-2 format
     */
    'country': string;
    /**
     * Neighborhood name
     */
    'neighborhood': string;
    /**
     * Address number
     */
    'number': string;
    /**
     * State code in ISO 3166-2 format
     */
    'state': string;
    /**
     * Street name
     */
    'street': string;
    /**
     * ZIP code without formatting
     */
    'zipCode': string;
}
/**
 * Schema for creating a new address
 */
export interface AddressCreateRequest1 {
    /**
     * City name
     */
    'city': string;
    /**
     * Country code in ISO 3166-1 alpha-2 format
     */
    'country': string;
    /**
     * Neighborhood name
     */
    'neighborhood': string;
    /**
     * Address number
     */
    'number': string;
    /**
     * State code in ISO 3166-2 format
     */
    'state': string;
    /**
     * Street name
     */
    'street': string;
    /**
     * ZIP code without formatting
     */
    'zipCode': string;
}
/**
 * Payment with Apple Pay digital wallet
 */
export interface ApplePay {
    'paymentMethod': string;
    'applePay': ApplePayApplePay;
    /**
     * Number of installments
     */
    'installments'?: number;
}
/**
 * Apple Pay token data from the device
 */
export interface ApplePayApplePay {
    /**
     * Token version. The only accepted value is EC_v1
     */
    'version': string;
    /**
     * Encrypted payment data from Apple Pay token
     */
    'data': string;
    /**
     * Signature of the payment and header data
     */
    'signature': string;
    'header': ApplePayApplePayHeader;
}
/**
 * Additional header information for payment verification
 */
export interface ApplePayApplePayHeader {
    /**
     * X.509 encoded key bytes, Base64 encoded
     */
    'ephemeralPublicKey': string;
    /**
     * Hash of the X.509 encoded public key bytes of the merchant certificate
     */
    'publicKeyHash': string;
    /**
     * Hexadecimal transaction identifier
     */
    'transactionId': string;
}
/**
 * Specific data for bank slip payment
 */
export interface BankSlipPayment {
    'paymentMethod': string;
    /**
     * Days until bank slip expires
     */
    'expirationInDays'?: number;
}
/**
 * Client browser information
 */
export interface BrowserInformation {
    /**
     * Client IP address
     */
    'ip'?: string;
    /**
     * Browser user agent
     */
    'userAgent'?: string;
    /**
     * Browser Accept header
     */
    'acceptHeader'?: string;
    /**
     * Browser language
     */
    'language'?: string;
    /**
     * Screen color depth
     */
    'colorDepth'?: number;
    /**
     * Screen height in pixels
     */
    'screenHeight'?: number;
    /**
     * Screen width in pixels
     */
    'screenWidth'?: number;
    /**
     * Timezone offset
     */
    'timeZoneOffset'?: string;
    /**
     * Indicates if Java is enabled
     */
    'javaEnabled': boolean;
    /**
     * Indicates if JavaScript is enabled
     */
    'javaScriptEnabled': boolean;
}
/**
 * Complete card data for payment processing
 */
export interface CardCreateRequest {
    /**
     * Card security code (CVV)
     */
    'cvv': string;
    'expiration': Expiration;
    /**
     * Card holder name
     */
    'holderName': string;
    /**
     * Credit card number
     */
    'number': string;
}
/**
 * Data for creating a customer card with customer information
 */
export interface CardTokenizationCreateRequest {
    'card': CardCreateRequest;
    /**
     * Indicates if the card should be saved for future use
     */
    'saveCard': boolean;
    'customer': CardTokenizationCreateRequestCustomer;
}
/**
 * @type CardTokenizationCreateRequestCustomer
 */
export type CardTokenizationCreateRequestCustomer = CardTokenizationCustomerByIdData | CustomerCreateRequest;

/**
 * Response containing customer ID and card token
 */
export interface CardTokenizationCreateResponse {
    /**
     * ID of the customer associated with the created card
     */
    'customerId': string;
    /**
     * Token of the created card for future transactions
     */
    'token': string;
}
/**
 * Reference to an existing customer by ID
 */
export interface CardTokenizationCustomerByIdData {
    /**
     * ID of an existing customer
     */
    'id': string;
}
/**
 * Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.
 */
export interface CreateSubscription {
    /**
     * Total amount to be charged on the order in floating point value
     */
    'chargeAmount': number;
    /**
     * Client IP address
     */
    'clientIp': string;
    'customer': CustomerCreateRequest;
    /**
     * Discount amount
     */
    'discountAmount': number;
    /**
     * Order ID in your system
     */
    'externalId': string;
    'fingerprints'?: OrderFraudFingerprints;
    /**
     * List of products or services in the order
     */
    'items'?: Array<OrderItemData>;
    'merchant'?: MerchantData;
    /**
     * Split data for payment division among multiple recipients
     */
    'splits'?: Array<OrderSplitDataInner>;
    'payment': CreditCardPayment;
    /**
     * Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split)
     */
    'splitAmountTotal'?: number;
    'session'?: OrderCreateRequestSession;
    /**
     * Shipping fee
     */
    'shippingFee': number;
    /**
     * Additional fees
     */
    'taxFee': number;
    /**
     * Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters
     */
    'metadata'?: object;
    'routing'?: OrderRoutingData;
    'subscription': CreateSubscriptionSubscription;
}
export interface CreateSubscriptionSubscription {
    'periodicity': Periodicity;
    /**
     * Number of period units between each charge (e.g. 2 = every 2 months)
     */
    'periodicityInterval'?: number;
    /**
     * Maximum number of billing cycles. Leave empty for unlimited
     */
    'maxCycles'?: number;
    /**
     * Date and time to start the subscription (ISO 8601). Defaults to now
     */
    'startAt'?: string;
}


/**
 * Specific data for credit card payment
 */
export interface CreditCardPayment {
    'paymentMethod': PaymentMethod;
    'card': CreditCardPaymentCard;
    /**
     * Number of installments
     */
    'installments': number;
    /**
     * Text that will appear on the card statement (soft descriptor)
     */
    'softDescriptor'?: string;
    'threeDSecure'?: CreditCardPaymentThreeDSecure;
}


/**
 * @type CreditCardPaymentCard
 */
export type CreditCardPaymentCard = CardCreateRequest | TokenizedCardData;

/**
 * @type CreditCardPaymentThreeDSecure
 */
export type CreditCardPaymentThreeDSecure = { type: 'external' } & External3DSAuthentication | { type: 'internal' } & Internal3DSAuthentication;


export const Currency = {
    USD: 'USD',
    EUR: 'EUR',
    BRL: 'BRL',
    ARS: 'ARS',
    CAD: 'CAD',
    COP: 'COP',
    GBP: 'GBP',
    JPY: 'JPY',
    MXN: 'MXN',
    MZN: 'MZN',
    CNY: 'CNY',
    SAR: 'SAR',
    ETH: 'ETH',
    BNB: 'BNB',
    BTC: 'BTC',
    USDT: 'USDT',
    USDC: 'USDC',
    DOGE: 'DOGE',
    SOL: 'SOL'
} as const;

export type Currency = typeof Currency[keyof typeof Currency];


/**
 * Customer address information
 */
export interface CustomerAddress {
    /**
     * Unique address identifier
     */
    'id': string;
    /**
     * Street name
     */
    'street': string;
    /**
     * Address number
     */
    'number': string;
    /**
     * Neighborhood name
     */
    'neighborhood': string;
    /**
     * City name
     */
    'city': string;
    /**
     * State code in ISO 3166-2 format
     */
    'state': string;
    /**
     * ZIP code without formatting
     */
    'zipCode': string;
    /**
     * Country code in ISO 3166-1 alpha-2 format
     */
    'country': string;
}
/**
 * Schema for creating a new customer
 */
export interface CustomerCreateRequest {
    'address'?: AddressCreateRequest;
    /**
     * Customer CPF or CNPJ without formatting
     */
    'documentNumber': string;
    'documentType': DocumentType;
    /**
     * Customer email
     */
    'email': string;
    /**
     * Customer full name
     */
    'name': string;
    /**
     * Customer phone number in +55 DD 9XXXXXXXX format
     */
    'phoneNumber'?: string;
}


/**
 * Pagination information for the customer list
 */
export interface CustomerListPagination {
    /**
     * Current page number
     */
    'currentPage': number;
    /**
     * Number of items per page
     */
    'pageSize': number;
    /**
     * Total number of customers
     */
    'totalItems': number;
    /**
     * Total number of pages
     */
    'totalPages': number;
}
/**
 * Paginated list of customers
 */
export interface CustomerListResponse {
    /**
     * List of customers
     */
    'data': Array<CustomerReadResponse>;
    'pagination': CustomerListPagination;
}
/**
 * Customer response with complete information
 */
export interface CustomerReadResponse {
    /**
     * Unique customer identifier
     */
    'id': string;
    /**
     * Customer full name
     */
    'name': string;
    /**
     * Customer email
     */
    'email': string;
    'documentType': DocumentType;
    /**
     * Customer document number (CPF or CNPJ)
     */
    'documentNumber': string | null;
    /**
     * Customer phone number
     */
    'phoneNumber': string | null;
    'address': CustomerAddress | null;
    /**
     * Date and time when the customer was created (ISO 8601 format)
     */
    'createdAt': string;
    /**
     * Date and time when the customer was last updated (ISO 8601 format)
     */
    'updatedAt': string;
}


/**
 * Schema for updating customer information
 */
export interface CustomerUpdateRequest {
    'address'?: AddressCreateRequest;
    /**
     * Customer CPF or CNPJ without formatting
     */
    'documentNumber'?: string;
    'documentType'?: DocumentType;
    /**
     * Customer email
     */
    'email'?: string;
    /**
     * Customer full name
     */
    'name'?: string;
    /**
     * Customer phone number in +55 DD 9XXXXXXXX format
     */
    'phoneNumber'?: string;
}



export const DocumentType = {
    Cpf: 'Cpf',
    Cnpj: 'Cnpj'
} as const;

export type DocumentType = typeof DocumentType[keyof typeof DocumentType];


/**
 * Used to create an order without generating a real payment. Use to create orders that will be paid later
 */
export interface DraftPayment {
    'paymentMethod': string;
    /**
     * Order expiration time in seconds
     */
    'expirationInSeconds'?: number;
    /**
     * Available payment methods for this order
     */
    'availablePaymentMethods'?: Array<DraftPaymentAvailablePaymentMethodsEnum>;
}

export const DraftPaymentAvailablePaymentMethodsEnum = {
    Pix: 'Pix',
    BankSlip: 'BankSlip',
    CreditCard: 'CreditCard',
    NuPay: 'NuPay',
    PicPay: 'PicPay',
    GooglePay: 'GooglePay'
} as const;

export type DraftPaymentAvailablePaymentMethodsEnum = typeof DraftPaymentAvailablePaymentMethodsEnum[keyof typeof DraftPaymentAvailablePaymentMethodsEnum];


export const Environment = {
    Production: 'Production',
    Sandbox: 'Sandbox'
} as const;

export type Environment = typeof Environment[keyof typeof Environment];



export const Event = {
    OrderCreated: 'OrderCreated',
    OrderPending: 'OrderPending',
    OrderCompleted: 'OrderCompleted',
    OrderFailed: 'OrderFailed',
    OrderRefunded: 'OrderRefunded',
    OrderChargeback: 'OrderChargeback',
    WithdrawCreated: 'WithdrawCreated',
    WithdrawCompleted: 'WithdrawCompleted',
    WithdrawFailed: 'WithdrawFailed',
    WithdrawTransferring: 'WithdrawTransferring',
    MerchantCreated: 'MerchantCreated',
    MerchantWaitingOnboarding: 'MerchantWaitingOnboarding',
    MerchantAnalysing: 'MerchantAnalysing',
    MerchantFailed: 'MerchantFailed',
    MerchantRefused: 'MerchantRefused',
    MerchantApproved: 'MerchantApproved',
    SubscriptionCreated: 'SubscriptionCreated',
    SubscriptionActivated: 'SubscriptionActivated',
    SubscriptionCanceled: 'SubscriptionCanceled',
    SubscriptionCompleted: 'SubscriptionCompleted',
    SubscriptionPastDue: 'SubscriptionPastDue'
} as const;

export type Event = typeof Event[keyof typeof Event];


/**
 * Card expiration date
 */
export interface Expiration {
    /**
     * Card expiration month
     */
    'month': number;
    /**
     * Card expiration year
     */
    'year': number;
}
/**
 * 3DS authentication data performed externally by the client
 */
export interface External3DSAuthentication {
    'type': string;
    /**
     * 3DS authentication status performed by the client
     */
    'status': string;
    /**
     * Authentication transaction identifier. In 3DS2, may be the same value as CAVV. Used for authentication traceability
     */
    'eci': string;
    /**
     * 3DS protocol version used in authentication
     */
    'version': string;
    /**
     * Code generated by the card issuer proving that validation was completed
     */
    'cavv': string;
    /**
     * 3DS transaction identifier generated by the authentication provider
     */
    'providerTransactionId': string;
    /**
     * Transaction identifier in the 3DS authentication directory
     */
    'directoryTransactionId': string;
    'browser'?: BrowserInformation;
}
/**
 * Specific data for Google Pay payment (ECv2 Token)
 */
export interface GooglePayPayment {
    'paymentMethod': string;
    'googlePay': GooglePayPaymentGooglePay;
    /**
     * Number of installments
     */
    'installments'?: number;
}
/**
 * Specific data for Google Pay payment (ECv2 Token)
 */
export interface GooglePayPaymentGooglePay {
    /**
     * Signature of the Google Pay payment token
     */
    'signature': string;
    'intermediateSigningKey': GooglePayPaymentGooglePayIntermediateSigningKey;
    /**
     * Encryption protocol version
     */
    'protocolVersion': string;
    /**
     * JSON serialized string by Google Pay containing encryptedMessage, ephemeralPublicKey and tag
     */
    'signedMessage': string;
}
/**
 * Google Pay intermediate signing key
 */
export interface GooglePayPaymentGooglePayIntermediateSigningKey {
    /**
     * Encoded intermediate signing key
     */
    'signedKey': string;
    /**
     * List of intermediate key signatures
     */
    'signatures': Array<string>;
}
/**
 * 3DS authentication data managed by the platform
 */
export interface Internal3DSAuthentication {
    'type': string;
    /**
     * 3DS authentication token generated by 3DS authentication
     */
    'authToken'?: string;
    /**
     * Directory server transaction identifier generated by the authentication provider
     */
    'dsTransactionId'?: string;
    /**
     * 3DS transaction identifier generated by the payment service provider
     */
    'providerTransactionId'?: string;
    'browser'?: BrowserInformation;
}
/**
 * Model for merchant creation with all required data
 */
export interface Merchant {
    'personType'?: PersonType;
    /**
     * Description of products or services offered
     */
    'productsDescription'?: string;
    /**
     * Merchant Category Code
     */
    'mcc'?: string;
    /**
     * Merchant website URL
     */
    'website': string;
    'business': MerchantBusiness;
    'owner': MerchantOwner;
    'payoutAccount': MerchantPayoutAccount;
    'financialRules'?: MerchantFinancialRules;
}


export interface MerchantBusiness {
    /**
     * Merchant legal name or full name
     */
    'name': string;
    /**
     * Merchant CNPJ or CPF
     */
    'document': string;
    /**
     * Merchant trade name
     */
    'tradeName'?: string;
    /**
     * Merchant main email
     */
    'email': string;
    /**
     * Merchant contact phone number
     */
    'phoneNumber'?: string;
    'address': AddressCreateRequest;
}
/**
 * Merchant data for order or withdrawal
 */
export interface MerchantData {
    /**
     * Merchant CPF or CNPJ without formatting
     */
    'document': string;
    /**
     * Merchant email
     */
    'email': string;
    /**
     * Merchant name
     */
    'name': string;
}
export interface MerchantFinancialRules {
    'fees': Array<MerchantFinancialRulesFeesInner>;
}
/**
 * Regras financeiras a serem repassadas para adquirente
 */
export interface MerchantFinancialRulesFeesInner {
    'paymentMethod': PaymentMethod;
    /**
     * Número de dias para liberação do valor para saque
     */
    'daysDelayForRedeem': number;
    'items': Array<MerchantFinancialRulesFeesInnerItemsInner>;
}


export interface MerchantFinancialRulesFeesInnerItemsInner {
    /**
     * Número da parcela
     */
    'installmentNumber': number;
    /**
     * Percentual de taxa MDR
     */
    'mdrFeePercentage': number;
    /**
     * Valor fixo da taxa MDR
     */
    'mdrFeeFixedAmount': number;
    /**
     * Percentual de taxa de antecipação
     */
    'anticipationFeePercentage': number;
}
/**
 * Schema for configuring a merchant flow
 */
export interface MerchantFlow {
    /**
     * Flow ID
     */
    'flowId': string;
    'paymentMethod': PaymentMethod;
}


/**
 * Merchant owner/legal representative data
 */
export interface MerchantOwner {
    /**
     * Owner full name
     */
    'name': string;
    /**
     * Owner CPF
     */
    'document': string;
    /**
     * Owner email
     */
    'email'?: string;
    /**
     * Owner phone number
     */
    'phoneNumber'?: string;
    'address': AddressCreateRequest;
    /**
     * Owner birth date (format: YYYY-MM-DD)
     */
    'birthdate': string;
}
/**
 * Merchant bank account for receiving payments (PIX and/or checking account)
 */
export interface MerchantPayoutAccount {
    'pix'?: MerchantPayoutAccountPix;
    'checking'?: MerchantPayoutAccountChecking;
}
/**
 * Bank account data for receiving payments
 */
export interface MerchantPayoutAccountChecking {
    /**
     * Account number with check digit
     */
    'accountNumber': string;
    /**
     * Bank code + branch number + check digit
     */
    'routingNumber': string;
}
/**
 * PIX key data for receiving payments
 */
export interface MerchantPayoutAccountPix {
    'type': Type;
    /**
     * PIX key
     */
    'key': string;
}


/**
 * Modelo de resposta com todos os dados do merchant
 */
export interface MerchantResponse {
    /**
     * ID único do merchant
     */
    'id': string;
    /**
     * Descrição dos produtos ou serviços oferecidos
     */
    'productsDescription': string | null;
    /**
     * Merchant Category Code
     */
    'mcc': string | null;
    /**
     * URL do site do merchant
     */
    'website': string;
    'status': Status;
    /**
     * Mensagem de erro caso a criação da subconta tenha falhado
     */
    'errorMessage': string | null;
    'bussiness': MerchantResponseBussiness;
    'owner': MerchantResponseOwner;
    'payoutAccounts': MerchantResponsePayoutAccounts;
    'subaccounts': Array<MerchantResponseSubaccountsInner>;
    'financialRules': MerchantResponseFinancialRules | null;
}


export interface MerchantResponseBussiness {
    /**
     * Razão social ou nome completo do merchant
     */
    'name': string;
    /**
     * CNPJ ou CPF do merchant
     */
    'document': string;
    /**
     * Email principal do merchant
     */
    'email': string;
    /**
     * Telefone de contato do merchant
     */
    'phoneNumber': string | null;
    /**
     * Nome fantasia do merchant
     */
    'tradeName': string | null;
    'address': AddressCreateRequest1 | null;
}
export interface MerchantResponseFinancialRules {
    'fees': Array<MerchantFinancialRulesFeesInner>;
}
export interface MerchantResponseOwner {
    /**
     * Nome completo do proprietário
     */
    'name': string;
    /**
     * CPF do proprietário
     */
    'document': string;
    /**
     * Email do proprietário
     */
    'email': string | null;
    /**
     * Telefone do proprietário
     */
    'phoneNumber': string | null;
    /**
     * Data de nascimento do proprietário (formato: YYYY-MM-DD)
     */
    'birthdate': string;
    'address': AddressCreateRequest1 | null;
}
export interface MerchantResponsePayoutAccounts {
    'pix': MerchantResponsePayoutAccountsPix | null;
    'checking': MerchantResponsePayoutAccountsChecking | null;
}
export interface MerchantResponsePayoutAccountsChecking {
    /**
     * Número da conta com dígito
     */
    'accountNumber': string;
    /**
     * Código do banco + número da agência + dígito
     */
    'routingNumber': string;
}
export interface MerchantResponsePayoutAccountsPix {
    'type': Type;
    /**
     * Chave PIX
     */
    'key': string;
}


export interface MerchantResponseSubaccountsInner {
    /**
     * ID único da subconta
     */
    'id': string;
    /**
     * Nome do provedor da subconta
     */
    'provider': string;
    /**
     * Status da subconta
     */
    'status': string;
    /**
     * Mensagem de erro caso a criação da subconta tenha falhado
     */
    'errorMessage': string | null;
}
/**
 * Specific data for NuPay payment
 */
export interface NuPayPayment {
    'paymentMethod': string;
    'nuPay': NuPayPaymentNuPay;
}
/**
 * Specific data for NuPay payment
 */
export interface NuPayPaymentNuPay {
    /**
     * Payment cancellation URL
     */
    'cancelUrl': string;
    /**
     * Merchant name
     */
    'merchantName': string;
    /**
     * Return URL after payment completion
     */
    'returnUrl': string;
    /**
     * Store name
     */
    'storeName'?: string;
}
/**
 * Bank slip payment data
 */
export interface OrderBankSlipInfo {
    /**
     * Bank slip bar code
     */
    'barCode': string;
    /**
     * Bank slip digitable line
     */
    'digitableLine': string;
    /**
     * Bank slip PDF URL
     */
    'pdfUrl'?: string;
}
/**
 * Response after confirming a draft order
 */
export interface OrderConfirmResponse {
    /**
     * Order ID in the system
     */
    'id': string;
    /**
     * External order ID (provided by your integration)
     */
    'externalId': string | null;
    /**
     * Order idempotency key
     */
    'idempotencyKey': string | null;
    /**
     * Total order amount
     */
    'amount': number;
    'currency': Currency;
    /**
     * Cost fee applied to the order
     */
    'costFee': number;
    'pix'?: OrderPIXInfo;
    'bankSlip'?: OrderBankSlipInfo;
    'nuPay'?: OrderNuPayInfo;
    'picPay'?: OrderPicPayInfo;
    'status': Status;
    /**
     * Status detail providing additional context (e.g. ThreeDsAwaitingChallenge when a 3DS challenge is pending)
     */
    'statusDetail'?: string | null;
    'paymentMethod': PaymentMethod;
    /**
     * Date and time when the order was paid (ISO 8601)
     */
    'payedAt': string | null;
    /**
     * Error code, if any
     */
    'errorCode': string | null;
    /**
     * Error message, if any
     */
    'errorMessage': string | null;
    'threeDSecure'?: OrderCreditCardInfoThreeDSecure;
}


/**
 * Order data for payment processing
 */
export interface OrderCreateRequest {
    /**
     * Total amount to be charged on the order in floating point value
     */
    'chargeAmount': number;
    /**
     * Client IP address
     */
    'clientIp': string;
    'customer': CustomerCreateRequest;
    /**
     * Discount amount
     */
    'discountAmount': number;
    /**
     * Order ID in your system
     */
    'externalId': string;
    'fingerprints'?: OrderFraudFingerprints;
    /**
     * List of products or services in the order
     */
    'items'?: Array<OrderItemData>;
    'merchant'?: MerchantData;
    /**
     * Split data for payment division among multiple recipients
     */
    'splits'?: Array<OrderSplitDataInner>;
    'payment': OrderPaymentData;
    /**
     * Total split amount to be paid to the merchant (Used only for reporting purposes, does not generate actual split)
     */
    'splitAmountTotal'?: number;
    'session'?: OrderCreateRequestSession;
    /**
     * Shipping fee
     */
    'shippingFee': number;
    /**
     * Additional fees
     */
    'taxFee': number;
    /**
     * Additional metadata for the order as key-value pairs. Keys should not contain spaces or special characters
     */
    'metadata'?: object;
    'routing'?: OrderRoutingData;
}
/**
 * If externalSessionId or sessionId is provided and an existing session exists, it will be updated with the new data. Otherwise, a new session will be created.
 */
export interface OrderCreateRequestSession {
    /**
     * Time in minutes for checkout session expiration
     */
    'expiresInMinutes'?: number;
    /**
     * Checkout URL for redirection
     */
    'checkoutUrl'?: string;
    /**
     * ID generated by our service to identify the checkout session
     */
    'sessionId'?: string;
    /**
     * Checkout session ID generated by the client side. The ID must be unique for each cart session
     */
    'externalSessionId'?: string;
}
/**
 * Response after creating an order
 */
export interface OrderCreateResponse {
    /**
     * Order ID in the system
     */
    'id': string;
    /**
     * External order ID (provided by your integration)
     */
    'externalId': string | null;
    /**
     * Order idempotency key
     */
    'idempotencyKey': string | null;
    /**
     * Provider used to process the order
     */
    'externalIntegrationKey': string;
    /**
     * Order ID in the payment provider
     */
    'externalIntegrationId': string | null;
    /**
     * Total order amount
     */
    'amount': number;
    'currency': Currency;
    /**
     * Cost fee applied to the order
     */
    'costFee': number;
    'pix'?: OrderPIXInfo;
    'bankSlip'?: OrderBankSlipInfo;
    'nuPay'?: OrderNuPayInfo;
    'picPay'?: OrderPicPayInfo;
    'creditCard'?: OrderCreditCardInfo;
    'status': Status;
    /**
     * Status detail providing additional context (e.g. ThreeDsAwaitingChallenge when a 3DS challenge is pending)
     */
    'statusDetail'?: string | null;
    'paymentMethod': PaymentMethod;
    /**
     * Date and time when the order was paid (ISO 8601)
     */
    'payedAt': string | null;
    /**
     * Error code, if any
     */
    'errorCode': string | null;
    /**
     * Error message, if any
     */
    'errorMessage': string | null;
    /**
     * List of products or services included in the order
     */
    'orderItems': Array<OrderItemsInner>;
    'session': OrderCreateResponseSession | null;
    'threeDSecure'?: OrderCreditCardInfoThreeDSecure;
}


export interface OrderCreateResponseSession {
    /**
     * ID of the checkout session associated with the order
     */
    'sessionId': string;
}
/**
 * Credit card payment data
 */
export interface OrderCreditCardInfo {
    /**
     * Transaction authorization code
     */
    'authorizationCode'?: string;
    'threeDSecure'?: OrderCreditCardInfoThreeDSecure;
}
export interface OrderCreditCardInfoThreeDSecure {
    /**
     * 3DS authentication token, returned only when internal 3DS authentication needs to be performed
     */
    'authToken'?: string;
    /**
     * URL to execute the 3DS challenge, returned only for internal 3DS authentications
     */
    'threeDsUrl'?: string;
    /**
     * 3DS challenge request payload, used by some acquirers for inline 3DS challenge flow
     */
    'creq'?: string;
    /**
     * Directory server transaction identifier generated by the authentication provider
     */
    'dsTransactionId'?: string;
    /**
     * 3DS protocol version used in authentication
     */
    'version'?: string;
    'status': Status;
    'acquirer'?: OrderCreditCardInfoThreeDSecureAcquirer;
    /**
     * URL for initializing the 3DS authentication session, used by the client-side authentication SDK to handle the 3DS challenge flow
     */
    'operationUrl'?: string;
    /**
     * Public key for the 3DS authentication SDK, used to initialize the client-side authentication library
     */
    'publicKey'?: string;
    'environment'?: Environment;
}


/**
 * Payment service provider identifier, returned only for 3DS authentications performed through a payment provider integrated with the platform
 */
export interface OrderCreditCardInfoThreeDSecureAcquirer {
}
export interface OrderCreditCardInfoThreeDSecureAcquirerAnyOf {
}
/**
 * Fraud analysis fingerprint data
 */
export interface OrderFraudFingerprints {
    /**
     * ThreatMetrix fingerprint ID for fraud analysis
     */
    'threatMetrixFingerprintId'?: string;
}
/**
 * Product or service item in the order
 */
export interface OrderItemData {
    /**
     * Product or service ID in your system
     */
    'id': string;
    /**
     * Defines if the item is a physical product or a service
     */
    'isPhysical': boolean;
    /**
     * Product or service name
     */
    'name': string;
    /**
     * Quantity of the product or service
     */
    'qty': number;
    /**
     * Unit price
     */
    'unitPrice': number;
}
export interface OrderItemsInner {
    /**
     * External item ID
     */
    'externalId': string | null;
    /**
     * Item ID in the order
     */
    'id': string;
    /**
     * Product/service name
     */
    'name': string;
    /**
     * Quantity
     */
    'qty': number;
    /**
     * Total item amount (quantity × unit price)
     */
    'totalAmount': number;
    /**
     * Total net amount of the item
     */
    'totalNetAmount': number;
    /**
     * Unit price
     */
    'unityPrice': number;
}
/**
 * NuPay payment data
 */
export interface OrderNuPayInfo {
    /**
     * NuPay payment URL
     */
    'paymentUrl': string;
}
/**
 * PIX payment data and QR code information
 */
export interface OrderPIXInfo {
    /**
     * PIX copy and paste code
     */
    'copyAndPasteCode': string;
    /**
     * PIX QR Code image URL
     */
    'qrCodeUrl': string;
    /**
     * PIX E2E ID
     */
    'endToEndId': string | null;
}
/**
 * @type OrderPaymentData
 * Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
 */
export type OrderPaymentData = { paymentMethod: 'ApplePay' } & ApplePay | { paymentMethod: 'BankSlip' } & BankSlipPayment | { paymentMethod: 'CreditCard' } & CreditCardPayment | { paymentMethod: 'Draft' } & DraftPayment | { paymentMethod: 'GooglePay' } & GooglePayPayment | { paymentMethod: 'NuPay' } & NuPayPayment | { paymentMethod: 'PicPay' } & PicPayPayment | { paymentMethod: 'Pix' } & PIXPayment;

/**
 * PicPay payment data
 */
export interface OrderPicPayInfo {
    /**
     * PicPay copy and paste code
     */
    'copyAndPasteCode': string;
    /**
     * PicPay QR Code image URL
     */
    'qrCodeUrl': string;
}
/**
 * Order routing data for payment processing
 */
export interface OrderRoutingData {
    /**
     * Integration ID for direct payment processing
     */
    'directIntegrationId'?: string;
}
export interface OrderSplitDataInner {
    /**
     * Merchant ID of the split recipient
     */
    'merchantId': string;
    /**
     * Amount to be split to the recipient
     */
    'amount': number;
    'receiverType': ReceiverType;
}


/**
 * Specific data for PIX payment
 */
export interface PIXPayment {
    'paymentMethod': string;
    /**
     * PIX expiration time in seconds
     */
    'expirationInSeconds'?: number;
}

export const PaymentMethod = {
    Pix: 'Pix',
    CreditCard: 'CreditCard',
    DebitCard: 'DebitCard',
    BankSlip: 'BankSlip',
    Crypto: 'Crypto',
    ApplePay: 'ApplePay',
    NuPay: 'NuPay',
    PicPay: 'PicPay',
    AmazonPay: 'AmazonPay',
    SepaDebit: 'SepaDebit',
    GooglePay: 'GooglePay',
    Draft: 'Draft'
} as const;

export type PaymentMethod = typeof PaymentMethod[keyof typeof PaymentMethod];



export const Periodicity = {
    Months: 'Months',
    Days: 'Days',
    Weeks: 'Weeks',
    Years: 'Years'
} as const;

export type Periodicity = typeof Periodicity[keyof typeof Periodicity];



export const PersonType = {
    Pf: 'Pf',
    Pj: 'Pj'
} as const;

export type PersonType = typeof PersonType[keyof typeof PersonType];


/**
 * Specific data for PicPay payment
 */
export interface PicPayPayment {
    'paymentMethod': string;
}

export const PixType = {
    Cnpj: 'Cnpj',
    Cpf: 'Cpf',
    Email: 'Email',
    Phone: 'Phone',
    Random: 'Random'
} as const;

export type PixType = typeof PixType[keyof typeof PixType];


export interface PostMerchantsByIdSubaccounts200Response {
    'subaccounts': Array<MerchantResponseSubaccountsInner>;
}

export const Reason = {
    DunningExhausted: 'DunningExhausted',
    RetryScheduled: 'RetryScheduled',
    Manual: 'Manual',
    CustomerRequest: 'CustomerRequest',
    PaymentFailure: 'PaymentFailure'
} as const;

export type Reason = typeof Reason[keyof typeof Reason];



export const ReceiverType = {
    Owner: 'Owner',
    Split: 'Split'
} as const;

export type ReceiverType = typeof ReceiverType[keyof typeof ReceiverType];



export const Status = {
    Authenticated: 'Authenticated',
    NotAuthenticated: 'NotAuthenticated',
    NeedChallenge: 'NeedChallenge',
    Generating: 'Generating',
    Pending: 'Pending',
    Completed: 'Completed',
    Failed: 'Failed',
    Canceled: 'Canceled',
    Refunding: 'Refunding',
    Refunded: 'Refunded',
    InDispute: 'InDispute',
    Chargeback: 'Chargeback',
    Transferring: 'Transferring',
    Creating: 'Creating',
    WaitingDocuments: 'WaitingDocuments',
    WaitingOnboarding: 'WaitingOnboarding',
    Analysing: 'Analysing',
    Refused: 'Refused',
    Approved: 'Approved',
    Active: 'Active',
    Inactive: 'Inactive',
    PastDue: 'PastDue',
    Processing: 'Processing',
    Skipped: 'Skipped'
} as const;

export type Status = typeof Status[keyof typeof Status];


/**
 * Customer data for this subscription
 */
export interface SubscriptionCustomer {
    /**
     * Unique customer identifier
     */
    'id': string;
    /**
     * Customer full name
     */
    'name': string;
    /**
     * Customer email
     */
    'email': string;
}
/**
 * List of billing cycles for the subscription
 */
export interface SubscriptionCycles {
    /**
     * Unique cycle identifier
     */
    'id': string;
    /**
     * Sequential cycle number
     */
    'cycleNumber': number;
    'status': Status;
    /**
     * Date and time when the cycle was scheduled (ISO 8601)
     */
    'scheduledAt': string;
    /**
     * Date and time when the cycle was processed (ISO 8601)
     */
    'processedAt': string | null;
    'order': SubscriptionCyclesOrder | null;
}


export interface SubscriptionCyclesOrder {
    /**
     * Order ID generated for this cycle
     */
    'id': string;
    /**
     * External order ID (provided by your integration)
     */
    'externalId': string | null;
    'status': Status;
    /**
     * Provider used to process the order
     */
    'externalIntegrationKey': string;
    /**
     * Order ID in the payment provider
     */
    'externalIntegrationId': string | null;
}


export interface SubscriptionList200Response {
    'subscriptions': Array<SubscriptionResponse>;
    'pagination': SubscriptionList200ResponsePagination;
}
export interface SubscriptionList200ResponsePagination {
    'totalItems': number;
    'currentPage': number;
    'pageSize': number;
    'totalPages': number;
    'limit': number;
    'offset': number;
}
/**
 * Response with all recurring subscription data
 */
export interface SubscriptionResponse {
    /**
     * Unique subscription identifier
     */
    'id': string;
    'status': Status;
    /**
     * External subscription ID (provided by the merchant)
     */
    'externalId': string | null;
    /**
     * Amount charged each cycle (in the specified currency)
     */
    'amount': number;
    /**
     * Billing currency (ISO 4217)
     */
    'currency': string;
    'periodicity': Periodicity;
    /**
     * Interval between charges (e.g. 2 = every 2 months)
     */
    'periodicityInterval': number;
    /**
     * Current cycle number
     */
    'currentCycle': number;
    /**
     * Maximum number of cycles (null = unlimited)
     */
    'maxCycles': number | null;
    /**
     * Number of failed billing attempts in the current cycle
     */
    'dunningAttempts': number;
    /**
     * Subscription start date and time (ISO 8601)
     */
    'startedAt': string;
    /**
     * Next charge date and time (ISO 8601)
     */
    'nextChargeAt': string;
    /**
     * Cancellation date and time (ISO 8601)
     */
    'canceledAt': string | null;
    'reason'?: Reason;
    /**
     * Additional metadata provided by the merchant
     */
    'metadata': object;
    /**
     * ID of the order that originated the subscription (first charge)
     */
    'originOrderId': string;
    'customer': SubscriptionCustomer;
    /**
     * List of billing cycles for the subscription
     */
    'cycles': Array<SubscriptionCycles>;
    /**
     * Subscription creation date and time (ISO 8601)
     */
    'createdAt': string;
    /**
     * Last update date and time (ISO 8601)
     */
    'updatedAt': string;
}


/**
 * Previously generated card token
 */
export interface TokenizedCardData {
    /**
     * First 6 digits of the credit card
     */
    'firstSixCardNumber'?: string;
    /**
     * Previously generated credit card token
     */
    'token': string;
}

export const Type = {
    Cpf: 'Cpf',
    Cnpj: 'Cnpj',
    Email: 'Email',
    Phone: 'Phone',
    Random: 'Random',
    internal: 'internal',
    external: 'external'
} as const;

export type Type = typeof Type[keyof typeof Type];


/**
 * Withdrawal or transfer request data
 */
export interface WithdrawCreateRequest {
    /**
     * Withdrawal amount in cents
     */
    'amount': number;
    /**
     * Withdrawal ID in your system
     */
    'externalId'?: string;
    'merchant'?: MerchantData;
    /**
     * ID do comerciante associado ao saque
     */
    'merchantId'?: string;
    'payoutAccount': WithdrawPayoutAccountData;
}
/**
 * Response after creating a withdrawal or transfer
 */
export interface WithdrawCreateResponse {
    /**
     * Unique withdrawal identifier
     */
    'id': string;
    /**
     * Withdrawal idempotency key
     */
    'idempotencyKey': string | null;
    /**
     * Withdrawal ID in your system
     */
    'externalId': string | null;
    /**
     * Provider used for the withdrawal
     */
    'externalIntegrationKey': string;
    /**
     * Withdrawal ID in the payment provider
     */
    'externalIntegrationId': string | null;
    /**
     * Cost fee applied to the withdrawal
     */
    'costFee': number;
    'status': Status;
    /**
     * Error code, if any
     */
    'errorCode': string | null;
    /**
     * Descriptive error message, if any
     */
    'errorMessage': string | null;
    'payedAt': WithdrawCreateResponsePayedAt | null;
    'payoutAccount': WithdrawCreateResponsePayoutAccount;
}


/**
 * Date and time when the withdrawal was paid (ISO 8601 format)
 */
export interface WithdrawCreateResponsePayedAt {
}
export interface WithdrawCreateResponsePayoutAccount {
    /**
     * Unique payment account identifier
     */
    'id': string;
}
/**
 * Bank account information for withdrawal
 */
export interface WithdrawPayoutAccountData {
    /**
     * Account holder document (CPF or CNPJ)
     */
    'ownerDocument': string;
    /**
     * Account holder name
     */
    'ownerName': string;
    /**
     * PIX key for withdrawal
     */
    'pixKey': string;
    'pixType': PixType;
}



/**
 * CardTokenizationApi - axios parameter creator
 */
export const CardTokenizationApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Tokenize credit cards for future charges.
         * @summary Tokenize Card
         * @param {CardTokenizationCreateRequest} cardTokenizationCreateRequest Data for creating a customer card with customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        cardTokenize: async (cardTokenizationCreateRequest: CardTokenizationCreateRequest, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'cardTokenizationCreateRequest' is not null or undefined
            assertParamExists('cardTokenize', 'cardTokenizationCreateRequest', cardTokenizationCreateRequest)
            const localVarPath = `/card-tokenization/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(cardTokenizationCreateRequest, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * CardTokenizationApi - functional programming interface
 */
export const CardTokenizationApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = CardTokenizationApiAxiosParamCreator(configuration)
    return {
        /**
         * Tokenize credit cards for future charges.
         * @summary Tokenize Card
         * @param {CardTokenizationCreateRequest} cardTokenizationCreateRequest Data for creating a customer card with customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async cardTokenize(cardTokenizationCreateRequest: CardTokenizationCreateRequest, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CardTokenizationCreateResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.cardTokenize(cardTokenizationCreateRequest, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['CardTokenizationApi.cardTokenize']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * CardTokenizationApi - factory interface
 */
export const CardTokenizationApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = CardTokenizationApiFp(configuration)
    return {
        /**
         * Tokenize credit cards for future charges.
         * @summary Tokenize Card
         * @param {CardTokenizationCreateRequest} cardTokenizationCreateRequest Data for creating a customer card with customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        cardTokenize(cardTokenizationCreateRequest: CardTokenizationCreateRequest, options?: RawAxiosRequestConfig): AxiosPromise<CardTokenizationCreateResponse> {
            return localVarFp.cardTokenize(cardTokenizationCreateRequest, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * CardTokenizationApi - object-oriented interface
 */
export class CardTokenizationApi extends BaseAPI {
    /**
     * Tokenize credit cards for future charges.
     * @summary Tokenize Card
     * @param {CardTokenizationCreateRequest} cardTokenizationCreateRequest Data for creating a customer card with customer information
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public cardTokenize(cardTokenizationCreateRequest: CardTokenizationCreateRequest, options?: RawAxiosRequestConfig) {
        return CardTokenizationApiFp(this.configuration).cardTokenize(cardTokenizationCreateRequest, options).then((request) => request(this.axios, this.basePath));
    }
}



/**
 * CustomerApi - axios parameter creator
 */
export const CustomerApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Create a new customer by providing the required data in the request body.
         * @summary Create New Customer
         * @param {CustomerCreateRequest} customerCreateRequest Schema for creating a new customer
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerCreate: async (customerCreateRequest: CustomerCreateRequest, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'customerCreateRequest' is not null or undefined
            assertParamExists('customerCreate', 'customerCreateRequest', customerCreateRequest)
            const localVarPath = `/customers/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(customerCreateRequest, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve a list of all customers associated with the organization, with support for filters and pagination.
         * @summary Get All Customers
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerListCustom: async (page: number, pageSize: number, email?: string, name?: string, endDate?: string, startDate?: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('customerListCustom', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('customerListCustom', 'pageSize', pageSize)
            const localVarPath = `/customers/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (email !== undefined) {
                localVarQueryParameter['email'] = email;
            }

            if (name !== undefined) {
                localVarQueryParameter['name'] = name;
            }

            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString() :
                    endDate;
            }

            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString() :
                    startDate;
            }

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve the complete details of a specific customer using their unique ID.
         * @summary Get Customer By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerRead: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('customerRead', 'id', id)
            const localVarPath = `/customers/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Update the information of an existing customer by providing the new data in the request body.
         * @summary Update Customer Data
         * @param {string} id 
         * @param {CustomerUpdateRequest} customerUpdateRequest Schema for updating customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerUpdate: async (id: string, customerUpdateRequest: CustomerUpdateRequest, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('customerUpdate', 'id', id)
            // verify required parameter 'customerUpdateRequest' is not null or undefined
            assertParamExists('customerUpdate', 'customerUpdateRequest', customerUpdateRequest)
            const localVarPath = `/customers/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'PATCH', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(customerUpdateRequest, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * CustomerApi - functional programming interface
 */
export const CustomerApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = CustomerApiAxiosParamCreator(configuration)
    return {
        /**
         * Create a new customer by providing the required data in the request body.
         * @summary Create New Customer
         * @param {CustomerCreateRequest} customerCreateRequest Schema for creating a new customer
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async customerCreate(customerCreateRequest: CustomerCreateRequest, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CustomerReadResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.customerCreate(customerCreateRequest, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['CustomerApi.customerCreate']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve a list of all customers associated with the organization, with support for filters and pagination.
         * @summary Get All Customers
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async customerListCustom(page: number, pageSize: number, email?: string, name?: string, endDate?: string, startDate?: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CustomerListResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.customerListCustom(page, pageSize, email, name, endDate, startDate, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['CustomerApi.customerListCustom']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve the complete details of a specific customer using their unique ID.
         * @summary Get Customer By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async customerRead(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CustomerReadResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.customerRead(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['CustomerApi.customerRead']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Update the information of an existing customer by providing the new data in the request body.
         * @summary Update Customer Data
         * @param {string} id 
         * @param {CustomerUpdateRequest} customerUpdateRequest Schema for updating customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async customerUpdate(id: string, customerUpdateRequest: CustomerUpdateRequest, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<CustomerReadResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.customerUpdate(id, customerUpdateRequest, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['CustomerApi.customerUpdate']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * CustomerApi - factory interface
 */
export const CustomerApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = CustomerApiFp(configuration)
    return {
        /**
         * Create a new customer by providing the required data in the request body.
         * @summary Create New Customer
         * @param {CustomerCreateRequest} customerCreateRequest Schema for creating a new customer
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerCreate(customerCreateRequest: CustomerCreateRequest, options?: RawAxiosRequestConfig): AxiosPromise<CustomerReadResponse> {
            return localVarFp.customerCreate(customerCreateRequest, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve a list of all customers associated with the organization, with support for filters and pagination.
         * @summary Get All Customers
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerListCustom(page: number, pageSize: number, email?: string, name?: string, endDate?: string, startDate?: string, options?: RawAxiosRequestConfig): AxiosPromise<CustomerListResponse> {
            return localVarFp.customerListCustom(page, pageSize, email, name, endDate, startDate, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve the complete details of a specific customer using their unique ID.
         * @summary Get Customer By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerRead(id: string, options?: RawAxiosRequestConfig): AxiosPromise<CustomerReadResponse> {
            return localVarFp.customerRead(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Update the information of an existing customer by providing the new data in the request body.
         * @summary Update Customer Data
         * @param {string} id 
         * @param {CustomerUpdateRequest} customerUpdateRequest Schema for updating customer information
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        customerUpdate(id: string, customerUpdateRequest: CustomerUpdateRequest, options?: RawAxiosRequestConfig): AxiosPromise<CustomerReadResponse> {
            return localVarFp.customerUpdate(id, customerUpdateRequest, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * CustomerApi - object-oriented interface
 */
export class CustomerApi extends BaseAPI {
    /**
     * Create a new customer by providing the required data in the request body.
     * @summary Create New Customer
     * @param {CustomerCreateRequest} customerCreateRequest Schema for creating a new customer
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public customerCreate(customerCreateRequest: CustomerCreateRequest, options?: RawAxiosRequestConfig) {
        return CustomerApiFp(this.configuration).customerCreate(customerCreateRequest, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve a list of all customers associated with the organization, with support for filters and pagination.
     * @summary Get All Customers
     * @param {number} page 
     * @param {number} pageSize 
     * @param {string} [email] 
     * @param {string} [name] 
     * @param {string} [endDate] 
     * @param {string} [startDate] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public customerListCustom(page: number, pageSize: number, email?: string, name?: string, endDate?: string, startDate?: string, options?: RawAxiosRequestConfig) {
        return CustomerApiFp(this.configuration).customerListCustom(page, pageSize, email, name, endDate, startDate, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve the complete details of a specific customer using their unique ID.
     * @summary Get Customer By ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public customerRead(id: string, options?: RawAxiosRequestConfig) {
        return CustomerApiFp(this.configuration).customerRead(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Update the information of an existing customer by providing the new data in the request body.
     * @summary Update Customer Data
     * @param {string} id 
     * @param {CustomerUpdateRequest} customerUpdateRequest Schema for updating customer information
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public customerUpdate(id: string, customerUpdateRequest: CustomerUpdateRequest, options?: RawAxiosRequestConfig) {
        return CustomerApiFp(this.configuration).customerUpdate(id, customerUpdateRequest, options).then((request) => request(this.axios, this.basePath));
    }
}



/**
 * MerchantApi - axios parameter creator
 */
export const MerchantApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Endpoint for retrieving all merchants of the organization with optional filters for email, status, name, and document.
         * @summary List Merchants
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [document] 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {GetMerchantsStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchants: async (page: number, pageSize: number, document?: string, email?: string, name?: string, status?: GetMerchantsStatusEnum, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('getMerchants', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('getMerchants', 'pageSize', pageSize)
            const localVarPath = `/merchants/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }

            if (document !== undefined) {
                localVarQueryParameter['document'] = document;
            }

            if (email !== undefined) {
                localVarQueryParameter['email'] = email;
            }

            if (name !== undefined) {
                localVarQueryParameter['name'] = name;
            }

            if (status !== undefined) {
                localVarQueryParameter['status'] = status;
            }


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Endpoint for fetching a merchant by ID, returning all related data.
         * @summary Get Merchant By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchantsById: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('getMerchantsById', 'id', id)
            const localVarPath = `/merchants/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns all documents uploaded for a specific merchant.
         * @summary List Merchant Documents
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchantsByIdDocuments: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('getMerchantsByIdDocuments', 'id', id)
            const localVarPath = `/merchants/{id}/documents`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Endpoint for full creation of a new merchant.
         * @summary Create Merchant
         * @param {Merchant} merchant Model for merchant creation with all required data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchants: async (merchant: Merchant, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'merchant' is not null or undefined
            assertParamExists('postMerchants', 'merchant', merchant)
            const localVarPath = `/merchants/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(merchant, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Uploads a document for the merchant.
         * @summary Upload Merchant Document
         * @param {string} id 
         * @param {PostMerchantsByIdDocumentsByTypeTypeEnum} type 
         * @param {File} file 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdDocumentsByType: async (id: string, type: PostMerchantsByIdDocumentsByTypeTypeEnum, file: File, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('postMerchantsByIdDocumentsByType', 'id', id)
            // verify required parameter 'type' is not null or undefined
            assertParamExists('postMerchantsByIdDocumentsByType', 'type', type)
            // verify required parameter 'file' is not null or undefined
            assertParamExists('postMerchantsByIdDocumentsByType', 'file', file)
            const localVarPath = `/merchants/{id}/documents/{type}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)))
                .replace(`{${"type"}}`, encodeURIComponent(String(type)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;
            const localVarFormParams = new ((configuration && configuration.formDataCtor) || FormData)();

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            if (file !== undefined) { 
                localVarFormParams.append('file', file as any);
            }
            localVarHeaderParameter['Content-Type'] = 'multipart/form-data';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = localVarFormParams;

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Endpoint to configure the flows of a merchant, such as order creation, confirmations and refunds.
         * @summary Configure Merchant Flows
         * @param {string} id 
         * @param {MerchantFlow} merchantFlow Schema for configuring a merchant flow
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdFlows: async (id: string, merchantFlow: MerchantFlow, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('postMerchantsByIdFlows', 'id', id)
            // verify required parameter 'merchantFlow' is not null or undefined
            assertParamExists('postMerchantsByIdFlows', 'merchantFlow', merchantFlow)
            const localVarPath = `/merchants/{id}/flows`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(merchantFlow, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * When subaccounts are rejected, they will be recreated when calling this endpoint.
         * @summary Update Merchant Subaccounts
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdSubaccounts: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('postMerchantsByIdSubaccounts', 'id', id)
            const localVarPath = `/merchants/{id}/subaccounts`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * MerchantApi - functional programming interface
 */
export const MerchantApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = MerchantApiAxiosParamCreator(configuration)
    return {
        /**
         * Endpoint for retrieving all merchants of the organization with optional filters for email, status, name, and document.
         * @summary List Merchants
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [document] 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {GetMerchantsStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getMerchants(page: number, pageSize: number, document?: string, email?: string, name?: string, status?: GetMerchantsStatusEnum, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getMerchants(page, pageSize, document, email, name, status, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.getMerchants']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Endpoint for fetching a merchant by ID, returning all related data.
         * @summary Get Merchant By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getMerchantsById(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<MerchantResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getMerchantsById(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.getMerchantsById']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Returns all documents uploaded for a specific merchant.
         * @summary List Merchant Documents
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async getMerchantsByIdDocuments(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.getMerchantsByIdDocuments(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.getMerchantsByIdDocuments']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Endpoint for full creation of a new merchant.
         * @summary Create Merchant
         * @param {Merchant} merchant Model for merchant creation with all required data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async postMerchants(merchant: Merchant, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<MerchantResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.postMerchants(merchant, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.postMerchants']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Uploads a document for the merchant.
         * @summary Upload Merchant Document
         * @param {string} id 
         * @param {PostMerchantsByIdDocumentsByTypeTypeEnum} type 
         * @param {File} file 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async postMerchantsByIdDocumentsByType(id: string, type: PostMerchantsByIdDocumentsByTypeTypeEnum, file: File, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.postMerchantsByIdDocumentsByType(id, type, file, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.postMerchantsByIdDocumentsByType']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Endpoint to configure the flows of a merchant, such as order creation, confirmations and refunds.
         * @summary Configure Merchant Flows
         * @param {string} id 
         * @param {MerchantFlow} merchantFlow Schema for configuring a merchant flow
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async postMerchantsByIdFlows(id: string, merchantFlow: MerchantFlow, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.postMerchantsByIdFlows(id, merchantFlow, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.postMerchantsByIdFlows']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * When subaccounts are rejected, they will be recreated when calling this endpoint.
         * @summary Update Merchant Subaccounts
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async postMerchantsByIdSubaccounts(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<PostMerchantsByIdSubaccounts200Response>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.postMerchantsByIdSubaccounts(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['MerchantApi.postMerchantsByIdSubaccounts']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * MerchantApi - factory interface
 */
export const MerchantApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = MerchantApiFp(configuration)
    return {
        /**
         * Endpoint for retrieving all merchants of the organization with optional filters for email, status, name, and document.
         * @summary List Merchants
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [document] 
         * @param {string} [email] 
         * @param {string} [name] 
         * @param {GetMerchantsStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchants(page: number, pageSize: number, document?: string, email?: string, name?: string, status?: GetMerchantsStatusEnum, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.getMerchants(page, pageSize, document, email, name, status, options).then((request) => request(axios, basePath));
        },
        /**
         * Endpoint for fetching a merchant by ID, returning all related data.
         * @summary Get Merchant By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchantsById(id: string, options?: RawAxiosRequestConfig): AxiosPromise<MerchantResponse> {
            return localVarFp.getMerchantsById(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns all documents uploaded for a specific merchant.
         * @summary List Merchant Documents
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMerchantsByIdDocuments(id: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.getMerchantsByIdDocuments(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Endpoint for full creation of a new merchant.
         * @summary Create Merchant
         * @param {Merchant} merchant Model for merchant creation with all required data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchants(merchant: Merchant, options?: RawAxiosRequestConfig): AxiosPromise<MerchantResponse> {
            return localVarFp.postMerchants(merchant, options).then((request) => request(axios, basePath));
        },
        /**
         * Uploads a document for the merchant.
         * @summary Upload Merchant Document
         * @param {string} id 
         * @param {PostMerchantsByIdDocumentsByTypeTypeEnum} type 
         * @param {File} file 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdDocumentsByType(id: string, type: PostMerchantsByIdDocumentsByTypeTypeEnum, file: File, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.postMerchantsByIdDocumentsByType(id, type, file, options).then((request) => request(axios, basePath));
        },
        /**
         * Endpoint to configure the flows of a merchant, such as order creation, confirmations and refunds.
         * @summary Configure Merchant Flows
         * @param {string} id 
         * @param {MerchantFlow} merchantFlow Schema for configuring a merchant flow
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdFlows(id: string, merchantFlow: MerchantFlow, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.postMerchantsByIdFlows(id, merchantFlow, options).then((request) => request(axios, basePath));
        },
        /**
         * When subaccounts are rejected, they will be recreated when calling this endpoint.
         * @summary Update Merchant Subaccounts
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        postMerchantsByIdSubaccounts(id: string, options?: RawAxiosRequestConfig): AxiosPromise<PostMerchantsByIdSubaccounts200Response> {
            return localVarFp.postMerchantsByIdSubaccounts(id, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * MerchantApi - object-oriented interface
 */
export class MerchantApi extends BaseAPI {
    /**
     * Endpoint for retrieving all merchants of the organization with optional filters for email, status, name, and document.
     * @summary List Merchants
     * @param {number} page 
     * @param {number} pageSize 
     * @param {string} [document] 
     * @param {string} [email] 
     * @param {string} [name] 
     * @param {GetMerchantsStatusEnum} [status] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public getMerchants(page: number, pageSize: number, document?: string, email?: string, name?: string, status?: GetMerchantsStatusEnum, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).getMerchants(page, pageSize, document, email, name, status, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Endpoint for fetching a merchant by ID, returning all related data.
     * @summary Get Merchant By ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public getMerchantsById(id: string, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).getMerchantsById(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns all documents uploaded for a specific merchant.
     * @summary List Merchant Documents
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public getMerchantsByIdDocuments(id: string, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).getMerchantsByIdDocuments(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Endpoint for full creation of a new merchant.
     * @summary Create Merchant
     * @param {Merchant} merchant Model for merchant creation with all required data
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public postMerchants(merchant: Merchant, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).postMerchants(merchant, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Uploads a document for the merchant.
     * @summary Upload Merchant Document
     * @param {string} id 
     * @param {PostMerchantsByIdDocumentsByTypeTypeEnum} type 
     * @param {File} file 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public postMerchantsByIdDocumentsByType(id: string, type: PostMerchantsByIdDocumentsByTypeTypeEnum, file: File, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).postMerchantsByIdDocumentsByType(id, type, file, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Endpoint to configure the flows of a merchant, such as order creation, confirmations and refunds.
     * @summary Configure Merchant Flows
     * @param {string} id 
     * @param {MerchantFlow} merchantFlow Schema for configuring a merchant flow
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public postMerchantsByIdFlows(id: string, merchantFlow: MerchantFlow, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).postMerchantsByIdFlows(id, merchantFlow, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * When subaccounts are rejected, they will be recreated when calling this endpoint.
     * @summary Update Merchant Subaccounts
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public postMerchantsByIdSubaccounts(id: string, options?: RawAxiosRequestConfig) {
        return MerchantApiFp(this.configuration).postMerchantsByIdSubaccounts(id, options).then((request) => request(this.axios, this.basePath));
    }
}

export const GetMerchantsStatusEnum = {
    Creating: 'Creating',
    WaitingDocuments: 'WaitingDocuments',
    WaitingOnboarding: 'WaitingOnboarding',
    Analysing: 'Analysing',
    Refused: 'Refused',
    Failed: 'Failed',
    Approved: 'Approved'
} as const;
export type GetMerchantsStatusEnum = typeof GetMerchantsStatusEnum[keyof typeof GetMerchantsStatusEnum];
export const PostMerchantsByIdDocumentsByTypeTypeEnum = {
    SelfieId: 'selfie-id',
    AddressIndicator: 'address-indicator',
    CnpjCard: 'cnpj-card',
    SocialContract: 'social-contract',
    IdentificationFront: 'identification-front',
    IdentificationBack: 'identification-back',
    ActivityProof: 'activity-proof'
} as const;
export type PostMerchantsByIdDocumentsByTypeTypeEnum = typeof PostMerchantsByIdDocumentsByTypeTypeEnum[keyof typeof PostMerchantsByIdDocumentsByTypeTypeEnum];


/**
 * OrderApi - axios parameter creator
 */
export const OrderApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Confirms a Draft order or an order with a pending 3DS challenge. For Draft orders, sets the payment method and processes the charges. For orders awaiting 3DS challenge completion, retrieves the updated status after the client-side challenge flow. Accepts Basic auth (backend SDK) or intentToken query param (iframe).
         * @summary Confirm Order
         * @param {string} id 
         * @param {OrderPaymentData} orderPaymentData Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderConfirm: async (id: string, orderPaymentData: OrderPaymentData, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('orderConfirm', 'id', id)
            // verify required parameter 'orderPaymentData' is not null or undefined
            assertParamExists('orderConfirm', 'orderPaymentData', orderPaymentData)
            const localVarPath = `/orders/{id}/confirm`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(orderPaymentData, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Create a new order for payment using the provided data.
         * @summary Create Order
         * @param {OrderCreateRequest} orderCreateRequest Order data for payment processing
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderCreate: async (orderCreateRequest: OrderCreateRequest, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'orderCreateRequest' is not null or undefined
            assertParamExists('orderCreate', 'orderCreateRequest', orderCreateRequest)
            const localVarPath = `/orders/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(orderCreateRequest, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
         * @summary List Orders
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {OrderListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderList: async (page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: OrderListStatusEnum, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('orderList', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('orderList', 'pageSize', pageSize)
            const localVarPath = `/orders/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString() :
                    endDate;
            }

            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString() :
                    startDate;
            }

            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }

            if (id !== undefined) {
                localVarQueryParameter['id'] = id;
            }

            if (status !== undefined) {
                localVarQueryParameter['status'] = status;
            }


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve the complete data of an order by our ID.
         * @summary Get Order By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderRead: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('orderRead', 'id', id)
            const localVarPath = `/orders/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Initiate a refund for the order specified by ID.
         * @summary Refund Order
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderRefund: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('orderRefund', 'id', id)
            const localVarPath = `/orders/{id}/refund`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve basic order data by external ID provided
         * @summary Get Order By External ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderSimpleRead: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('orderSimpleRead', 'id', id)
            const localVarPath = `/orders/{id}/simple`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Poll the current status of an order. Use after 3DS challenge completion to retrieve the final payment result.
         * @summary Get Order Status
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderStatus: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('orderStatus', 'id', id)
            const localVarPath = `/orders/{id}/status`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * OrderApi - functional programming interface
 */
export const OrderApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = OrderApiAxiosParamCreator(configuration)
    return {
        /**
         * Confirms a Draft order or an order with a pending 3DS challenge. For Draft orders, sets the payment method and processes the charges. For orders awaiting 3DS challenge completion, retrieves the updated status after the client-side challenge flow. Accepts Basic auth (backend SDK) or intentToken query param (iframe).
         * @summary Confirm Order
         * @param {string} id 
         * @param {OrderPaymentData} orderPaymentData Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderConfirm(id: string, orderPaymentData: OrderPaymentData, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<OrderConfirmResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderConfirm(id, orderPaymentData, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderConfirm']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Create a new order for payment using the provided data.
         * @summary Create Order
         * @param {OrderCreateRequest} orderCreateRequest Order data for payment processing
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderCreate(orderCreateRequest: OrderCreateRequest, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<OrderCreateResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderCreate(orderCreateRequest, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderCreate']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
         * @summary List Orders
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {OrderListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: OrderListStatusEnum, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderList(page, pageSize, endDate, startDate, id, status, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderList']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve the complete data of an order by our ID.
         * @summary Get Order By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderRead(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderRead(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderRead']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Initiate a refund for the order specified by ID.
         * @summary Refund Order
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderRefund(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderRefund(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderRefund']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve basic order data by external ID provided
         * @summary Get Order By External ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderSimpleRead(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderSimpleRead(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderSimpleRead']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Poll the current status of an order. Use after 3DS challenge completion to retrieve the final payment result.
         * @summary Get Order Status
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async orderStatus(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<OrderConfirmResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.orderStatus(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['OrderApi.orderStatus']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * OrderApi - factory interface
 */
export const OrderApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = OrderApiFp(configuration)
    return {
        /**
         * Confirms a Draft order or an order with a pending 3DS challenge. For Draft orders, sets the payment method and processes the charges. For orders awaiting 3DS challenge completion, retrieves the updated status after the client-side challenge flow. Accepts Basic auth (backend SDK) or intentToken query param (iframe).
         * @summary Confirm Order
         * @param {string} id 
         * @param {OrderPaymentData} orderPaymentData Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderConfirm(id: string, orderPaymentData: OrderPaymentData, options?: RawAxiosRequestConfig): AxiosPromise<OrderConfirmResponse> {
            return localVarFp.orderConfirm(id, orderPaymentData, options).then((request) => request(axios, basePath));
        },
        /**
         * Create a new order for payment using the provided data.
         * @summary Create Order
         * @param {OrderCreateRequest} orderCreateRequest Order data for payment processing
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderCreate(orderCreateRequest: OrderCreateRequest, options?: RawAxiosRequestConfig): AxiosPromise<OrderCreateResponse> {
            return localVarFp.orderCreate(orderCreateRequest, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
         * @summary List Orders
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {OrderListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: OrderListStatusEnum, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.orderList(page, pageSize, endDate, startDate, id, status, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve the complete data of an order by our ID.
         * @summary Get Order By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderRead(id: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.orderRead(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Initiate a refund for the order specified by ID.
         * @summary Refund Order
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderRefund(id: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.orderRefund(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve basic order data by external ID provided
         * @summary Get Order By External ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderSimpleRead(id: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.orderSimpleRead(id, options).then((request) => request(axios, basePath));
        },
        /**
         * Poll the current status of an order. Use after 3DS challenge completion to retrieve the final payment result.
         * @summary Get Order Status
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        orderStatus(id: string, options?: RawAxiosRequestConfig): AxiosPromise<OrderConfirmResponse> {
            return localVarFp.orderStatus(id, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * OrderApi - object-oriented interface
 */
export class OrderApi extends BaseAPI {
    /**
     * Confirms a Draft order or an order with a pending 3DS challenge. For Draft orders, sets the payment method and processes the charges. For orders awaiting 3DS challenge completion, retrieves the updated status after the client-side challenge flow. Accepts Basic auth (backend SDK) or intentToken query param (iframe).
     * @summary Confirm Order
     * @param {string} id 
     * @param {OrderPaymentData} orderPaymentData Payment data for the order (Pix, Credit Card, Bank Slip, NuPay, etc...)
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderConfirm(id: string, orderPaymentData: OrderPaymentData, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderConfirm(id, orderPaymentData, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Create a new order for payment using the provided data.
     * @summary Create Order
     * @param {OrderCreateRequest} orderCreateRequest Order data for payment processing
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderCreate(orderCreateRequest: OrderCreateRequest, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderCreate(orderCreateRequest, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve a list of orders. Use date filter and pagination parameters to refine results as needed.
     * @summary List Orders
     * @param {number} page 
     * @param {number} pageSize 
     * @param {string} [endDate] 
     * @param {string} [startDate] 
     * @param {string} [id] 
     * @param {OrderListStatusEnum} [status] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: OrderListStatusEnum, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderList(page, pageSize, endDate, startDate, id, status, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve the complete data of an order by our ID.
     * @summary Get Order By ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderRead(id: string, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderRead(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Initiate a refund for the order specified by ID.
     * @summary Refund Order
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderRefund(id: string, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderRefund(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve basic order data by external ID provided
     * @summary Get Order By External ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderSimpleRead(id: string, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderSimpleRead(id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Poll the current status of an order. Use after 3DS challenge completion to retrieve the final payment result.
     * @summary Get Order Status
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public orderStatus(id: string, options?: RawAxiosRequestConfig) {
        return OrderApiFp(this.configuration).orderStatus(id, options).then((request) => request(this.axios, this.basePath));
    }
}

export const OrderListStatusEnum = {
    Generating: 'Generating',
    Pending: 'Pending',
    Completed: 'Completed',
    Failed: 'Failed',
    Canceled: 'Canceled',
    Refunding: 'Refunding',
    Refunded: 'Refunded',
    InDispute: 'InDispute',
    Chargeback: 'Chargeback'
} as const;
export type OrderListStatusEnum = typeof OrderListStatusEnum[keyof typeof OrderListStatusEnum];


/**
 * SubscriptionApi - axios parameter creator
 */
export const SubscriptionApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Cancel an active subscription.
         * @summary Cancel Subscription
         * @param {string} id 
         * @param {SubscriptionCancelReasonEnum} [reason] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionCancel: async (id: string, reason?: SubscriptionCancelReasonEnum, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('subscriptionCancel', 'id', id)
            const localVarPath = `/subscriptions/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'DELETE', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (reason !== undefined) {
                localVarQueryParameter['reason'] = reason;
            }

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Create a new recurring subscription using a saved card token.
         * @summary Create Subscription
         * @param {CreateSubscription} createSubscription Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionCreate: async (createSubscription: CreateSubscription, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'createSubscription' is not null or undefined
            assertParamExists('subscriptionCreate', 'createSubscription', createSubscription)
            const localVarPath = `/subscriptions/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(createSubscription, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve a list of subscriptions for the organization.
         * @summary List Subscriptions
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {SubscriptionListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionList: async (page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: SubscriptionListStatusEnum, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('subscriptionList', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('subscriptionList', 'pageSize', pageSize)
            const localVarPath = `/subscriptions/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString() :
                    endDate;
            }

            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString() :
                    startDate;
            }

            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }

            if (id !== undefined) {
                localVarQueryParameter['id'] = id;
            }

            if (status !== undefined) {
                localVarQueryParameter['status'] = status;
            }

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve the complete data of a subscription by its ID.
         * @summary Get Subscription By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionRead: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('subscriptionRead', 'id', id)
            const localVarPath = `/subscriptions/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * SubscriptionApi - functional programming interface
 */
export const SubscriptionApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = SubscriptionApiAxiosParamCreator(configuration)
    return {
        /**
         * Cancel an active subscription.
         * @summary Cancel Subscription
         * @param {string} id 
         * @param {SubscriptionCancelReasonEnum} [reason] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async subscriptionCancel(id: string, reason?: SubscriptionCancelReasonEnum, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<SubscriptionResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.subscriptionCancel(id, reason, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['SubscriptionApi.subscriptionCancel']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Create a new recurring subscription using a saved card token.
         * @summary Create Subscription
         * @param {CreateSubscription} createSubscription Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async subscriptionCreate(createSubscription: CreateSubscription, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<SubscriptionResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.subscriptionCreate(createSubscription, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['SubscriptionApi.subscriptionCreate']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve a list of subscriptions for the organization.
         * @summary List Subscriptions
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {SubscriptionListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async subscriptionList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: SubscriptionListStatusEnum, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<SubscriptionList200Response>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.subscriptionList(page, pageSize, endDate, startDate, id, status, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['SubscriptionApi.subscriptionList']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Retrieve the complete data of a subscription by its ID.
         * @summary Get Subscription By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async subscriptionRead(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<SubscriptionResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.subscriptionRead(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['SubscriptionApi.subscriptionRead']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * SubscriptionApi - factory interface
 */
export const SubscriptionApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = SubscriptionApiFp(configuration)
    return {
        /**
         * Cancel an active subscription.
         * @summary Cancel Subscription
         * @param {string} id 
         * @param {SubscriptionCancelReasonEnum} [reason] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionCancel(id: string, reason?: SubscriptionCancelReasonEnum, options?: RawAxiosRequestConfig): AxiosPromise<SubscriptionResponse> {
            return localVarFp.subscriptionCancel(id, reason, options).then((request) => request(axios, basePath));
        },
        /**
         * Create a new recurring subscription using a saved card token.
         * @summary Create Subscription
         * @param {CreateSubscription} createSubscription Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionCreate(createSubscription: CreateSubscription, options?: RawAxiosRequestConfig): AxiosPromise<SubscriptionResponse> {
            return localVarFp.subscriptionCreate(createSubscription, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve a list of subscriptions for the organization.
         * @summary List Subscriptions
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {SubscriptionListStatusEnum} [status] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: SubscriptionListStatusEnum, options?: RawAxiosRequestConfig): AxiosPromise<SubscriptionList200Response> {
            return localVarFp.subscriptionList(page, pageSize, endDate, startDate, id, status, options).then((request) => request(axios, basePath));
        },
        /**
         * Retrieve the complete data of a subscription by its ID.
         * @summary Get Subscription By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        subscriptionRead(id: string, options?: RawAxiosRequestConfig): AxiosPromise<SubscriptionResponse> {
            return localVarFp.subscriptionRead(id, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * SubscriptionApi - object-oriented interface
 */
export class SubscriptionApi extends BaseAPI {
    /**
     * Cancel an active subscription.
     * @summary Cancel Subscription
     * @param {string} id 
     * @param {SubscriptionCancelReasonEnum} [reason] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public subscriptionCancel(id: string, reason?: SubscriptionCancelReasonEnum, options?: RawAxiosRequestConfig) {
        return SubscriptionApiFp(this.configuration).subscriptionCancel(id, reason, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Create a new recurring subscription using a saved card token.
     * @summary Create Subscription
     * @param {CreateSubscription} createSubscription Input for creating a new recurring subscription. Uses the same format as an order with additional subscription control fields.
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public subscriptionCreate(createSubscription: CreateSubscription, options?: RawAxiosRequestConfig) {
        return SubscriptionApiFp(this.configuration).subscriptionCreate(createSubscription, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve a list of subscriptions for the organization.
     * @summary List Subscriptions
     * @param {number} page 
     * @param {number} pageSize 
     * @param {string} [endDate] 
     * @param {string} [startDate] 
     * @param {string} [id] 
     * @param {SubscriptionListStatusEnum} [status] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public subscriptionList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, status?: SubscriptionListStatusEnum, options?: RawAxiosRequestConfig) {
        return SubscriptionApiFp(this.configuration).subscriptionList(page, pageSize, endDate, startDate, id, status, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Retrieve the complete data of a subscription by its ID.
     * @summary Get Subscription By ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public subscriptionRead(id: string, options?: RawAxiosRequestConfig) {
        return SubscriptionApiFp(this.configuration).subscriptionRead(id, options).then((request) => request(this.axios, this.basePath));
    }
}

export const SubscriptionCancelReasonEnum = {
    DunningExhausted: 'DunningExhausted',
    RetryScheduled: 'RetryScheduled',
    Manual: 'Manual',
    CustomerRequest: 'CustomerRequest',
    PaymentFailure: 'PaymentFailure'
} as const;
export type SubscriptionCancelReasonEnum = typeof SubscriptionCancelReasonEnum[keyof typeof SubscriptionCancelReasonEnum];
export const SubscriptionListStatusEnum = {
    Active: 'Active',
    Inactive: 'Inactive',
    Canceled: 'Canceled',
    PastDue: 'PastDue',
    Completed: 'Completed'
} as const;
export type SubscriptionListStatusEnum = typeof SubscriptionListStatusEnum[keyof typeof SubscriptionListStatusEnum];


/**
 * WithdrawApi - axios parameter creator
 */
export const WithdrawApiAxiosParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Create a new withdrawal or transfer to the provided payment account.
         * @summary Create Withdrawal
         * @param {WithdrawCreateRequest} withdrawCreateRequest Withdrawal or transfer request data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawCreate: async (withdrawCreateRequest: WithdrawCreateRequest, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'withdrawCreateRequest' is not null or undefined
            assertParamExists('withdrawCreate', 'withdrawCreateRequest', withdrawCreateRequest)
            const localVarPath = `/withdraws/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'POST', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            localVarHeaderParameter['Content-Type'] = 'application/json';
            localVarHeaderParameter['Accept'] = 'application/json';

            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};
            localVarRequestOptions.data = serializeDataIfNeeded(withdrawCreateRequest, localVarRequestOptions, configuration)

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID).
         * @summary List Withdrawals
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawList: async (page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'page' is not null or undefined
            assertParamExists('withdrawList', 'page', page)
            // verify required parameter 'pageSize' is not null or undefined
            assertParamExists('withdrawList', 'pageSize', pageSize)
            const localVarPath = `/withdraws/`;
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)

            if (endDate !== undefined) {
                localVarQueryParameter['endDate'] = (endDate as any instanceof Date) ?
                    (endDate as any).toISOString() :
                    endDate;
            }

            if (startDate !== undefined) {
                localVarQueryParameter['startDate'] = (startDate as any instanceof Date) ?
                    (startDate as any).toISOString() :
                    startDate;
            }

            if (page !== undefined) {
                localVarQueryParameter['page'] = page;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['pageSize'] = pageSize;
            }

            if (id !== undefined) {
                localVarQueryParameter['id'] = id;
            }


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Returns the details of a specific withdrawal or transfer using its ID.
         * @summary Get Withdrawal By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawRead: async (id: string, options: RawAxiosRequestConfig = {}): Promise<RequestArgs> => {
            // verify required parameter 'id' is not null or undefined
            assertParamExists('withdrawRead', 'id', id)
            const localVarPath = `/withdraws/{id}`
                .replace(`{${"id"}}`, encodeURIComponent(String(id)));
            // use dummy base URL string because the URL constructor only accepts absolute URLs.
            const localVarUrlObj = new URL(localVarPath, DUMMY_BASE_URL);
            let baseOptions;
            if (configuration) {
                baseOptions = configuration.baseOptions;
            }

            const localVarRequestOptions = { method: 'GET', ...baseOptions, ...options};
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication basicAuth required
            // http basic authentication required
            setBasicAuthToObject(localVarRequestOptions, configuration)


            setSearchParams(localVarUrlObj, localVarQueryParameter);
            let headersFromBaseOptions = baseOptions && baseOptions.headers ? baseOptions.headers : {};
            localVarRequestOptions.headers = {...localVarHeaderParameter, ...headersFromBaseOptions, ...options.headers};

            return {
                url: toPathString(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * WithdrawApi - functional programming interface
 */
export const WithdrawApiFp = function(configuration?: Configuration) {
    const localVarAxiosParamCreator = WithdrawApiAxiosParamCreator(configuration)
    return {
        /**
         * Create a new withdrawal or transfer to the provided payment account.
         * @summary Create Withdrawal
         * @param {WithdrawCreateRequest} withdrawCreateRequest Withdrawal or transfer request data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async withdrawCreate(withdrawCreateRequest: WithdrawCreateRequest, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<WithdrawCreateResponse>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.withdrawCreate(withdrawCreateRequest, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['WithdrawApi.withdrawCreate']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID).
         * @summary List Withdrawals
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async withdrawList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.withdrawList(page, pageSize, endDate, startDate, id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['WithdrawApi.withdrawList']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
        /**
         * Returns the details of a specific withdrawal or transfer using its ID.
         * @summary Get Withdrawal By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        async withdrawRead(id: string, options?: RawAxiosRequestConfig): Promise<(axios?: AxiosInstance, basePath?: string) => AxiosPromise<void>> {
            const localVarAxiosArgs = await localVarAxiosParamCreator.withdrawRead(id, options);
            const localVarOperationServerIndex = configuration?.serverIndex ?? 0;
            const localVarOperationServerBasePath = operationServerMap['WithdrawApi.withdrawRead']?.[localVarOperationServerIndex]?.url;
            return (axios, basePath) => createRequestFunction(localVarAxiosArgs, globalAxios, BASE_PATH, configuration)(axios, localVarOperationServerBasePath || basePath);
        },
    }
};

/**
 * WithdrawApi - factory interface
 */
export const WithdrawApiFactory = function (configuration?: Configuration, basePath?: string, axios?: AxiosInstance) {
    const localVarFp = WithdrawApiFp(configuration)
    return {
        /**
         * Create a new withdrawal or transfer to the provided payment account.
         * @summary Create Withdrawal
         * @param {WithdrawCreateRequest} withdrawCreateRequest Withdrawal or transfer request data
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawCreate(withdrawCreateRequest: WithdrawCreateRequest, options?: RawAxiosRequestConfig): AxiosPromise<WithdrawCreateResponse> {
            return localVarFp.withdrawCreate(withdrawCreateRequest, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID).
         * @summary List Withdrawals
         * @param {number} page 
         * @param {number} pageSize 
         * @param {string} [endDate] 
         * @param {string} [startDate] 
         * @param {string} [id] 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.withdrawList(page, pageSize, endDate, startDate, id, options).then((request) => request(axios, basePath));
        },
        /**
         * Returns the details of a specific withdrawal or transfer using its ID.
         * @summary Get Withdrawal By ID
         * @param {string} id 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        withdrawRead(id: string, options?: RawAxiosRequestConfig): AxiosPromise<void> {
            return localVarFp.withdrawRead(id, options).then((request) => request(axios, basePath));
        },
    };
};

/**
 * WithdrawApi - object-oriented interface
 */
export class WithdrawApi extends BaseAPI {
    /**
     * Create a new withdrawal or transfer to the provided payment account.
     * @summary Create Withdrawal
     * @param {WithdrawCreateRequest} withdrawCreateRequest Withdrawal or transfer request data
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public withdrawCreate(withdrawCreateRequest: WithdrawCreateRequest, options?: RawAxiosRequestConfig) {
        return WithdrawApiFp(this.configuration).withdrawCreate(withdrawCreateRequest, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns a paginated list of withdrawals and transfers. Filter by creation date or search by ID (withdrawal ID, external ID, acquirer ID, or End2EndID).
     * @summary List Withdrawals
     * @param {number} page 
     * @param {number} pageSize 
     * @param {string} [endDate] 
     * @param {string} [startDate] 
     * @param {string} [id] 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public withdrawList(page: number, pageSize: number, endDate?: string, startDate?: string, id?: string, options?: RawAxiosRequestConfig) {
        return WithdrawApiFp(this.configuration).withdrawList(page, pageSize, endDate, startDate, id, options).then((request) => request(this.axios, this.basePath));
    }

    /**
     * Returns the details of a specific withdrawal or transfer using its ID.
     * @summary Get Withdrawal By ID
     * @param {string} id 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     */
    public withdrawRead(id: string, options?: RawAxiosRequestConfig) {
        return WithdrawApiFp(this.configuration).withdrawRead(id, options).then((request) => request(this.axios, this.basePath));
    }
}



