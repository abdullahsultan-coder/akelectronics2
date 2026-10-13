-- =========================================================
-- AK ELECTRONICS PRO — ROUND 31: SALE PRICE + WHOLESALE/BULK DISCOUNT
-- Run this in Supabase SQL Editor.
-- =========================================================

-- Optional discounted price per product (original price stays in
-- "price" and shows crossed-out; "sale_price" shows highlighted).
alter table public.products add column if not exists sale_price numeric;

-- Global wholesale rule: buy >= bulk_discount_qty pieces of ANY
-- product, get bulk_discount_percent % off that line automatically.
insert into public.settings (key, value) values ('bulk_discount_qty', '10')
  on conflict (key) do nothing;
insert into public.settings (key, value) values ('bulk_discount_percent', '10')
  on conflict (key) do nothing;
