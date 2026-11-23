-- ========================================================
-- CARGA DE JORNADA 13 (10 PARTIDOS + 28 GOLES CON GOLEADORES Y ASISTENTES)
-- Pega este código en: Supabase Dashboard -> SQL Editor -> New Query -> Run
-- ========================================================

-- 1. INSERTAR / ACTUALIZAR LOS 10 PARTIDOS DE LA JORNADA 13
INSERT INTO public.matches (
  id, jornada, date, home_team_id, away_team_id, home_score, away_score, competition, stadium, first_goal_team_id, notes
) VALUES
  ('j13-m1', 13, '2026-11-20', 'cd-teruel', 'hercules-alicante', 0, 1, 'Primera Federación / Liga', 'Campo Pinilla', 'hercules-alicante', NULL),
  ('j13-m2', 13, '2026-11-20', 'villarreal-b', 'gimnastic-tarragona', 2, 2, 'Primera Federación / Liga', 'Mini Estadi Villarreal', 'villarreal-b', NULL),
  ('j13-m3', 13, '2026-11-20', 'rm-castilla', 'real-murcia', 0, 2, 'Primera Federación / Liga', 'Estadio Alfredo Di Stéfano', 'real-murcia', NULL),
  ('j13-m4', 13, '2026-11-21', 'antequera-cf', 'juventud-torremolinos', 2, 1, 'Primera Federación / Liga', 'El Maulí', 'juventud-torremolinos', NULL),
  ('j13-m5', 13, '2026-11-21', 'real-zaragoza', 'rayo-majadahonda', 2, 0, 'Primera Federación / Liga', 'Estadio Modular - Real Zaragoza', 'real-zaragoza', NULL),
  ('j13-m6', 13, '2026-11-21', 'aguilas-fc', 'ce-europa', 0, 2, 'Primera Federación / Liga', 'Estadio El Rubial', 'ce-europa', NULL),
  ('j13-m7', 13, '2026-11-21', 'ue-sant-andreu', 'atletico-madrideno', 1, 2, 'Primera Federación / Liga', 'Estadio Can Dragó', 'ue-sant-andreu', NULL),
  ('j13-m8', 13, '2026-11-22', 'ad-alcorcon', 'algeciras-cf', 1, 0, 'Primera Federación / Liga', 'Estadio Municipal Santo Domingo', 'ad-alcorcon', NULL),
  ('j13-m9', 13, '2026-11-22', 'sd-huesca', 'ud-ibiza', 0, 4, 'Primera Federación / Liga', 'El Alcoraz', 'ud-ibiza', NULL),
  ('j13-m10', 13, '2026-11-22', 'fc-cartagena', 'real-jaen', 4, 2, 'Primera Federación / Liga', 'Estadio Municipal Cartagonova', 'fc-cartagena', NULL)
ON CONFLICT (id) DO UPDATE SET
  home_score = EXCLUDED.home_score,
  away_score = EXCLUDED.away_score,
  first_goal_team_id = EXCLUDED.first_goal_team_id,
  notes = EXCLUDED.notes;

-- 2. INSERTAR / ACTUALIZAR LOS 28 GOLES DE LA JORNADA 13
INSERT INTO public.goals (
  id, match_id, team_id, conceding_team_id, scorer, assister, minute, minute_interval, score_before, tactical_phase, tactical_subtype, pitch_zone, body_part, notes
) VALUES
  ('g-j13-m1-1', 'j13-m1', 'hercules-alicante', 'cd-teruel', 'H. Abdelilah', 'Carlos Abad', 31, '31-45', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m2-1', 'j13-m2', 'villarreal-b', 'gimnastic-tarragona', 'Facundo Viveros', NULL, 22, '16-30', '0-0', 'ABP', 'Penalti', NULL, NULL, NULL),
  ('g-j13-m2-2', 'j13-m2', 'gimnastic-tarragona', 'villarreal-b', 'Álex Almansa', 'Borja Sánchez', 27, '16-30', '1-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m2-3', 'j13-m2', 'gimnastic-tarragona', 'villarreal-b', 'Pere Marco', 'Borja Sánchez', 37, '31-45', '1-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m2-4', 'j13-m2', 'villarreal-b', 'gimnastic-tarragona', 'D. Fofana', 'Albert García', 91, '76-90+', '1-2', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m3-1', 'j13-m3', 'real-murcia', 'rm-castilla', 'Flakus', 'Javi Moreno', 26, '16-30', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m3-2', 'j13-m3', 'real-murcia', 'rm-castilla', 'Flakus', 'Palmberg', 37, '31-45', '0-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m4-1', 'j13-m4', 'juventud-torremolinos', 'antequera-cf', 'Javi Mérida', 'M. Prevedini', 45, '31-45', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, 'Minuto 45''+1'),
  ('g-j13-m4-2', 'j13-m4', 'antequera-cf', 'juventud-torremolinos', 'Adrià Gené', NULL, 47, '46-60', '0-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m4-3', 'j13-m4', 'antequera-cf', 'juventud-torremolinos', 'Destiny', 'David Cuenca', 63, '61-75', '1-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m5-1', 'j13-m5', 'real-zaragoza', 'rayo-majadahonda', 'Marco Sangalli', 'Rubén Díez', 37, '31-45', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m5-2', 'j13-m5', 'real-zaragoza', 'rayo-majadahonda', 'Edu Espiau', 'Marcos Cuenca', 68, '61-75', '1-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m6-1', 'j13-m6', 'ce-europa', 'aguilas-fc', 'Tito', 'Adri Expósito', 42, '31-45', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m6-2', 'j13-m6', 'ce-europa', 'aguilas-fc', 'F. Ribeiro', NULL, 76, '76-90+', '0-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m7-1', 'j13-m7', 'ue-sant-andreu', 'atletico-madrideno', 'Jeremy De León', 'P. Agudin', 11, '0-15', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m7-2', 'j13-m7', 'atletico-madrideno', 'ue-sant-andreu', 'Javi Gómez (p.p.)', NULL, 48, '46-60', '1-0', 'PENDIENTE', 'Gol en propia puerta', NULL, NULL, 'Gol en propia puerta de Javi Gómez'),
  ('g-j13-m7-3', 'j13-m7', 'atletico-madrideno', 'ue-sant-andreu', 'Koke Mota', 'R. Hueso', 53, '46-60', '1-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m8-1', 'j13-m8', 'ad-alcorcon', 'algeciras-cf', 'M. Berlanga', 'Luis Vacas', 32, '31-45', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m9-1', 'j13-m9', 'ud-ibiza', 'sd-huesca', 'Ander Yoldi', 'David Astals', 6, '0-15', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m9-2', 'j13-m9', 'ud-ibiza', 'sd-huesca', 'David Astals', 'Georges Nsukula', 58, '46-60', '0-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m9-3', 'j13-m9', 'ud-ibiza', 'sd-huesca', 'Iker Varela', 'Agus Gorla', 84, '76-90+', '0-2', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m9-4', 'j13-m9', 'ud-ibiza', 'sd-huesca', 'Iker Varela', 'Pedro Ortiz', 89, '76-90+', '0-3', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-1', 'j13-m10', 'fc-cartagena', 'real-jaen', 'Marcos Moreno', 'Javi Ajenjo', 6, '0-15', '0-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-2', 'j13-m10', 'fc-cartagena', 'real-jaen', 'Marcos Moreno', 'Rubén Serrano', 56, '46-60', '1-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-3', 'j13-m10', 'real-jaen', 'fc-cartagena', 'A. Caballero', NULL, 60, '46-60', '2-0', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-4', 'j13-m10', 'real-jaen', 'fc-cartagena', 'M. Siverio', NULL, 72, '61-75', '2-1', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-5', 'j13-m10', 'fc-cartagena', 'real-jaen', 'Rubén Serrano', 'Imanol Baz', 84, '76-90+', '2-2', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL),
  ('g-j13-m10-6', 'j13-m10', 'fc-cartagena', 'real-jaen', 'P. De Blasis', 'Nacho Martínez', 91, '76-90+', '3-2', 'PENDIENTE', 'Sin definir', NULL, NULL, NULL)
ON CONFLICT (id) DO UPDATE SET
  scorer = EXCLUDED.scorer,
  assister = EXCLUDED.assister,
  minute = EXCLUDED.minute,
  minute_interval = EXCLUDED.minute_interval,
  score_before = EXCLUDED.score_before,
  tactical_phase = EXCLUDED.tactical_phase,
  tactical_subtype = EXCLUDED.tactical_subtype,
  notes = EXCLUDED.notes;
