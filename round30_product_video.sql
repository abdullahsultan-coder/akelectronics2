-- =========================================================
-- AK ELECTRONICS PRO — ROUND 30: PRODUCT HOVER-VIDEO
-- Run this in Supabase SQL Editor.
-- Adds an optional video URL per product — plays automatically
-- when a customer hovers (desktop) or touches (mobile) the
-- product image, for ~10 seconds.
-- =========================================================

alter table public.products add column if not exists video text;
