# 🎨 Local Fonts Setup Guide

## 📁 Current Structure
```
Portfolio Hackathon/
├── index.html
├── styles.css
├── README.md
└── assets/
    └── fonts/
        └── fonts.css
```

## 🚀 How to Add Local Fonts (Step by Step)

### Step 1: Download Free Fonts

**Option A: Google Fonts (Recommended)**
1. Go to [fonts.google.com](https://fonts.google.com)
2. Select fonts you want (e.g., Inter, Poppins)
3. Click "Download family" 
4. Extract the ZIP file
5. Find the `.woff2` files (best for web)

**Option B: Font Squirrel**
1. Go to [fontsquirrel.com](https://fontsquirrel.com)
2. Browse free fonts
3. Download and use their webfont generator if needed

**Option C: Adobe Fonts (if you have Creative Cloud)**
1. Select fonts from Adobe Fonts
2. Download for desktop use
3. Convert to web fonts if needed

### Step 2: Prepare Font Files

**Recommended file formats (in order of preference):**
1. `.woff2` - Best compression, modern browsers
2. `.woff` - Good compression, wider support
3. `.ttf` - Fallback for older browsers

**Naming convention:**
- `fontname-weight.woff2`
- Examples: `inter-regular.woff2`, `poppins-semibold.woff2`

### Step 3: Add Font Files to Project

Place your font files in the `assets/fonts/` folder:
```
assets/fonts/
├── fonts.css
├── inter-regular.woff2
├── inter-medium.woff2
├── inter-semibold.woff2
├── poppins-regular.woff2
├── poppins-semibold.woff2
└── poppins-bold.woff2
```

### Step 4: Update fonts.css

Uncomment and modify the `@font-face` rules in `assets/fonts/fonts.css`:

```css
@font-face {
    font-family: 'Inter';
    src: url('./inter-regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Inter';
    src: url('./inter-medium.woff2') format('woff2');
    font-weight: 500;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Poppins';
    src: url('./poppins-regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
    font-display: swap;
}

@font-face {
    font-family: 'Poppins';
    src: url('./poppins-semibold.woff2') format('woff2');
    font-weight: 600;
    font-style: normal;
    font-display: swap;
}
```

### Step 5: Update CSS Variables

In `assets/fonts/fonts.css`, update the CSS variables:

```css
:root {
    --font-heading: 'Poppins', system-ui, sans-serif;
    --font-body: 'Inter', system-ui, sans-serif;
}
```

## 🎯 Current System Fonts (No Download Required)

Your portfolio currently uses excellent system fonts that look great:

- **macOS**: SF Pro Display, SF Pro Text
- **Windows**: Segoe UI
- **Android**: Roboto
- **Linux**: System UI fonts

These provide excellent typography without any downloads!

## ⚡ Performance Tips

1. **Use `font-display: swap`** - Ensures text is visible during font load
2. **Preload critical fonts** - Add to HTML head:
   ```html
   <link rel="preload" href="assets/fonts/inter-regular.woff2" as="font" type="font/woff2" crossorigin>
   ```
3. **Minimize font weights** - Only include weights you actually use
4. **Use WOFF2 format** - Best compression and support

## 🔧 Testing Your Fonts

1. Open your portfolio in different browsers
2. Check font loading in DevTools Network tab
3. Test with slow network connections
4. Verify fallback fonts work properly

## 📊 Font File Size Guidelines

- **WOFF2**: ~20-50KB per weight
- **Total fonts**: Keep under 200KB for good performance
- **Critical fonts**: Preload the main body/heading weights

## 🎨 Recommended Font Combinations

**Modern & Professional:**
- Headings: Poppins or Montserrat
- Body: Inter or Source Sans Pro

**Classic & Elegant:**
- Headings: Playfair Display or Crimson Text
- Body: Source Serif Pro or Lora

**Tech & Minimal:**
- Headings: Work Sans or Nunito
- Body: IBM Plex Sans or Space Grotesk

---

**Your current setup is already excellent with system fonts! Only add local fonts if you need specific typography for branding purposes.**
