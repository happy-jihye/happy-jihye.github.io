# happy-jihye.github.io

Personal CV site of Jihye Back, served at <https://happy-jihye.github.io>.

## Editing content

Everything on the page comes from **`_data/cv.yml`**. Edit that file and push; GitHub Pages rebuilds the site in about a minute.

- Text fields are either a plain string, or `en:` / `ko:` pairs for the language toggle.
- Markdown works inside text: `**bold**`, `[link](https://...)`.
- `projects:` drives the *Selected Projects* cards. Put a thumbnail in `assets/img/projects/` and set `image:`. Use `fit: contain` for paper figures/plots (whole image, white padding) and leave it out for photos/banners (cropped to fill). Without `image:` the card shows the project name as a text tile.
- In `publications`, mark equal contribution with `*` and the corresponding author with `†`. Your name (`publications_me`) is bolded automatically.

| File | What it controls |
| --- | --- |
| `_data/cv.yml` | All content (EN + KO) |
| `index.html` | Page structure and section order |
| `_includes/project.html` | One project card (thumbnail + text) |
| `_includes/timeline.html` | Career chart (currently not on the page) |
| `assets/css/main.css` | Colors, type, layout (tokens at the top) |
| `assets/js/lang.js` | EN / 한국어 toggle (remembers the choice) |
| `assets/img/profile.jpg` | Profile photo |
| `assets/img/projects/` | Project thumbnails (~1000px wide, PNG/JPG/GIF) |
| `assets/img/logos/` | Organization logos (square) |

Link directly to a language with `?lang=ko` or `?lang=en`.

## Preview locally (optional)

```bash
bundle install
bundle exec jekyll serve
# open http://localhost:4000
```

## Deploying

Push to `main`. In the repository's **Settings → Pages**, the source should be *Deploy from a branch*, branch `main`, folder `/ (root)`.
