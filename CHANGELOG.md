# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
- HL7 field name display in segment detail view
- Automatic HL7 version detection from MSH-12 field (displays version in segment header)
- Field name mappings for common HL7 segments (MSH, PID, OBX, OBR, PV1, ORC, NTE, AL1, DG1, PR1)
- "Open in HL7 Spy" button to download HL7 message with proper MIME type (application/hl7-v2)
- Privacy note in header indicating all processing happens locally in browser
- Updated footer download link text for clarity

## [1.0.5] - 2025-12-12

### Changed
- Increased container max-width from 1400px to 1800px for wider, more space-efficient UI
- Modified parsed results panel to show all fields in each segment (no truncation)
- Long fields (>150 characters) now display with ellipsis and can be expanded/collapsed by clicking
- Increased segment detail panel max-height from 150px to 400px for better visibility

### Added
- Copy segment icon next to segment type (MSH/ORM, etc.) to copy entire raw segment to clipboard
- Copy icon on each field to copy raw field content to clipboard
- Toast notifications for copy operations
- Improved segment detail layout with field index numbers and better organization
- Click-to-expand functionality for long fields

## [1.0.4] - 2025-01-XX

### Changed
- Improved audio sample in loadSample() function
- Sample audio now plays a pleasant ping/beep sound (800Hz tone with envelope) instead of silent audio
- Added createPingSound() function to dynamically generate WAV audio files
- Changed sample audio format from MP3 to WAV for better programmatic generation

## [1.0.3] - 2025-01-XX

### Changed
- Improved PNG and JPEG sample images in loadSample() function
- Sample images now display "PNG" and "JPEG" text in pixel font instead of 1x1 pixel images
- Images are dynamically generated with proper styling matching the application theme

## [1.0.2] - 2025-01-XX

### Added
- Support for GIF image format
- Support for TIFF image format
- Support for RTF document format
- Support for HTML document format
- Support for ZIP archive format
- Support for XML document format
- Support for SVG image format
- Support for DICOM medical imaging format
- Support for Microsoft Word documents (DOC and DOCX)
- Support for MP3 audio format
- Support for WAV audio format
- Support for MP4 video format
- Support for HL7-SCP-ECG format
- Enhanced document type detection from MIME type hints and magic numbers
- Audio and video preview players in document cards
- Improved modal viewer for different document types
- CSS styling for new document type badges

### Changed
- Updated document extraction to handle additional MIME types
- Enhanced magic number detection for better file type identification
- Improved document preview rendering for various file types
- Updated README with comprehensive list of supported file types

## [1.0.1] - 2024-XX-XX

### Added
- Initial release
- Support for JPEG, PNG, and PDF documents
- HL7 message parsing
- Document extraction from OBX segments
- Document viewing and downloading
