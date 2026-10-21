{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidAPI9KeyFactory (module AndroidAPI9KeyFactory, module AndroidKeyFactory) where

import AndroidKeyFactory hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, instance_)
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
import qualified AndroidKeyFactory

data AndroidAPI9KeyFactory = AndroidAPI9KeyFactory
    { header_ :: JavaHeader
    , base :: AndroidKeyFactory.AndroidKeyFactory
    }

instance JavaNull AndroidAPI9KeyFactory where
    javaNull = javaNullRecord "AndroidAPI9KeyFactory"

instance JavaEquals AndroidAPI9KeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidAPI9KeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidAPI9KeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO AndroidAPI9KeyFactory
newRecord_ = do
    base <- AndroidKeyFactory.newRecord_
    let header_ = base.header_
    let this = AndroidAPI9KeyFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidAPI9KeyFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (AndroidAPI9KeyFactory)
getInstance = do
        when ((jget AndroidAPI9KeyFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset AndroidAPI9KeyFactory.instance_ (assignedValue)
        pure ((javaCast (jget AndroidAPI9KeyFactory.instance_) :: AndroidAPI9KeyFactory))

new_ :: IO AndroidAPI9KeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidAPI9KeyFactory -> IO ()
init_ this = do
        AndroidKeyFactory.init_ this.base
        initFields_ this
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_L1) "BUTTON L1")
        jset (this).base.kEYCODE_BUTTON_L1 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_R1) "BUTTON R1")
        jset (this).base.kEYCODE_BUTTON_R1 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_THUMBR) "BUTTON THUMBR")
        jset (this).base.kEYCODE_BUTTON_THUMBR (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_THUMBL) "BUTTON THUMBL")
        jset (this).base.kEYCODE_BUTTON_THUMBL (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_START) "BUTTON START")
        jset (this).base.kEYCODE_BUTTON_START (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_MODE) "BUTTON MODE")
        jset (this).base.kEYCODE_BUTTON_MODE (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_B) "BUTTON B")
        jset (this).base.kEYCODE_BUTTON_B (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_A) "BUTTON A")
        jset (this).base.kEYCODE_BUTTON_A (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_X) "BUTTON X")
        jset (this).base.kEYCODE_BUTTON_X (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_Y) "BUTTON Y")
        jset (this).base.kEYCODE_BUTTON_Y (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_L2) "BUTTON L2")
        jset (this).base.kEYCODE_BUTTON_L2 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_R2) "BUTTON R2")
        jset (this).base.kEYCODE_BUTTON_R2 (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_SELECT) "BUTTON SELECT")
        jset (this).base.kEYCODE_BUTTON_SELECT (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_C) "BUTTON C")
        jset (this).base.kEYCODE_BUTTON_C (assignedValue)
        assignedValue <- (AndroidGameKey.new_2 (KeyEvent.kEYCODE_BUTTON_Z) "BUTTON Z")
        jset (this).base.kEYCODE_BUTTON_Z (assignedValue)
        pure ()


