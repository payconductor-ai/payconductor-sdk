import {
  Configuration,
  OrderApi,
  type CustomerCreateRequest,
  type OrderCreateRequest,
  type OrderCreateResponse,
  DocumentType,
} from 'payconductor-sdk';
import type { AxiosError } from 'axios';

const config = new Configuration({
  username: process.env.PAYCONDUCTOR_CLIENT_ID || 'your_client_id',
  password: process.env.PAYCONDUCTOR_CLIENT_SECRET || 'your_client_secret',
});

const orderApi = new OrderApi(config);

export async function createPixOrder(): Promise<OrderCreateResponse> {
  console.log('=== Creating PIX Order ===\n');

  const customer: CustomerCreateRequest = {
    documentNumber: '12345678900',
    documentType: DocumentType.Cpf,
    email: 'customer@example.com',
    name: 'John Doe',
    phoneNumber: '+55 11 999999999',
  };

  const orderRequest: OrderCreateRequest = {
    chargeAmount: 100.00,
    clientIp: '192.168.1.1',
    customer,
    discountAmount: 0,
    externalId: `pix-order-${Date.now()}`,
    payment: {
      paymentMethod: 'Pix',
      expirationInSeconds: 3600,
    },
    shippingFee: 0,
    taxFee: 0,
    items: [
      {
        id: 'item-1',
        isPhysical: false,
        name: 'Sample Product',
        qty: 1,
        unitPrice: 100.00,
      },
    ],
  };

  try {
    const response = await orderApi.orderCreate(orderRequest);
    const data = response.data;

    console.log('PIX order created successfully!');
    console.log('Order ID:', data.id);
    console.log('Status:', data.status);
    console.log('PIX Code:', data.pix?.copyAndPasteCode);
    console.log('QR Code URL:', data.pix?.qrCodeUrl);

    return data;
  } catch (error) {
    const axiosError = error as AxiosError;
    console.error('Error creating PIX order:', axiosError.response?.data || axiosError.message);
    throw error;
  }
}

if (import.meta.main) {
  createPixOrder();
}
