# An Nguyen — Personal Website

This is a static personal website for GitHub Pages.

## Replace your current site

1. Download and unzip this package.
2. In the `annguy.github.io` repository, replace:
   - `index.html`
   - `styles.css`
   - `script.js`
3. Keep `An_Nguyen_resume_July_2026.pdf` in the repository root.
4. Commit the changes to `main`.
5. GitHub Pages will redeploy automatically.

## Optional profile photo

Add a square photo as `assets/profile.jpg`, then replace:

```html
<div class="portrait" aria-hidden="true">AN</div>
```

with:

```html
<img class="portrait" src="assets/profile.jpg" alt="Portrait of An Nguyen">
```

## Verify publishing

Open repository **Settings → Pages** and confirm:

- Source: Deploy from a branch
- Branch: `main`
- Folder: `/ (root)`

The site should be available at:

`https://annguy.github.io`
