import {
  Configuration,
  OrderApi,
  type OrderCreateResponse,
  type OrderConfirmResponse,
} from 'payconductor-sdk';
import type { AxiosError } from 'axios';

const config = new Configuration({
  username: process.env.PAYCONDUCTOR_CLIENT_ID || 'your_client_id',
  password: process.env.PAYCONDUCTOR_CLIENT_SECRET || 'your_client_secret',
});

const orderApi = new OrderApi(config);

export async function getOrderById(orderId: string): Promise<OrderCreateResponse> {
  console.log('=== Getting Order by ID ===\n');

  const response = await orderApi.orderRead(orderId);
  const data = response.data as unknown as OrderCreateResponse;

  console.log('Order found:');
  console.log('ID:', data.id);
  console.log('Status:', data.status);
  console.log('Amount:', data.amount);
  console.log('Payment Method:', data.paymentMethod);

  return data;
}

export async function listOrders(): Promise<OrderCreateResponse[]> {
  console.log('=== Listing Orders ===\n');

  const response = await orderApi.orderList(1, 10);
  const data = response.data as unknown as OrderCreateResponse[];

  console.log('Orders found:', data?.length || 0);
  return data;
}

export async function refundOrder(orderId: string): Promise<OrderCreateResponse> {
  console.log('=== Refunding Order ===\n');

  const response = await orderApi.orderRefund(orderId);
  const data = response.data as unknown as OrderCreateResponse;

  console.log('Order refunded successfully!');
  console.log('Order ID:', data.id);
  console.log('Status:', data.status);

  return data;
}

export async function confirmOrder(orderId: string): Promise<OrderConfirmResponse> {
  console.log('=== Confirming Order ===\n');

  const response = await orderApi.orderConfirm(orderId, {
    paymentMethod: 'Pix',
  });
  const data = response.data;

  console.log('Order confirmed successfully!');
  console.log('Order ID:', data.id);
  console.log('Status:', data.status);

  return data;
}

if (import.meta.main) {
  listOrders();
}
