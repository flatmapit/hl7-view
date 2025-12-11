# Changelog

All notable changes to this project will be documented in this file.

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
