module Lib where

import Codec.Midi (exportFile, importFile)
import Codec.Midi
import Data.Array.Unboxed (elems, listArray)
import Data.Audio (Audio(Audio))
import Data.Int (Int32)
import Data.Maybe (fromMaybe)
import System.IO (FilePath)

outMain :: FilePath -> IO ()
outMain path = do
  let track0 = [(0, NoteOn 0 60 80), (24, NoteOff 0 60 0), (0, TrackEnd)]
  let track1 = [(0, NoteOn 0 64 80), (24, NoteOn 0 64 0), (0, TrackEnd)]
  let myMidi =
        Midi
        { fileType = MultiTrack
        , timeDiv = TicksPerBeat 24
        , tracks = [track0, track1]
        }
  exportFile path myMidi

inMain :: FilePath -> IO ()
inMain path = do
  maybeAudio <- importFile path
  case maybeAudio :: Either String (Midi) of
    Left s -> putStrLn $ "wav decoding error: " ++ s
    Right (Midi fileType timeDiv tracks) -> do
      putStrLn $ "fileType = " ++ show fileType
      putStrLn $ "timeDiv: " ++ show timeDiv

someFunc = "someFunc"
