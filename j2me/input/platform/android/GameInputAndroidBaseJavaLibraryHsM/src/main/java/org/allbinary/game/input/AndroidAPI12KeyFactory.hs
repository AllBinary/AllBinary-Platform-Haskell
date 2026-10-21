{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidAPI12KeyFactory (module AndroidAPI12KeyFactory, module AndroidAPI9KeyFactory) where

import AndroidAPI9KeyFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getAPI12Instance, getAPI12Instance_super, getAPI12Instance_impl, instance12)
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
import qualified AndroidGameKey -- same package or java.lang
import qualified KeyEvent -- android.view.KeyEvent
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AndroidAPI9KeyFactory

data AndroidAPI12KeyFactory = AndroidAPI12KeyFactory
    { header_ :: JavaHeader
    , base :: AndroidAPI9KeyFactory.AndroidAPI9KeyFactory
    }

instance JavaNull AndroidAPI12KeyFactory where
    javaNull = javaNullRecord "AndroidAPI12KeyFactory"

instance JavaEquals AndroidAPI12KeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidAPI12KeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidAPI12KeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance12 #-}
instance12 = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO AndroidAPI12KeyFactory
newRecord_ = do
    base <- AndroidAPI9KeyFactory.newRecord_
    let header_ = base.header_
    let this = AndroidAPI12KeyFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidAPI12KeyFactory -> IO ()
initFields_ this = do
    pure ()


getAPI12Instance :: IO (AndroidAPI12KeyFactory)
getAPI12Instance = do
        when ((jget AndroidAPI12KeyFactory.instance12) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset AndroidAPI12KeyFactory.instance12 (assignedValue)
        pure ((javaCast (jget AndroidAPI12KeyFactory.instance12) :: AndroidAPI12KeyFactory))

new_ :: IO AndroidAPI12KeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidAPI12KeyFactory -> IO ()
init_ this = do
        AndroidAPI9KeyFactory.init_ this.base
        initFields_ this
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_1) "BUTTON 1")
        jset (this).base.base.kEYCODE_BUTTON_1 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_10) "BUTTON 10")
        jset (this).base.base.kEYCODE_BUTTON_10 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_11) "BUTTON 11")
        jset (this).base.base.kEYCODE_BUTTON_11 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_12) "BUTTON 12")
        jset (this).base.base.kEYCODE_BUTTON_12 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_13) "BUTTON 13")
        jset (this).base.base.kEYCODE_BUTTON_13 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_14) "BUTTON 14")
        jset (this).base.base.kEYCODE_BUTTON_14 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_15) "BUTTON 15")
        jset (this).base.base.kEYCODE_BUTTON_15 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_16) "BUTTON 16")
        jset (this).base.base.kEYCODE_BUTTON_16 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_2) "BUTTON 2")
        jset (this).base.base.kEYCODE_BUTTON_2 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_3) "BUTTON 3")
        jset (this).base.base.kEYCODE_BUTTON_3 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_4) "BUTTON 4")
        jset (this).base.base.kEYCODE_BUTTON_4 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_5) "BUTTON 5")
        jset (this).base.base.kEYCODE_BUTTON_5 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_6) "BUTTON 6")
        jset (this).base.base.kEYCODE_BUTTON_6 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_7) "BUTTON 7")
        jset (this).base.base.kEYCODE_BUTTON_7 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_8) "BUTTON 8")
        jset (this).base.base.kEYCODE_BUTTON_8 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_9) "BUTTON 9")
        jset (this).base.base.kEYCODE_BUTTON_9 (assignedValue)
        pure ()


