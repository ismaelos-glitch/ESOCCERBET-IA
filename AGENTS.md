<!-- LOVABLE:BEGIN -->
> [!IMPORTANT]
> This project is connected to [Lovable](https://lovable.dev). Avoid rewriting
> published git history — force pushing, or rebasing/amending/squashing commits
> that are already pushed — as it rewrites history on Lovable's side and the
> user will likely lose their project history.
>
> Commits you push to the connected branch sync back to Lovable and show up in
> the editor, so keep the branch in a working state.
<!-- LOVABLE:END -->

- Published picks are always market "12" (home or away win, RED only on a draw); only market-12 entries count in operational metrics.
- Operational Green/Red, win-rate, calibration, charts, and diagnostics count only released entries inside the operating band (BAND_MIN/BAND_MAX in pre-red.ts) with a known draw probability under MAX_DRAW; other entries remain stored but excluded, so paused ranges never affect results.
- Anti-draw filter lives in src/lib/draw-filter.ts; thresholds learned walk-forward 60/20/20, only filterStatus=liberado counts in official metrics (inOperatingBand) — keeps dashboard accounting honest.
- Canceled pick IDs are kept in local storage until manually registered again, so automatic registration cannot undo a user's cancellation.
- Band selection falls back to the raw model probability only when isotonic calibration would push every upcoming pick out of the operating band (resolveBandCalibration in picks.ts); why: calibration learns only from band entries, so an empty band would freeze it forever.
