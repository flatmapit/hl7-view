# HL7 Document Viewer

A web application for parsing HL7 messages and extracting embedded documents.

**Version:** 1.0.10  
**🌐 [View Live Site](https://flatmapit.github.io/hl7-view/)**

## Overview

This tool parses HL7 messages and extracts embedded documents from OBX segments. It supports a wide variety of file types including images, PDFs, audio, video, documents, archives, and medical formats. It displays parsed segments and allows viewing and downloading extracted documents.

## Usage

1. Open `index.html` in a web browser (or use the [live site](https://flatmapit.github.io/hl7-view/))
2. Paste an HL7 message into the input field
3. Click "Parse Message" to parse the message and extract documents
4. View segments in the results panel - click any segment to see detailed field information with HL7 field names
5. Use the "Pop Out" button in the results panel header to open a full-screen overlay showing all segments and fields at once for easier exploration
6. Use copy icons to copy segments or individual fields to clipboard
7. View or download extracted documents from the documents section

## Features

- Parse HL7 messages and display segments with field names
- Extract embedded documents from OBX segments
- Support for multiple file types:
  - **Images**: JPEG, PNG, GIF, TIFF, SVG
  - **Documents**: PDF, RTF, HTML, XML, DOC, DOCX
  - **Audio**: MP3, WAV
  - **Video**: MP4
  - **Archives**: ZIP
  - **Medical**: DICOM, HL7-SCP-ECG
- View documents in a modal overlay (images, PDFs, HTML, XML, audio, video)
- Full-screen overlay view for parsed results showing all segments and fields at once
- Download extracted documents
- Copy segments and individual fields to clipboard
- Load sample HL7 message for testing
- **Privacy**: All processing happens locally in your browser - your data never leaves your device

## Technical Details

The application is a single HTML file with embedded CSS and JavaScript. It runs entirely in the browser with no server required. **All data processing happens locally - your HL7 messages never leave your device.**

### HL7 Parsing
- Automatically detects HL7 version from MSH-12 field (defaults to 2.5)
- Displays field names for common segments (MSH, PID, OBX, OBR, PV1, ORC, NTE, AL1, DG1, PR1)
- Shows all fields in each segment with expandable long fields
- Supports copy-to-clipboard for segments and individual fields

### Document Extraction
Document extraction works by:
- Parsing OBX segments with Value Type "ED" (Encapsulated Data) or "RP" (Reference Pointer)
- Extracting base64-encoded data from OBX-5 field
- Detecting document type from MIME type hints, magic number patterns, or OBX segment identifiers
- Rendering documents appropriately based on type (images, PDFs, audio/video players, or download options)

## File Structure

```
hl7-view/
  ├── index.html
  ├── README.md
  └── .github/
      └── workflows/
          └── pages.yml
```

## Deployment

This application is deployed to GitHub Pages. The site is automatically deployed when changes are pushed to the `main` branch.

### Setting up GitHub Pages

1. Make the repository public (Settings → General → Danger Zone → Change visibility)
2. Enable GitHub Pages (Settings → Pages):
   - Source: GitHub Actions
   - The workflow will automatically deploy on push to `main`

The site is available at: [https://flatmapit.github.io/hl7-view/](https://flatmapit.github.io/hl7-view/)

## Browser Compatibility

Works in modern browsers that support:
- ES6 JavaScript
- Base64 decoding
- Data URLs
- CSS Grid

