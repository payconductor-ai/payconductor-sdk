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

import type { Configuration } from "./configuration";
import type { RequestArgs } from "./base";
import type { AxiosInstance, AxiosResponse } from 'axios';
import { RequiredError } from "./base";

export const DUMMY_BASE_URL = 'https://example.com'

/**
 *
 * @throws {RequiredError}
 */
export const assertParamExists = function (functionName: string, paramName: string, paramValue: unknown) {
    if (paramValue === null || paramValue === undefined) {
        throw new RequiredError(paramName, `Required parameter ${paramName} was null or undefined when calling ${functionName}.`);
    }
}

export const setApiKeyToObject = async function (object: any, keyParamName: string, configuration?: Configuration) {
    if (configuration && configuration.apiKey) {
        const localVarApiKeyValue = typeof configuration.apiKey === 'function'
            ? await configuration.apiKey(keyParamName)
            : await configuration.apiKey;
        object[keyParamName] = localVarApiKeyValue;
    }
}

export const setBasicAuthToObject = function (object: any, configuration?: Configuration) {
    if (configuration && (configuration.username || configuration.password)) {
        object["auth"] = { username: configuration.username, password: configuration.password };
    }
}

export const setBearerAuthToObject = async function (object: any, configuration?: Configuration) {
    if (configuration && configuration.accessToken) {
        const accessToken = typeof configuration.accessToken === 'function'
            ? await configuration.accessToken()
            : await configuration.accessToken;
        object["Authorization"] = "Bearer " + accessToken;
    }
}

export const setOAuthToObject = async function (object: any, name: string, scopes: string[], configuration?: Configuration) {
    if (configuration && configuration.accessToken) {
        const localVarAccessTokenValue = typeof configuration.accessToken === 'function'
            ? await configuration.accessToken(name, scopes)
            : await configuration.accessToken;
        object["Authorization"] = "Bearer " + localVarAccessTokenValue;
    }
}


function setFlattenedQueryParams(urlSearchParams: URLSearchParams, parameter: any, key: string = ""): void {
    if (parameter == null) return;
    if (typeof parameter === "object") {
        if (Array.isArray(parameter) || parameter instanceof Set) {
            (parameter as any[]).forEach(item => setFlattenedQueryParams(urlSearchParams, item, key));
        }
        else {
            Object.keys(parameter).forEach(currentKey =>
                setFlattenedQueryParams(urlSearchParams, parameter[currentKey], `${key}${key !== '' ? '.' : ''}${currentKey}`)
            );
        }
    }
    else {
        if (urlSearchParams.has(key)) {
            urlSearchParams.append(key, parameter);
        }
        else {
            urlSearchParams.set(key, parameter);
        }
    }
}

export const setSearchParams = function (url: URL, ...objects: any[]) {
    const searchParams = new URLSearchParams(url.search);
    setFlattenedQueryParams(searchParams, objects);
    url.search = searchParams.toString();
}

/**
 * JSON serialization helper function which replaces instances of unserializable types with serializable ones.
 * This function will run for every key-value pair encountered by JSON.stringify while traversing an object.
 * Converting a set to a string will return an empty object, so an intermediate conversion to an array is required.
 */
// @ts-ignore
export const replaceWithSerializableTypeIfNeeded = function(key: string, value: any) {
    if (value instanceof Set) {
        return Array.from(value);
    } else {
        return value;
    }
}

export const serializeDataIfNeeded = function (value: any, requestOptions: any, configuration?: Configuration) {
    const nonString = typeof value !== 'string';
    const needsSerialization = nonString && configuration && configuration.isJsonMime
        ? configuration.isJsonMime(requestOptions.headers['Content-Type'])
        : nonString;
    return needsSerialization
        ? JSON.stringify(value !== undefined ? value : {}, replaceWithSerializableTypeIfNeeded)
        : (value || "");
}

export const toPathString = function (url: URL) {
    return url.pathname + url.search + url.hash
}

export const createRequestFunction = function (axiosArgs: RequestArgs, globalAxios: AxiosInstance, BASE_PATH: string, configuration?: Configuration) {
    return <T = unknown, R = AxiosResponse<T>>(axios: AxiosInstance = globalAxios, basePath: string = BASE_PATH) => {
        const axiosRequestArgs = {...axiosArgs.options, url: (axios.defaults.baseURL ? '' : configuration?.basePath ?? basePath) + axiosArgs.url};
        return axios.request<T, R>(axiosRequestArgs);
    };
}
