# Changelog

All notable changes to this project will be documented in this file.

## [1.0.18] - 2025-12-13

### Changed
- Updated page title and header to "In-Browser HL7 Viewer"
- Simplified header - removed version number and description text
- Updated footer copyright to just "flatmapit.com"
- Removed "Download to use this HTML page locally or offline" link from footer
- Added footer text: "One-file HTML App. No external dependencies. No network calls."

## [1.0.17] - 2025-12-XX

### Added
- **Recent Messages History**: Replaced "Load Sample" button with "Recent Messages" dropdown
- Message history automatically tracks parsed HL7 messages (up to 50 messages)
- History entries are labeled with message type, MSH ID, and timestamp
- Pre-populated with "Sample ORM" message for quick access
- Duplicate detection - notifies user if a message is already in history
- Click any history entry to load it into the input field
- History persists in browser localStorage

### Changed
- "Load Sample" button replaced with "Recent Messages" dropdown menu

## [1.0.16] - 2025-12-13

### Fixed
- Fixed double rendering issue when highlighting fields in paste box - textarea text now becomes transparent when highlighting is active, preventing overlapping text display

## [1.0.10] - 2025-12-XX

### Fixed
- Fixed pop-out overlay to be scrollable and show interactive segment list
- Overlay now works as a proportionally larger version of the parsed segments panel
- Segments in overlay are now clickable to show/hide field details
- Improved overlay layout with two-column design (segment list and detail view)

### Documentation
- Added Dependencies section to README.md documenting that the application has no external dependencies and listing required browser APIs

## [1.0.9] - 2025-12-XX

### Added
- Full-screen overlay view for parsed results - "Pop Out" button in results panel header opens all segments and fields in an expanded overlay
- Enhanced exploration of HL7 messages with all segments visible at once in the overlay view

### Removed
- Removed "Download for HL7 Spy" button and associated functionality

## [1.0.8] - 2025-12-12

### Fixed
- Corrected HL7 field numbering display - fields now correctly show 1-indexed HL7 field numbers (OBX-1, OBX-2, OBX-5, etc.) matching the HL7 specification
- Fixed field name lookup to properly map HL7 field numbers to field name arrays

## [1.0.7] - 2025-12-12

### Changed
- Updated sample HL7 message to use version 2.4 instead of 2.5
- Improved "Open in HL7 Spy" button text and messaging for clarity
- Updated toast notification to explain file association behavior

## [1.0.6] - 2025-12-12

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
