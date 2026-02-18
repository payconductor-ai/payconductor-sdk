import { Configuration, OrderApi, CustomerApi, CardTokenizationApi, TransferApi, GetOrdersPeriodEnum } from '../../packages/v1/typescript';

const config = new Configuration({
  username: process.env.PAYCONDUCTOR_CLIENT_ID || 'your_client_id',
  password: process.env.PAYCONDUCTOR_CLIENT_SECRET || 'your_client_secret',
});

const orderApi = new OrderApi(config);
const customerApi = new CustomerApi(config);
const cardTokenizationApi = new CardTokenizationApi(config);
const transferApi = new TransferApi(config);

async function main() {
  console.log('=== PayConductor SDK Examples ===\n');

  // Example: Get all orders
  console.log('1. Getting orders...');
  try {
    const orders = await orderApi.getOrders(GetOrdersPeriodEnum.Last7Days, 1, 10);
    console.log('Orders:', JSON.stringify(orders.data, null, 2));
  } catch (error: any) {
    console.error('Error:', error.response?.data || error.message);
  }

  // Example: Get all customers
  console.log('\n2. Getting customers...');
  try {
    const customers = await customerApi.getCustomers(1, 10, GetOrdersPeriodEnum.Last7Days);
    console.log('Customers:', JSON.stringify(customers.data, null, 2));
  } catch (error: any) {
    console.error('Error:', error.response?.data || error.message);
  }
}

main();
