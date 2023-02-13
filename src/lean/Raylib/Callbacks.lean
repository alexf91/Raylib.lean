namespace Raylib
-- /-! # Callbacks -/
-- /-- Logging: Redirect trace log messages -/
-- def TraceLogCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: void
--   params:
--   | logLevel : int
--   | text : const char *
--   | args : va_list
-- -/
-- /-- FileIO: Load binary data -/
-- def LoadFileDataCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: unsigned char *
--   params:
--   | fileName : const char *
--   | bytesRead : unsigned int *
-- -/
-- /-- FileIO: Save binary data -/
-- def SaveFileDataCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: bool
--   params:
--   | fileName : const char *
--   | data : void *
--   | bytesToWrite : unsigned int
-- -/
-- /-- FileIO: Load text data -/
-- def LoadFileTextCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: char *
--   params:
--   | fileName : const char *
-- -/
-- /-- FileIO: Save text data -/
-- def SaveFileTextCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: bool
--   params:
--   | fileName : const char *
--   | text : char *
-- -/
-- def AudioCallback : Type := panic! "Untranslated"
-- /- todo: ^^ callback ^^
--   returns: void
--   params:
--   | bufferData : void *
--   | frames : unsigned int
-- -/
end Raylib