import {
  Configuration,
  CardTokenizationApi,
  type CreateCustomerCard,
  DocumentType,
} from 'payconductor-sdk';

const config = new Configuration({
  username: process.env.PAYCONDUCTOR_CLIENT_ID || 'your_client_id',
  password: process.env.PAYCONDUCTOR_CLIENT_SECRET || 'your_client_secret',
});

const cardTokenizationApi = new CardTokenizationApi(config);

export async function tokenizeCard() {
  console.log('=== Tokenizing Credit Card ===\n');

  const request: CreateCustomerCard = {
    card: {
      number: '4111111111111111',
      holderName: 'JOHN DOE',
      cvv: '123',
      expiration: {
        month: 12,
        year: 2028,
      },
    },
    saveCard: true,
    customer: {
      documentNumber: '12345678900',
      documentType: DocumentType.Cpf,
      email: 'john.doe@example.com',
      name: 'John Doe',
    },    
  };

  try {
    const response = await cardTokenizationApi.postCardTokenization(request);
    const data = response.data;

    console.log('Card tokenized successfully!');
    console.log('Token:', data.token);
    console.log('Customer ID:', data.customerId);

    return data;
  } catch (error: any) {
    console.error('Error tokenizing card:', error.response?.data || error.message);
    throw error;
  }
}

export async function tokenizeCardWithExistingCustomer(customerId: string) {
  console.log('=== Tokenizing Card for Existing Customer ===\n');

  const request: CreateCustomerCard = {
    card: {
      number: '5500000000000004',
      holderName: 'JOHN DOE',
      cvv: '456',
      expiration: {
        month: 6,
        year: 2027,
      },
    },
    saveCard: true,
    customer: {
      id: customerId,
    },
  };

  try {
    const response = await cardTokenizationApi.postCardTokenization(request);
    const data = response.data;

    console.log('Card tokenized successfully!');
    console.log('Token:', data.token);

    return data;
  } catch (error: any) {
    console.error('Error tokenizing card:', error.response?.data || error.message);
    throw error;
  }
}

if (import.meta.main) {
  tokenizeCard();
}
