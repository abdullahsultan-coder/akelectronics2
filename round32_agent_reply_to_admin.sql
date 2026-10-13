-- =========================================================
-- AK ELECTRONICS PRO — ROUND 32: AGENT -> ADMIN MESSAGES
-- Run AFTER round26/round28. Lets agents also SEE the messages
-- they sent (to Admin), so the conversation shows on both sides.
-- =========================================================

create policy "Agents can read messages they sent"
  on public.agent_messages for select
  using (
    (auth.jwt() -> 'user_metadata' ->> 'role') in ('products_agent','projects_agent','full_agent')
    and from_role = (auth.jwt() -> 'user_metadata' ->> 'role')
  );
