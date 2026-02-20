import { createPixOrder } from './order-pix';
import { createCreditCardOrder } from './order-credit-card';
import { createBankSlipOrder } from './order-bank-slip';
import { createCustomer } from './customer';
import { tokenizeCard } from './card-tokenization';
import { createWithdraw } from './withdraw';
import { listOrders } from './order-management';
import type { AxiosError } from 'axios';

async function main() {
  try {
    console.log('PayConductor SDK Examples\n');

    await createPixOrder();
    console.log('\n---\n');

    await createCreditCardOrder();
    console.log('\n---\n');

    await createBankSlipOrder();
    console.log('\n---\n');

    await createCustomer();
    console.log('\n---\n');

    await tokenizeCard();
    console.log('\n---\n');

    await createWithdraw();
    console.log('\n---\n');

    await listOrders();

    console.log('\nAll examples completed!');
  } catch (error) {
    const axiosError = error as AxiosError;
    console.error('Error:', axiosError.response?.data || axiosError.message);
  }
}

main();
