CREATE TABLE public.match_identity (
  match_id text PRIMARY KEY,
  event_id text NOT NULL,
  home_player_id text,
  away_player_id text,
  starts_at timestamptz,
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX match_identity_event_id_idx ON public.match_identity (event_id);

CREATE TABLE public.event_odds (
  event_id text PRIMARY KEY,
  match_id text,
  home_od double precision NOT NULL,
  draw_od double precision NOT NULL,
  away_od double precision NOT NULL,
  source text NOT NULL,
  source_match_id text,
  captured_at timestamptz NOT NULL DEFAULT now(),
  status text NOT NULL DEFAULT 'READY',
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE public.player_history (
  player_id text PRIMARY KEY,
  records jsonb NOT NULL DEFAULT '[]'::jsonb,
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE public.event_h2h (
  event_id text PRIMARY KEY,
  records jsonb NOT NULL DEFAULT '[]'::jsonb,
  updated_at timestamptz NOT NULL DEFAULT now()
);

GRANT ALL ON public.match_identity TO service_role;
GRANT ALL ON public.event_odds TO service_role;
GRANT ALL ON public.player_history TO service_role;
GRANT ALL ON public.event_h2h TO service_role;

ALTER TABLE public.match_identity ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.event_odds ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.player_history ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.event_h2h ENABLE ROW LEVEL SECURITY;
