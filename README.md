# StressLess project website

A minimal, responsive Astro project page for **StressLess: Towards Generalizable Fragile Food Grasping from Stress-Aware Demonstrations at Scale**.

## Development

Use Node 24 (`nvm use`), then:

```sh
npm ci
npm run dev
```

Open http://localhost:4321/stressless-gentle-grasp/ . `npm run build` generates the static site in `dist/`; `npm run preview` previews that build.

## Content

- `src/pages/index.astro`: title, authors, links, concise copy, and scores.
- `src/styles/site.css`: responsive layout and visual styling.
- `public/assets/paper/stressless.pdf`: manuscript supplied on September 14, 2026.
- `public/assets/figures/`: every visual asset from the manuscript's `figs/` directory, plus browser-ready PNG renders of the PDFs.
- `media/source/gentle-grasp.mp4`: unmodified original video.
- `public/assets/video/`: the edited highlight, full-length web encode, and poster.
- `scripts/edit-video.sh`: reproducible video edit with FFmpeg. Clips: 4–12, 49–57, 67–75, 79–87 seconds, concatenated at the original playback rate. The highlight is 32 seconds and has no audio; the full-length web encode is also muted.

The manuscript has author-order notes, TODOs, incomplete sections, and placeholders. The page links it as a manuscript and does not claim acceptance, invent missing success rates, or claim unseen-category coverage. Authors and affiliations follow the provided title block; remove draft notes in the PDF before a final release. Displayed comparison scores are the manuscript's rounded category averages, not binary success percentages.

The training-set figure contains the author's existing “TOFU MISSING” annotation; the source figure is preserved verbatim. Replace the PDF and corresponding rendered image when a final figure becomes available.

## GitHub Pages

Repository: `yifeidong0/stressless-gentle-grasp`.

The base path in `astro.config.mjs` is `/stressless-gentle-grasp`. The included workflow builds and deploys pushes to `main`. In GitHub repository settings, set Pages source to **GitHub Actions**.

To create the remote once authenticated:

```sh
gh auth login
gh repo create yifeidong0/stressless-gentle-grasp --public --source=. --remote=origin --push
gh api --method POST repos/yifeidong0/stressless-gentle-grasp/pages -f build_type=workflow
```

Change `--public` to `--private` if keeping the submission private (Pages availability depends on the account plan). Do not create a duplicate remote if it already exists.

## Design reference and provenance

The current [Academic Project Astro Template](https://github.com/RomanHauksson/academic-project-astro-template), inspected at commit `0e90d4f36bad6ee0af330964bdf0002fe451283d` on September 14, 2026, informed the academic page structure and choice of Astro. This site has a custom implementation and styling; it does not copy the template's component code. Its footer credits the reference.

All research figures and video belong to their original authors. No broad license is assigned to the research assets. Original source paths:

- `/home/yif/Documents/KTH/git/6a85cca29aa3fbacbf7e63e0/root.pdf`
- `/home/yif/Documents/KTH/git/6a85cca29aa3fbacbf7e63e0/figs/`
- `/home/yif/Downloads/gentle-grasp.mp4`
