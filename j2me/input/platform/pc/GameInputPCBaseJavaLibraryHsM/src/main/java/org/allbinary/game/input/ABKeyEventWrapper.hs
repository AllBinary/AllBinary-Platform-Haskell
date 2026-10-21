{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module ABKeyEventWrapper where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified KeyEvent -- java.awt.event.KeyEvent
import qualified JsType -- jsinterop.annotations.JsType

data ABKeyEventWrapper = ABKeyEventWrapper
    { header_ :: JavaHeader
    , vK_ENTER :: IORef (Int)
    , vK_BACK_SPACE :: IORef (Int)
    , vK_TAB :: IORef (Int)
    , vK_CANCEL :: IORef (Int)
    , vK_CLEAR :: IORef (Int)
    , vK_SHIFT :: IORef (Int)
    , vK_CONTROL :: IORef (Int)
    , vK_ALT :: IORef (Int)
    , vK_PAUSE :: IORef (Int)
    , vK_CAPS_LOCK :: IORef (Int)
    , vK_ESCAPE :: IORef (Int)
    , vK_SPACE :: IORef (Int)
    , vK_PAGE_UP :: IORef (Int)
    , vK_PAGE_DOWN :: IORef (Int)
    , vK_END :: IORef (Int)
    , vK_HOME :: IORef (Int)
    , vK_LEFT :: IORef (Int)
    , vK_UP :: IORef (Int)
    , vK_RIGHT :: IORef (Int)
    , vK_DOWN :: IORef (Int)
    , vK_COMMA :: IORef (Int)
    , vK_MINUS :: IORef (Int)
    , vK_PERIOD :: IORef (Int)
    , vK_SLASH :: IORef (Int)
    , vK_0 :: IORef (Int)
    , vK_1 :: IORef (Int)
    , vK_2 :: IORef (Int)
    , vK_3 :: IORef (Int)
    , vK_4 :: IORef (Int)
    , vK_5 :: IORef (Int)
    , vK_6 :: IORef (Int)
    , vK_7 :: IORef (Int)
    , vK_8 :: IORef (Int)
    , vK_9 :: IORef (Int)
    , vK_SEMICOLON :: IORef (Int)
    , vK_EQUALS :: IORef (Int)
    , vK_A :: IORef (Int)
    , vK_B :: IORef (Int)
    , vK_C :: IORef (Int)
    , vK_D :: IORef (Int)
    , vK_E :: IORef (Int)
    , vK_F :: IORef (Int)
    , vK_G :: IORef (Int)
    , vK_H :: IORef (Int)
    , vK_I :: IORef (Int)
    , vK_J :: IORef (Int)
    , vK_K :: IORef (Int)
    , vK_L :: IORef (Int)
    , vK_M :: IORef (Int)
    , vK_N :: IORef (Int)
    , vK_O :: IORef (Int)
    , vK_P :: IORef (Int)
    , vK_Q :: IORef (Int)
    , vK_R :: IORef (Int)
    , vK_S :: IORef (Int)
    , vK_T :: IORef (Int)
    , vK_U :: IORef (Int)
    , vK_V :: IORef (Int)
    , vK_W :: IORef (Int)
    , vK_X :: IORef (Int)
    , vK_Y :: IORef (Int)
    , vK_Z :: IORef (Int)
    , vK_OPEN_BRACKET :: IORef (Int)
    , vK_BACK_SLASH :: IORef (Int)
    , vK_CLOSE_BRACKET :: IORef (Int)
    , vK_NUMPAD0 :: IORef (Int)
    , vK_NUMPAD1 :: IORef (Int)
    , vK_NUMPAD2 :: IORef (Int)
    , vK_NUMPAD3 :: IORef (Int)
    , vK_NUMPAD4 :: IORef (Int)
    , vK_NUMPAD5 :: IORef (Int)
    , vK_NUMPAD6 :: IORef (Int)
    , vK_NUMPAD7 :: IORef (Int)
    , vK_NUMPAD8 :: IORef (Int)
    , vK_NUMPAD9 :: IORef (Int)
    , vK_MULTIPLY :: IORef (Int)
    , vK_ADD :: IORef (Int)
    , vK_SEPARATER :: IORef (Int)
    , vK_SEPARATOR :: IORef (Int)
    , vK_SUBTRACT :: IORef (Int)
    , vK_DECIMAL :: IORef (Int)
    , vK_DIVIDE :: IORef (Int)
    , vK_DELETE :: IORef (Int)
    , vK_NUM_LOCK :: IORef (Int)
    , vK_SCROLL_LOCK :: IORef (Int)
    , vK_F1 :: IORef (Int)
    , vK_F2 :: IORef (Int)
    , vK_F3 :: IORef (Int)
    , vK_F4 :: IORef (Int)
    , vK_F5 :: IORef (Int)
    , vK_F6 :: IORef (Int)
    , vK_F7 :: IORef (Int)
    , vK_F8 :: IORef (Int)
    , vK_F9 :: IORef (Int)
    , vK_F10 :: IORef (Int)
    , vK_F11 :: IORef (Int)
    , vK_F12 :: IORef (Int)
    , vK_F13 :: IORef (Int)
    , vK_F14 :: IORef (Int)
    , vK_F15 :: IORef (Int)
    , vK_F16 :: IORef (Int)
    , vK_F17 :: IORef (Int)
    , vK_F18 :: IORef (Int)
    , vK_F19 :: IORef (Int)
    , vK_F20 :: IORef (Int)
    , vK_F21 :: IORef (Int)
    , vK_F22 :: IORef (Int)
    , vK_F23 :: IORef (Int)
    , vK_F24 :: IORef (Int)
    , vK_PRINTSCREEN :: IORef (Int)
    , vK_INSERT :: IORef (Int)
    , vK_HELP :: IORef (Int)
    , vK_META :: IORef (Int)
    , vK_BACK_QUOTE :: IORef (Int)
    , vK_QUOTE :: IORef (Int)
    , vK_KP_UP :: IORef (Int)
    , vK_KP_DOWN :: IORef (Int)
    , vK_KP_LEFT :: IORef (Int)
    , vK_KP_RIGHT :: IORef (Int)
    , vK_DEAD_GRAVE :: IORef (Int)
    , vK_DEAD_ACUTE :: IORef (Int)
    , vK_DEAD_CIRCUMFLEX :: IORef (Int)
    , vK_DEAD_TILDE :: IORef (Int)
    , vK_DEAD_MACRON :: IORef (Int)
    , vK_DEAD_BREVE :: IORef (Int)
    , vK_DEAD_ABOVEDOT :: IORef (Int)
    , vK_DEAD_DIAERESIS :: IORef (Int)
    , vK_DEAD_ABOVERING :: IORef (Int)
    , vK_DEAD_DOUBLEACUTE :: IORef (Int)
    , vK_DEAD_CARON :: IORef (Int)
    , vK_DEAD_CEDILLA :: IORef (Int)
    , vK_DEAD_OGONEK :: IORef (Int)
    , vK_DEAD_IOTA :: IORef (Int)
    , vK_DEAD_VOICED_SOUND :: IORef (Int)
    , vK_DEAD_SEMIVOICED_SOUND :: IORef (Int)
    , vK_AMPERSAND :: IORef (Int)
    , vK_ASTERISK :: IORef (Int)
    , vK_QUOTEDBL :: IORef (Int)
    , vK_LESS :: IORef (Int)
    , vK_GREATER :: IORef (Int)
    , vK_BRACELEFT :: IORef (Int)
    , vK_BRACERIGHT :: IORef (Int)
    , vK_AT :: IORef (Int)
    , vK_COLON :: IORef (Int)
    , vK_CIRCUMFLEX :: IORef (Int)
    , vK_DOLLAR :: IORef (Int)
    , vK_EURO_SIGN :: IORef (Int)
    , vK_EXCLAMATION_MARK :: IORef (Int)
    , vK_INVERTED_EXCLAMATION_MARK :: IORef (Int)
    , vK_LEFT_PARENTHESIS :: IORef (Int)
    , vK_NUMBER_SIGN :: IORef (Int)
    , vK_PLUS :: IORef (Int)
    , vK_RIGHT_PARENTHESIS :: IORef (Int)
    , vK_UNDERSCORE :: IORef (Int)
    , vK_WINDOWS :: IORef (Int)
    , vK_CONTEXT_MENU :: IORef (Int)
    , vK_FINAL :: IORef (Int)
    , vK_CONVERT :: IORef (Int)
    , vK_NONCONVERT :: IORef (Int)
    , vK_ACCEPT :: IORef (Int)
    , vK_MODECHANGE :: IORef (Int)
    , vK_KANA :: IORef (Int)
    , vK_KANJI :: IORef (Int)
    , vK_ALPHANUMERIC :: IORef (Int)
    , vK_KATAKANA :: IORef (Int)
    , vK_HIRAGANA :: IORef (Int)
    , vK_FULL_WIDTH :: IORef (Int)
    , vK_HALF_WIDTH :: IORef (Int)
    , vK_ROMAN_CHARACTERS :: IORef (Int)
    , vK_ALL_CANDIDATES :: IORef (Int)
    , vK_PREVIOUS_CANDIDATE :: IORef (Int)
    , vK_CODE_INPUT :: IORef (Int)
    , vK_JAPANESE_KATAKANA :: IORef (Int)
    , vK_JAPANESE_HIRAGANA :: IORef (Int)
    , vK_JAPANESE_ROMAN :: IORef (Int)
    , vK_KANA_LOCK :: IORef (Int)
    , vK_INPUT_METHOD_ON_OFF :: IORef (Int)
    , vK_CUT :: IORef (Int)
    , vK_COPY :: IORef (Int)
    , vK_PASTE :: IORef (Int)
    , vK_UNDO :: IORef (Int)
    , vK_AGAIN :: IORef (Int)
    , vK_FIND :: IORef (Int)
    , vK_PROPS :: IORef (Int)
    , vK_STOP :: IORef (Int)
    , vK_COMPOSE :: IORef (Int)
    , vK_ALT_GRAPH :: IORef (Int)
    , vK_BEGIN :: IORef (Int)
    , vK_UNDEFINED :: IORef (Int)
    }

instance JavaNull ABKeyEventWrapper where
    javaNull = javaNullRecord "ABKeyEventWrapper"

instance JavaEquals ABKeyEventWrapper where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ABKeyEventWrapper where
    (==) = jrecordEquals

instance JavaObjectClass ABKeyEventWrapper where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ABKeyEventWrapper
newRecord_ = do
    header_ <- newJavaHeader
    vK_ENTER <- newIORef 0
    vK_BACK_SPACE <- newIORef 0
    vK_TAB <- newIORef 0
    vK_CANCEL <- newIORef 0
    vK_CLEAR <- newIORef 0
    vK_SHIFT <- newIORef 0
    vK_CONTROL <- newIORef 0
    vK_ALT <- newIORef 0
    vK_PAUSE <- newIORef 0
    vK_CAPS_LOCK <- newIORef 0
    vK_ESCAPE <- newIORef 0
    vK_SPACE <- newIORef 0
    vK_PAGE_UP <- newIORef 0
    vK_PAGE_DOWN <- newIORef 0
    vK_END <- newIORef 0
    vK_HOME <- newIORef 0
    vK_LEFT <- newIORef 0
    vK_UP <- newIORef 0
    vK_RIGHT <- newIORef 0
    vK_DOWN <- newIORef 0
    vK_COMMA <- newIORef 0
    vK_MINUS <- newIORef 0
    vK_PERIOD <- newIORef 0
    vK_SLASH <- newIORef 0
    vK_0 <- newIORef 0
    vK_1 <- newIORef 0
    vK_2 <- newIORef 0
    vK_3 <- newIORef 0
    vK_4 <- newIORef 0
    vK_5 <- newIORef 0
    vK_6 <- newIORef 0
    vK_7 <- newIORef 0
    vK_8 <- newIORef 0
    vK_9 <- newIORef 0
    vK_SEMICOLON <- newIORef 0
    vK_EQUALS <- newIORef 0
    vK_A <- newIORef 0
    vK_B <- newIORef 0
    vK_C <- newIORef 0
    vK_D <- newIORef 0
    vK_E <- newIORef 0
    vK_F <- newIORef 0
    vK_G <- newIORef 0
    vK_H <- newIORef 0
    vK_I <- newIORef 0
    vK_J <- newIORef 0
    vK_K <- newIORef 0
    vK_L <- newIORef 0
    vK_M <- newIORef 0
    vK_N <- newIORef 0
    vK_O <- newIORef 0
    vK_P <- newIORef 0
    vK_Q <- newIORef 0
    vK_R <- newIORef 0
    vK_S <- newIORef 0
    vK_T <- newIORef 0
    vK_U <- newIORef 0
    vK_V <- newIORef 0
    vK_W <- newIORef 0
    vK_X <- newIORef 0
    vK_Y <- newIORef 0
    vK_Z <- newIORef 0
    vK_OPEN_BRACKET <- newIORef 0
    vK_BACK_SLASH <- newIORef 0
    vK_CLOSE_BRACKET <- newIORef 0
    vK_NUMPAD0 <- newIORef 0
    vK_NUMPAD1 <- newIORef 0
    vK_NUMPAD2 <- newIORef 0
    vK_NUMPAD3 <- newIORef 0
    vK_NUMPAD4 <- newIORef 0
    vK_NUMPAD5 <- newIORef 0
    vK_NUMPAD6 <- newIORef 0
    vK_NUMPAD7 <- newIORef 0
    vK_NUMPAD8 <- newIORef 0
    vK_NUMPAD9 <- newIORef 0
    vK_MULTIPLY <- newIORef 0
    vK_ADD <- newIORef 0
    vK_SEPARATER <- newIORef 0
    vK_SEPARATOR <- newIORef 0
    vK_SUBTRACT <- newIORef 0
    vK_DECIMAL <- newIORef 0
    vK_DIVIDE <- newIORef 0
    vK_DELETE <- newIORef 0
    vK_NUM_LOCK <- newIORef 0
    vK_SCROLL_LOCK <- newIORef 0
    vK_F1 <- newIORef 0
    vK_F2 <- newIORef 0
    vK_F3 <- newIORef 0
    vK_F4 <- newIORef 0
    vK_F5 <- newIORef 0
    vK_F6 <- newIORef 0
    vK_F7 <- newIORef 0
    vK_F8 <- newIORef 0
    vK_F9 <- newIORef 0
    vK_F10 <- newIORef 0
    vK_F11 <- newIORef 0
    vK_F12 <- newIORef 0
    vK_F13 <- newIORef 0
    vK_F14 <- newIORef 0
    vK_F15 <- newIORef 0
    vK_F16 <- newIORef 0
    vK_F17 <- newIORef 0
    vK_F18 <- newIORef 0
    vK_F19 <- newIORef 0
    vK_F20 <- newIORef 0
    vK_F21 <- newIORef 0
    vK_F22 <- newIORef 0
    vK_F23 <- newIORef 0
    vK_F24 <- newIORef 0
    vK_PRINTSCREEN <- newIORef 0
    vK_INSERT <- newIORef 0
    vK_HELP <- newIORef 0
    vK_META <- newIORef 0
    vK_BACK_QUOTE <- newIORef 0
    vK_QUOTE <- newIORef 0
    vK_KP_UP <- newIORef 0
    vK_KP_DOWN <- newIORef 0
    vK_KP_LEFT <- newIORef 0
    vK_KP_RIGHT <- newIORef 0
    vK_DEAD_GRAVE <- newIORef 0
    vK_DEAD_ACUTE <- newIORef 0
    vK_DEAD_CIRCUMFLEX <- newIORef 0
    vK_DEAD_TILDE <- newIORef 0
    vK_DEAD_MACRON <- newIORef 0
    vK_DEAD_BREVE <- newIORef 0
    vK_DEAD_ABOVEDOT <- newIORef 0
    vK_DEAD_DIAERESIS <- newIORef 0
    vK_DEAD_ABOVERING <- newIORef 0
    vK_DEAD_DOUBLEACUTE <- newIORef 0
    vK_DEAD_CARON <- newIORef 0
    vK_DEAD_CEDILLA <- newIORef 0
    vK_DEAD_OGONEK <- newIORef 0
    vK_DEAD_IOTA <- newIORef 0
    vK_DEAD_VOICED_SOUND <- newIORef 0
    vK_DEAD_SEMIVOICED_SOUND <- newIORef 0
    vK_AMPERSAND <- newIORef 0
    vK_ASTERISK <- newIORef 0
    vK_QUOTEDBL <- newIORef 0
    vK_LESS <- newIORef 0
    vK_GREATER <- newIORef 0
    vK_BRACELEFT <- newIORef 0
    vK_BRACERIGHT <- newIORef 0
    vK_AT <- newIORef 0
    vK_COLON <- newIORef 0
    vK_CIRCUMFLEX <- newIORef 0
    vK_DOLLAR <- newIORef 0
    vK_EURO_SIGN <- newIORef 0
    vK_EXCLAMATION_MARK <- newIORef 0
    vK_INVERTED_EXCLAMATION_MARK <- newIORef 0
    vK_LEFT_PARENTHESIS <- newIORef 0
    vK_NUMBER_SIGN <- newIORef 0
    vK_PLUS <- newIORef 0
    vK_RIGHT_PARENTHESIS <- newIORef 0
    vK_UNDERSCORE <- newIORef 0
    vK_WINDOWS <- newIORef 0
    vK_CONTEXT_MENU <- newIORef 0
    vK_FINAL <- newIORef 0
    vK_CONVERT <- newIORef 0
    vK_NONCONVERT <- newIORef 0
    vK_ACCEPT <- newIORef 0
    vK_MODECHANGE <- newIORef 0
    vK_KANA <- newIORef 0
    vK_KANJI <- newIORef 0
    vK_ALPHANUMERIC <- newIORef 0
    vK_KATAKANA <- newIORef 0
    vK_HIRAGANA <- newIORef 0
    vK_FULL_WIDTH <- newIORef 0
    vK_HALF_WIDTH <- newIORef 0
    vK_ROMAN_CHARACTERS <- newIORef 0
    vK_ALL_CANDIDATES <- newIORef 0
    vK_PREVIOUS_CANDIDATE <- newIORef 0
    vK_CODE_INPUT <- newIORef 0
    vK_JAPANESE_KATAKANA <- newIORef 0
    vK_JAPANESE_HIRAGANA <- newIORef 0
    vK_JAPANESE_ROMAN <- newIORef 0
    vK_KANA_LOCK <- newIORef 0
    vK_INPUT_METHOD_ON_OFF <- newIORef 0
    vK_CUT <- newIORef 0
    vK_COPY <- newIORef 0
    vK_PASTE <- newIORef 0
    vK_UNDO <- newIORef 0
    vK_AGAIN <- newIORef 0
    vK_FIND <- newIORef 0
    vK_PROPS <- newIORef 0
    vK_STOP <- newIORef 0
    vK_COMPOSE <- newIORef 0
    vK_ALT_GRAPH <- newIORef 0
    vK_BEGIN <- newIORef 0
    vK_UNDEFINED <- newIORef 0
    let this = ABKeyEventWrapper header_ vK_ENTER vK_BACK_SPACE vK_TAB vK_CANCEL vK_CLEAR vK_SHIFT vK_CONTROL vK_ALT vK_PAUSE vK_CAPS_LOCK vK_ESCAPE vK_SPACE vK_PAGE_UP vK_PAGE_DOWN vK_END vK_HOME vK_LEFT vK_UP vK_RIGHT vK_DOWN vK_COMMA vK_MINUS vK_PERIOD vK_SLASH vK_0 vK_1 vK_2 vK_3 vK_4 vK_5 vK_6 vK_7 vK_8 vK_9 vK_SEMICOLON vK_EQUALS vK_A vK_B vK_C vK_D vK_E vK_F vK_G vK_H vK_I vK_J vK_K vK_L vK_M vK_N vK_O vK_P vK_Q vK_R vK_S vK_T vK_U vK_V vK_W vK_X vK_Y vK_Z vK_OPEN_BRACKET vK_BACK_SLASH vK_CLOSE_BRACKET vK_NUMPAD0 vK_NUMPAD1 vK_NUMPAD2 vK_NUMPAD3 vK_NUMPAD4 vK_NUMPAD5 vK_NUMPAD6 vK_NUMPAD7 vK_NUMPAD8 vK_NUMPAD9 vK_MULTIPLY vK_ADD vK_SEPARATER vK_SEPARATOR vK_SUBTRACT vK_DECIMAL vK_DIVIDE vK_DELETE vK_NUM_LOCK vK_SCROLL_LOCK vK_F1 vK_F2 vK_F3 vK_F4 vK_F5 vK_F6 vK_F7 vK_F8 vK_F9 vK_F10 vK_F11 vK_F12 vK_F13 vK_F14 vK_F15 vK_F16 vK_F17 vK_F18 vK_F19 vK_F20 vK_F21 vK_F22 vK_F23 vK_F24 vK_PRINTSCREEN vK_INSERT vK_HELP vK_META vK_BACK_QUOTE vK_QUOTE vK_KP_UP vK_KP_DOWN vK_KP_LEFT vK_KP_RIGHT vK_DEAD_GRAVE vK_DEAD_ACUTE vK_DEAD_CIRCUMFLEX vK_DEAD_TILDE vK_DEAD_MACRON vK_DEAD_BREVE vK_DEAD_ABOVEDOT vK_DEAD_DIAERESIS vK_DEAD_ABOVERING vK_DEAD_DOUBLEACUTE vK_DEAD_CARON vK_DEAD_CEDILLA vK_DEAD_OGONEK vK_DEAD_IOTA vK_DEAD_VOICED_SOUND vK_DEAD_SEMIVOICED_SOUND vK_AMPERSAND vK_ASTERISK vK_QUOTEDBL vK_LESS vK_GREATER vK_BRACELEFT vK_BRACERIGHT vK_AT vK_COLON vK_CIRCUMFLEX vK_DOLLAR vK_EURO_SIGN vK_EXCLAMATION_MARK vK_INVERTED_EXCLAMATION_MARK vK_LEFT_PARENTHESIS vK_NUMBER_SIGN vK_PLUS vK_RIGHT_PARENTHESIS vK_UNDERSCORE vK_WINDOWS vK_CONTEXT_MENU vK_FINAL vK_CONVERT vK_NONCONVERT vK_ACCEPT vK_MODECHANGE vK_KANA vK_KANJI vK_ALPHANUMERIC vK_KATAKANA vK_HIRAGANA vK_FULL_WIDTH vK_HALF_WIDTH vK_ROMAN_CHARACTERS vK_ALL_CANDIDATES vK_PREVIOUS_CANDIDATE vK_CODE_INPUT vK_JAPANESE_KATAKANA vK_JAPANESE_HIRAGANA vK_JAPANESE_ROMAN vK_KANA_LOCK vK_INPUT_METHOD_ON_OFF vK_CUT vK_COPY vK_PASTE vK_UNDO vK_AGAIN vK_FIND vK_PROPS vK_STOP vK_COMPOSE vK_ALT_GRAPH vK_BEGIN vK_UNDEFINED
    jregisterLevel header_ this
    pure this

initFields_ :: ABKeyEventWrapper -> IO ()
initFields_ this = do
    jset this.vK_ENTER (KeyEvent.vK_ENTER)
    jset this.vK_BACK_SPACE (KeyEvent.vK_BACK_SPACE)
    jset this.vK_TAB (KeyEvent.vK_TAB)
    jset this.vK_CANCEL (KeyEvent.vK_CANCEL)
    jset this.vK_CLEAR (KeyEvent.vK_CLEAR)
    jset this.vK_SHIFT (KeyEvent.vK_SHIFT)
    jset this.vK_CONTROL (KeyEvent.vK_CONTROL)
    jset this.vK_ALT (KeyEvent.vK_ALT)
    jset this.vK_PAUSE (KeyEvent.vK_PAUSE)
    jset this.vK_CAPS_LOCK (KeyEvent.vK_CAPS_LOCK)
    jset this.vK_ESCAPE (KeyEvent.vK_ESCAPE)
    jset this.vK_SPACE (KeyEvent.vK_SPACE)
    jset this.vK_PAGE_UP (KeyEvent.vK_PAGE_UP)
    jset this.vK_PAGE_DOWN (KeyEvent.vK_PAGE_DOWN)
    jset this.vK_END (KeyEvent.vK_END)
    jset this.vK_HOME (KeyEvent.vK_HOME)
    jset this.vK_LEFT (KeyEvent.vK_LEFT)
    jset this.vK_UP (KeyEvent.vK_UP)
    jset this.vK_RIGHT (KeyEvent.vK_RIGHT)
    jset this.vK_DOWN (KeyEvent.vK_DOWN)
    jset this.vK_COMMA (KeyEvent.vK_COMMA)
    jset this.vK_MINUS (KeyEvent.vK_MINUS)
    jset this.vK_PERIOD (KeyEvent.vK_PERIOD)
    jset this.vK_SLASH (KeyEvent.vK_SLASH)
    jset this.vK_0 (KeyEvent.vK_0)
    jset this.vK_1 (KeyEvent.vK_1)
    jset this.vK_2 (KeyEvent.vK_2)
    jset this.vK_3 (KeyEvent.vK_3)
    jset this.vK_4 (KeyEvent.vK_4)
    jset this.vK_5 (KeyEvent.vK_5)
    jset this.vK_6 (KeyEvent.vK_6)
    jset this.vK_7 (KeyEvent.vK_7)
    jset this.vK_8 (KeyEvent.vK_8)
    jset this.vK_9 (KeyEvent.vK_9)
    jset this.vK_SEMICOLON (KeyEvent.vK_SEMICOLON)
    jset this.vK_EQUALS (KeyEvent.vK_EQUALS)
    jset this.vK_A (KeyEvent.vK_A)
    jset this.vK_B (KeyEvent.vK_B)
    jset this.vK_C (KeyEvent.vK_C)
    jset this.vK_D (KeyEvent.vK_D)
    jset this.vK_E (KeyEvent.vK_E)
    jset this.vK_F (KeyEvent.vK_F)
    jset this.vK_G (KeyEvent.vK_G)
    jset this.vK_H (KeyEvent.vK_H)
    jset this.vK_I (KeyEvent.vK_I)
    jset this.vK_J (KeyEvent.vK_J)
    jset this.vK_K (KeyEvent.vK_K)
    jset this.vK_L (KeyEvent.vK_L)
    jset this.vK_M (KeyEvent.vK_M)
    jset this.vK_N (KeyEvent.vK_N)
    jset this.vK_O (KeyEvent.vK_O)
    jset this.vK_P (KeyEvent.vK_P)
    jset this.vK_Q (KeyEvent.vK_Q)
    jset this.vK_R (KeyEvent.vK_R)
    jset this.vK_S (KeyEvent.vK_S)
    jset this.vK_T (KeyEvent.vK_T)
    jset this.vK_U (KeyEvent.vK_U)
    jset this.vK_V (KeyEvent.vK_V)
    jset this.vK_W (KeyEvent.vK_W)
    jset this.vK_X (KeyEvent.vK_X)
    jset this.vK_Y (KeyEvent.vK_Y)
    jset this.vK_Z (KeyEvent.vK_Z)
    jset this.vK_OPEN_BRACKET (KeyEvent.vK_OPEN_BRACKET)
    jset this.vK_BACK_SLASH (KeyEvent.vK_BACK_SLASH)
    jset this.vK_CLOSE_BRACKET (KeyEvent.vK_CLOSE_BRACKET)
    jset this.vK_NUMPAD0 (KeyEvent.vK_NUMPAD0)
    jset this.vK_NUMPAD1 (KeyEvent.vK_NUMPAD1)
    jset this.vK_NUMPAD2 (KeyEvent.vK_NUMPAD2)
    jset this.vK_NUMPAD3 (KeyEvent.vK_NUMPAD3)
    jset this.vK_NUMPAD4 (KeyEvent.vK_NUMPAD4)
    jset this.vK_NUMPAD5 (KeyEvent.vK_NUMPAD5)
    jset this.vK_NUMPAD6 (KeyEvent.vK_NUMPAD6)
    jset this.vK_NUMPAD7 (KeyEvent.vK_NUMPAD7)
    jset this.vK_NUMPAD8 (KeyEvent.vK_NUMPAD8)
    jset this.vK_NUMPAD9 (KeyEvent.vK_NUMPAD9)
    jset this.vK_MULTIPLY (KeyEvent.vK_MULTIPLY)
    jset this.vK_ADD (KeyEvent.vK_ADD)
    jset this.vK_SEPARATER (KeyEvent.vK_SEPARATER)
    jset this.vK_SEPARATOR (KeyEvent.vK_SEPARATOR)
    jset this.vK_SUBTRACT (KeyEvent.vK_SUBTRACT)
    jset this.vK_DECIMAL (KeyEvent.vK_DECIMAL)
    jset this.vK_DIVIDE (KeyEvent.vK_DIVIDE)
    jset this.vK_DELETE (KeyEvent.vK_DELETE)
    jset this.vK_NUM_LOCK (KeyEvent.vK_NUM_LOCK)
    jset this.vK_SCROLL_LOCK (KeyEvent.vK_SCROLL_LOCK)
    jset this.vK_F1 (KeyEvent.vK_F1)
    jset this.vK_F2 (KeyEvent.vK_F2)
    jset this.vK_F3 (KeyEvent.vK_F3)
    jset this.vK_F4 (KeyEvent.vK_F4)
    jset this.vK_F5 (KeyEvent.vK_F5)
    jset this.vK_F6 (KeyEvent.vK_F6)
    jset this.vK_F7 (KeyEvent.vK_F7)
    jset this.vK_F8 (KeyEvent.vK_F8)
    jset this.vK_F9 (KeyEvent.vK_F9)
    jset this.vK_F10 (KeyEvent.vK_F10)
    jset this.vK_F11 (KeyEvent.vK_F11)
    jset this.vK_F12 (KeyEvent.vK_F12)
    jset this.vK_F13 (KeyEvent.vK_F13)
    jset this.vK_F14 (KeyEvent.vK_F14)
    jset this.vK_F15 (KeyEvent.vK_F15)
    jset this.vK_F16 (KeyEvent.vK_F16)
    jset this.vK_F17 (KeyEvent.vK_F17)
    jset this.vK_F18 (KeyEvent.vK_F18)
    jset this.vK_F19 (KeyEvent.vK_F19)
    jset this.vK_F20 (KeyEvent.vK_F20)
    jset this.vK_F21 (KeyEvent.vK_F21)
    jset this.vK_F22 (KeyEvent.vK_F22)
    jset this.vK_F23 (KeyEvent.vK_F23)
    jset this.vK_F24 (KeyEvent.vK_F24)
    jset this.vK_PRINTSCREEN (KeyEvent.vK_PRINTSCREEN)
    jset this.vK_INSERT (KeyEvent.vK_INSERT)
    jset this.vK_HELP (KeyEvent.vK_HELP)
    jset this.vK_META (KeyEvent.vK_META)
    jset this.vK_BACK_QUOTE (KeyEvent.vK_BACK_QUOTE)
    jset this.vK_QUOTE (KeyEvent.vK_QUOTE)
    jset this.vK_KP_UP (KeyEvent.vK_KP_UP)
    jset this.vK_KP_DOWN (KeyEvent.vK_KP_DOWN)
    jset this.vK_KP_LEFT (KeyEvent.vK_KP_LEFT)
    jset this.vK_KP_RIGHT (KeyEvent.vK_KP_RIGHT)
    jset this.vK_DEAD_GRAVE (KeyEvent.vK_DEAD_GRAVE)
    jset this.vK_DEAD_ACUTE (KeyEvent.vK_DEAD_ACUTE)
    jset this.vK_DEAD_CIRCUMFLEX (KeyEvent.vK_DEAD_CIRCUMFLEX)
    jset this.vK_DEAD_TILDE (KeyEvent.vK_DEAD_TILDE)
    jset this.vK_DEAD_MACRON (KeyEvent.vK_DEAD_MACRON)
    jset this.vK_DEAD_BREVE (KeyEvent.vK_DEAD_BREVE)
    jset this.vK_DEAD_ABOVEDOT (KeyEvent.vK_DEAD_ABOVEDOT)
    jset this.vK_DEAD_DIAERESIS (KeyEvent.vK_DEAD_DIAERESIS)
    jset this.vK_DEAD_ABOVERING (KeyEvent.vK_DEAD_ABOVERING)
    jset this.vK_DEAD_DOUBLEACUTE (KeyEvent.vK_DEAD_DOUBLEACUTE)
    jset this.vK_DEAD_CARON (KeyEvent.vK_DEAD_CARON)
    jset this.vK_DEAD_CEDILLA (KeyEvent.vK_DEAD_CEDILLA)
    jset this.vK_DEAD_OGONEK (KeyEvent.vK_DEAD_OGONEK)
    jset this.vK_DEAD_IOTA (KeyEvent.vK_DEAD_IOTA)
    jset this.vK_DEAD_VOICED_SOUND (KeyEvent.vK_DEAD_VOICED_SOUND)
    jset this.vK_DEAD_SEMIVOICED_SOUND (KeyEvent.vK_DEAD_SEMIVOICED_SOUND)
    jset this.vK_AMPERSAND (KeyEvent.vK_AMPERSAND)
    jset this.vK_ASTERISK (KeyEvent.vK_ASTERISK)
    jset this.vK_QUOTEDBL (KeyEvent.vK_QUOTEDBL)
    jset this.vK_LESS (KeyEvent.vK_LESS)
    jset this.vK_GREATER (KeyEvent.vK_GREATER)
    jset this.vK_BRACELEFT (KeyEvent.vK_BRACELEFT)
    jset this.vK_BRACERIGHT (KeyEvent.vK_BRACERIGHT)
    jset this.vK_AT (KeyEvent.vK_AT)
    jset this.vK_COLON (KeyEvent.vK_COLON)
    jset this.vK_CIRCUMFLEX (KeyEvent.vK_CIRCUMFLEX)
    jset this.vK_DOLLAR (KeyEvent.vK_DOLLAR)
    jset this.vK_EURO_SIGN (KeyEvent.vK_EURO_SIGN)
    jset this.vK_EXCLAMATION_MARK (KeyEvent.vK_EXCLAMATION_MARK)
    jset this.vK_INVERTED_EXCLAMATION_MARK (KeyEvent.vK_INVERTED_EXCLAMATION_MARK)
    jset this.vK_LEFT_PARENTHESIS (KeyEvent.vK_LEFT_PARENTHESIS)
    jset this.vK_NUMBER_SIGN (KeyEvent.vK_NUMBER_SIGN)
    jset this.vK_PLUS (KeyEvent.vK_PLUS)
    jset this.vK_RIGHT_PARENTHESIS (KeyEvent.vK_RIGHT_PARENTHESIS)
    jset this.vK_UNDERSCORE (KeyEvent.vK_UNDERSCORE)
    jset this.vK_WINDOWS (KeyEvent.vK_WINDOWS)
    jset this.vK_CONTEXT_MENU (KeyEvent.vK_CONTEXT_MENU)
    jset this.vK_FINAL (KeyEvent.vK_FINAL)
    jset this.vK_CONVERT (KeyEvent.vK_CONVERT)
    jset this.vK_NONCONVERT (KeyEvent.vK_NONCONVERT)
    jset this.vK_ACCEPT (KeyEvent.vK_ACCEPT)
    jset this.vK_MODECHANGE (KeyEvent.vK_MODECHANGE)
    jset this.vK_KANA (KeyEvent.vK_KANA)
    jset this.vK_KANJI (KeyEvent.vK_KANJI)
    jset this.vK_ALPHANUMERIC (KeyEvent.vK_ALPHANUMERIC)
    jset this.vK_KATAKANA (KeyEvent.vK_KATAKANA)
    jset this.vK_HIRAGANA (KeyEvent.vK_HIRAGANA)
    jset this.vK_FULL_WIDTH (KeyEvent.vK_FULL_WIDTH)
    jset this.vK_HALF_WIDTH (KeyEvent.vK_HALF_WIDTH)
    jset this.vK_ROMAN_CHARACTERS (KeyEvent.vK_ROMAN_CHARACTERS)
    jset this.vK_ALL_CANDIDATES (KeyEvent.vK_ALL_CANDIDATES)
    jset this.vK_PREVIOUS_CANDIDATE (KeyEvent.vK_PREVIOUS_CANDIDATE)
    jset this.vK_CODE_INPUT (KeyEvent.vK_CODE_INPUT)
    jset this.vK_JAPANESE_KATAKANA (KeyEvent.vK_JAPANESE_KATAKANA)
    jset this.vK_JAPANESE_HIRAGANA (KeyEvent.vK_JAPANESE_HIRAGANA)
    jset this.vK_JAPANESE_ROMAN (KeyEvent.vK_JAPANESE_ROMAN)
    jset this.vK_KANA_LOCK (KeyEvent.vK_KANA_LOCK)
    jset this.vK_INPUT_METHOD_ON_OFF (KeyEvent.vK_INPUT_METHOD_ON_OFF)
    jset this.vK_CUT (KeyEvent.vK_CUT)
    jset this.vK_COPY (KeyEvent.vK_COPY)
    jset this.vK_PASTE (KeyEvent.vK_PASTE)
    jset this.vK_UNDO (KeyEvent.vK_UNDO)
    jset this.vK_AGAIN (KeyEvent.vK_AGAIN)
    jset this.vK_FIND (KeyEvent.vK_FIND)
    jset this.vK_PROPS (KeyEvent.vK_PROPS)
    jset this.vK_STOP (KeyEvent.vK_STOP)
    jset this.vK_COMPOSE (KeyEvent.vK_COMPOSE)
    jset this.vK_ALT_GRAPH (KeyEvent.vK_ALT_GRAPH)
    jset this.vK_BEGIN (KeyEvent.vK_BEGIN)
    jset this.vK_UNDEFINED (KeyEvent.vK_UNDEFINED)
    pure ()

new_ :: IO ABKeyEventWrapper
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ABKeyEventWrapper -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (ABKeyEventWrapper)
getInstance = do
        pure (ABKeyEventWrapper.instance_)


