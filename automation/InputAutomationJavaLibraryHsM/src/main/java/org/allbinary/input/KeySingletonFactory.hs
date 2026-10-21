{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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
-- package org.allbinary.input
module KeySingletonFactory where

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
import qualified Any -- same package or java.lang
import qualified KeyEvent -- java.awt.event.KeyEvent
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified ABHashtable -- org.allbinary.util.ABHashtable

data KeySingletonFactory = KeySingletonFactory
    { header_ :: JavaHeader
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull KeySingletonFactory where
    javaNull = javaNullRecord "KeySingletonFactory"

instance JavaEquals KeySingletonFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq KeySingletonFactory where
    (==) = jrecordEquals

instance JavaObjectClass KeySingletonFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE keyStringHashtable #-}
keyStringHashtable = unsafePerformIO ((StdUtil.createHashtable ((jio (StdUtil.getInstance)))) >>= newIORef)

{-# NOINLINE keyArray #-}
keyArray = unsafePerformIO (newIORef ((jarrayFromList [KeyEvent.vK_0, KeyEvent.vK_1, KeyEvent.vK_2, KeyEvent.vK_3, KeyEvent.vK_4, KeyEvent.vK_5, KeyEvent.vK_6, KeyEvent.vK_7, KeyEvent.vK_8, KeyEvent.vK_9, KeyEvent.vK_A, KeyEvent.vK_B, KeyEvent.vK_C, KeyEvent.vK_D, KeyEvent.vK_E, KeyEvent.vK_F, KeyEvent.vK_G, KeyEvent.vK_H, KeyEvent.vK_I, KeyEvent.vK_J, KeyEvent.vK_K, KeyEvent.vK_L, KeyEvent.vK_M, KeyEvent.vK_N, KeyEvent.vK_O, KeyEvent.vK_Q, KeyEvent.vK_R, KeyEvent.vK_S, KeyEvent.vK_T, KeyEvent.vK_U, KeyEvent.vK_V, KeyEvent.vK_W, KeyEvent.vK_X, KeyEvent.vK_Y, KeyEvent.vK_Z, KeyEvent.vK_NUMPAD0, KeyEvent.vK_NUMPAD1, KeyEvent.vK_NUMPAD2, KeyEvent.vK_NUMPAD3, KeyEvent.vK_NUMPAD4, KeyEvent.vK_NUMPAD5, KeyEvent.vK_NUMPAD6, KeyEvent.vK_NUMPAD7, KeyEvent.vK_NUMPAD8, KeyEvent.vK_NUMPAD9, KeyEvent.vK_NUM_LOCK, KeyEvent.vK_F1, KeyEvent.vK_F2, KeyEvent.vK_F3, KeyEvent.vK_F4, KeyEvent.vK_F5, KeyEvent.vK_F6, KeyEvent.vK_F7, KeyEvent.vK_F8, KeyEvent.vK_F9, KeyEvent.vK_F10, KeyEvent.vK_F11, KeyEvent.vK_F12, KeyEvent.vK_F13, KeyEvent.vK_F14, KeyEvent.vK_F15, KeyEvent.vK_F16, KeyEvent.vK_F17, KeyEvent.vK_F18, KeyEvent.vK_F19, KeyEvent.vK_F20, KeyEvent.vK_F21, KeyEvent.vK_F22, KeyEvent.vK_F23, KeyEvent.vK_F24, KeyEvent.vK_ACCEPT, KeyEvent.vK_ADD, KeyEvent.vK_AGAIN, KeyEvent.vK_ALL_CANDIDATES, KeyEvent.vK_ALPHANUMERIC, KeyEvent.vK_ALT, KeyEvent.vK_ALT_GRAPH, KeyEvent.vK_AMPERSAND, KeyEvent.vK_ASTERISK, KeyEvent.vK_AT, KeyEvent.vK_BACK_QUOTE, KeyEvent.vK_BACK_SLASH, KeyEvent.vK_BACK_SPACE, KeyEvent.vK_BEGIN, KeyEvent.vK_BRACELEFT, KeyEvent.vK_BRACERIGHT, KeyEvent.vK_CANCEL, KeyEvent.vK_CAPS_LOCK, KeyEvent.vK_CIRCUMFLEX, KeyEvent.vK_CLEAR, KeyEvent.vK_CLOSE_BRACKET, KeyEvent.vK_CODE_INPUT, KeyEvent.vK_COLON, KeyEvent.vK_COMMA, KeyEvent.vK_COMPOSE, KeyEvent.vK_CONTEXT_MENU, KeyEvent.vK_CONTROL, KeyEvent.vK_CONVERT, KeyEvent.vK_COPY, KeyEvent.vK_CUT, KeyEvent.vK_DEAD_ABOVEDOT, KeyEvent.vK_DEAD_ABOVERING, KeyEvent.vK_DEAD_ACUTE, KeyEvent.vK_DEAD_BREVE, KeyEvent.vK_DEAD_CARON, KeyEvent.vK_DEAD_CEDILLA, KeyEvent.vK_DEAD_CIRCUMFLEX, KeyEvent.vK_DEAD_DIAERESIS, KeyEvent.vK_DEAD_DOUBLEACUTE, KeyEvent.vK_DEAD_GRAVE, KeyEvent.vK_DEAD_IOTA, KeyEvent.vK_DEAD_MACRON, KeyEvent.vK_DEAD_OGONEK, KeyEvent.vK_DEAD_SEMIVOICED_SOUND, KeyEvent.vK_DEAD_TILDE, KeyEvent.vK_DEAD_VOICED_SOUND, KeyEvent.vK_DECIMAL, KeyEvent.vK_DELETE, KeyEvent.vK_DIVIDE, KeyEvent.vK_DOLLAR, KeyEvent.vK_DOWN, KeyEvent.vK_END, KeyEvent.vK_ENTER, KeyEvent.vK_EQUALS, KeyEvent.vK_ESCAPE, KeyEvent.vK_EURO_SIGN, KeyEvent.vK_EXCLAMATION_MARK, KeyEvent.vK_FINAL, KeyEvent.vK_FIND, KeyEvent.vK_FULL_WIDTH, KeyEvent.vK_GREATER, KeyEvent.vK_HALF_WIDTH, KeyEvent.vK_HELP, KeyEvent.vK_HIRAGANA, KeyEvent.vK_HOME, KeyEvent.vK_INPUT_METHOD_ON_OFF, KeyEvent.vK_INSERT, KeyEvent.vK_INVERTED_EXCLAMATION_MARK, KeyEvent.vK_JAPANESE_HIRAGANA, KeyEvent.vK_JAPANESE_KATAKANA, KeyEvent.vK_JAPANESE_ROMAN, KeyEvent.vK_KANA, KeyEvent.vK_KANA_LOCK, KeyEvent.vK_KANJI, KeyEvent.vK_KATAKANA, KeyEvent.vK_KP_DOWN, KeyEvent.vK_KP_LEFT, KeyEvent.vK_KP_RIGHT, KeyEvent.vK_KP_UP, KeyEvent.vK_LEFT, KeyEvent.vK_LEFT_PARENTHESIS, KeyEvent.vK_LESS, KeyEvent.vK_META, KeyEvent.vK_MINUS, KeyEvent.vK_MODECHANGE, KeyEvent.vK_MULTIPLY, KeyEvent.vK_NONCONVERT, KeyEvent.vK_NUMBER_SIGN, KeyEvent.vK_OPEN_BRACKET, KeyEvent.vK_PAGE_DOWN, KeyEvent.vK_PAGE_UP, KeyEvent.vK_PASTE, KeyEvent.vK_PAUSE, KeyEvent.vK_PERIOD, KeyEvent.vK_PLUS, KeyEvent.vK_PREVIOUS_CANDIDATE, KeyEvent.vK_PRINTSCREEN, KeyEvent.vK_PROPS, KeyEvent.vK_QUOTE, KeyEvent.vK_QUOTEDBL, KeyEvent.vK_RIGHT, KeyEvent.vK_RIGHT_PARENTHESIS, KeyEvent.vK_SCROLL_LOCK, KeyEvent.vK_SEMICOLON, KeyEvent.vK_SEPARATER, KeyEvent.vK_SEPARATOR, KeyEvent.vK_SHIFT, KeyEvent.vK_SLASH, KeyEvent.vK_SPACE, KeyEvent.vK_STOP, KeyEvent.vK_SUBTRACT, KeyEvent.vK_TAB, KeyEvent.vK_UNDEFINED, KeyEvent.vK_UNDERSCORE, KeyEvent.vK_UNDO, KeyEvent.vK_UP, KeyEvent.vK_WINDOWS])))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO KeySingletonFactory
newRecord_ = do
    header_ <- newJavaHeader
    logUtil <- newIORef javaNull
    let this = KeySingletonFactory header_ logUtil
    jregisterLevel header_ this
    pure this

initFields_ :: KeySingletonFactory -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()


-- Java static initializer: call this before the class is used
staticInit_ :: IO ()
staticInit_ = do
        logUtil <- (LogUtil.getInstance)
        commonStrings <- (CommonStrings.getInstance)
        let sTATIC_BLOCK = "Static Block"
        handle (\(e :: JavaException) -> do
            Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "KeySingleFactory" sTATIC_BLOCK e)
            ) $ do
            forM_ [0 .. (jlength (jget keyArray)) - 1] $ \index -> javaIteration (pure ()) $ do
                keyAsString <- (KeyEvent.getKeyText (jindex ((jget keyArray)) (index)))
                Control.Monad.void (put ((jget KeySingletonFactory.keyStringHashtable)) keyAsString (jindex ((jget keyArray)) (index)))
        pure ()

new_ :: IO KeySingletonFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: KeySingletonFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getHashtable :: IO (ABHashtable.ABHashtable)
getHashtable = do
        pure ((jget KeySingletonFactory.keyStringHashtable))


getInstance :: Int -> IO (Int)
getInstance index = do
        pure ((javaToString index))


getArray :: IO (JavaArray (Int))
getArray = do
        pure ((jget KeySingletonFactory.keyArray))


