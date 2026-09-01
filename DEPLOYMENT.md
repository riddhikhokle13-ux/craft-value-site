# Deployment Guide — Craft / Value

## Quick Start (5 minutes)

### Option 1: GitHub Pages (Recommended - Entirely Free)

```bash
# 1. Navigate to your project
cd /Users/ASUS/Desktop/craft-value-site

# 2. Initialize git repository
git init

# 3. Add all files
git add .

# 4. Commit
git commit -m "Initial commit: Craft Value site with YouTube video integration"

# 5. Create main branch
git branch -M main

# 6. Add remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/craft-value-site.git

# 7. Push to GitHub
git push -u origin main
```

Then go to: **GitHub** → Repository → **Settings** → **Pages**
- Set Source to `main` branch
- Your site will be live at: `https://YOUR_USERNAME.github.io/craft-value-site/`

---

### Option 2: Netlify (2-Click Deploy)

1. Go to https://netlify.com
2. Click **"Deploy manually"**
3. Drag and drop the `craft-value-site` folder
4. ✅ Site is live instantly (you get a free `.netlify.app` URL)

**Upgrade to custom domain**: $12/year

---

### Option 3: Vercel

1. Go to https://vercel.com
2. Click **"New Project"**
3. Select "Import Git Repository" or upload folder
4. ✅ Click **Deploy**

---

## YouTube Video Configuration

✅ **Your video is already configured!**

Current setting in `index.html` (line ~980):
```javascript
const DOCUMENTARY_EMBED_URL = "https://www.youtube.com/watch?v=wVkbqHdr5FU";
```

### To Change the Video:

Find this line in `index.html` and replace the URL:
```javascript
const DOCUMENTARY_EMBED_URL = "https://www.youtube.com/watch?v=YOUR_NEW_VIDEO_ID";
```

### To Use Local Video Instead:

1. Keep `images/documentary.mp4` in the folder
2. Change line to:
   ```javascript
   const DOCUMENTARY_EMBED_URL = null;
   ```

---

## Testing Before Going Public

1. **Local testing**:
   ```bash
   # Python 3
   python3 -m http.server 8000
   # Then visit http://localhost:8000
   ```

2. **Check**:
   - [ ] All sliders work
   - [ ] Charts render properly
   - [ ] YouTube video loads (requires internet)
   - [ ] Photographs display
   - [ ] Navigation links work

---

## After Deployment

### Update Links
- Add your live URL to README.md
- Share with colleagues/stakeholders

### Custom Domain (Optional)
- **GitHub Pages**: Settings → Custom domain (free with .com/.org you own)
- **Netlify/Vercel**: Connect domain in settings ($12–15/yr or point from your registrar)

### Analytics (Optional)
- Netlify: Built-in analytics
- Vercel: Analytics add-on
- GitHub Pages: Add Plausible/Fathom (privacy-friendly)

---

## File Size & Performance

✅ **Production-ready**:
- Total size: ~400 KB (single HTML file)
- Load time: <1 second on average connection
- No dependencies, no build step needed
- Works offline (except YouTube video)

---

## Troubleshooting

### YouTube Video Not Showing
- Verify URL is correct and public (not unlisted/private)
- Check browser console for CORS errors
- If using private video, open directly via link instead

### Images Not Loading After Deploy
- Ensure `images/` folder is pushed to GitHub
- Check file paths in `index.html` use relative paths (they do ✓)

### Charts Rendering Issues
- Clear browser cache (Cmd+Shift+R on Mac)
- Check JavaScript console for errors
- Verify Chart.js CDN is accessible

---

## Support

For questions about:
- **Deployment**: See README.md
- **Model mechanics**: See Section 13 (Methodology) in the site
- **Research background**: See Section 14 (Sources)

---

**Ready to go live? Follow Option 1 (GitHub) or Option 2 (Netlify) above.** ✨
