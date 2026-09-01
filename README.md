# Pipili Simulator — A Working Model of Value Capture in Pipili's Appliqué Economy

An interactive research publication exploring value distribution in Pipili's appliqué craft cluster, Odisha, India.

## Features

- **Interactive Simulator**: Adjust 12 variables to model different business scenarios
- **Value Capture Map**: Visual representation of how consumer price splits between stakeholders
- **Resilience Analysis**: Stress-test channel diversification against demand shocks
- **Fieldwork Evidence**: Photographs, documentary video, and methodology
- **Embedded Research**: Every calculation traces back to field observations

## Accessing the Site

### Online
The site is hosted at: https://your-username.github.io/craft-value-site/

### Locally
1. Clone this repository
2. Open `index.html` in a web browser
3. The site works entirely offline (YouTube video link requires internet)

## Video Configuration

The documentary uses a YouTube embed (currently configured to: `https://www.youtube.com/watch?v=wVkbqHdr5FU`)

To change the video:
1. Find the line in `index.html`:
   ```javascript
   const DOCUMENTARY_EMBED_URL = "https://www.youtube.com/watch?v=YOUR_VIDEO_URL";
   ```
2. Replace with your video URL
3. Save and refresh

To use a local video instead:
1. Place your video as `images/documentary.mp4`
2. Update `index.html` line:
   ```javascript
   const DOCUMENTARY_EMBED_URL = null;
   ```

## Structure

```
index.html              # Complete site (CSS + JavaScript embedded)
images/                 # Photographs from fieldwork
  ├── documentary.mp4   # Documentary video (local fallback)
  └── *.png            # Field photographs
README.md              # This file
.gitignore             # Git configuration
```

## About

Based on fieldwork conducted in Pipili, Odisha (5 days, 2026):
- **21 artisans** interviewed
- **17 traders** surveyed
- **11 consumers** interviewed
- **2 women-artisan focus groups** (~20 participants)

The model is intentionally Pipili-specific and not meant for generic application without new fieldwork.

## Research

Primary research: "Threads of Tradition: A Glimpse into the Art and Economy of Appliqué Work in Pipili, Odisha," FLAME University (2025–26)

## Deploying to GitHub Pages

1. **Create a GitHub repository**:
   ```bash
   cd craft-value-site
   git init
   git add .
   git commit -m "Initial commit: Craft Value site"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/craft-value-site.git
   git push -u origin main
   ```

2. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Set Source to "main" branch
   - Your site will be live at `https://YOUR_USERNAME.github.io/craft-value-site/`

3. **Update site links** once deployed:
   - Add your final URL to documentation
   - Share the GitHub Pages link

## Deploying to Other Platforms

### Netlify (Recommended for better analytics)
1. Go to [netlify.com](https://netlify.com)
2. Click "Add new site" → "Deploy manually"
3. Drag and drop the `craft-value-site` folder
4. Site goes live instantly

### Vercel
1. Go to [vercel.com](https://vercel.com)
2. Import project from GitHub or drag-and-drop folder
3. Deploy with one click

## Features

- ✅ Fully responsive design
- ✅ Works offline (except YouTube embed)
- ✅ No build step required
- ✅ Lightweight (~400KB)
- ✅ Accessibility built-in
- ✅ Dark mode compatible

## Questions?

See the Methodology section (Section 13) for limitations, assumptions, and evidence documentation.
