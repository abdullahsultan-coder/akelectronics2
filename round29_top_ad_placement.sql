-- =========================================================
-- AK ELECTRONICS PRO — ROUND 29: TOP-OF-PAGE ADS PLACEMENT
-- Run this in Supabase SQL Editor.
-- Allows the new "top" placement value (half-screen banner at
-- the very top of the homepage) — without this, uploading a Top
-- Banner ad from the Admin Panel will fail with a constraint error.
-- =========================================================

alter table public.ads drop constraint if exists ads_placement_check;

alter table public.ads
  add constraint ads_placement_check
  check (placement in ('splash', 'mid', 'starterkit', 'top'));
