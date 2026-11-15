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
-- package org.allbinary.logic.java.help
module JavaHelpSetNotifier where

import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char hiding (GeneralCategory (..))
import Data.Int
import Data.Word
import Data.List hiding (List)
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified Any -- same package or java.lang
import qualified URL -- java.net.URL
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified HelpSet -- javax.help.HelpSet

data JavaHelpSetNotifier = JavaHelpSetNotifier
    { header_ :: JavaHeader
    }

instance JavaNull JavaHelpSetNotifier where
    javaNull = javaNullRecord "JavaHelpSetNotifier"

instance JavaEquals JavaHelpSetNotifier where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq JavaHelpSetNotifier where
    (==) = jrecordEquals

instance JavaObjectClass JavaHelpSetNotifier where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

vector :: IORef (BasicArrayList.BasicArrayList)
{-# NOINLINE vector #-}
vector = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

toString_super :: (JavaObjectClass this_) => this_ -> IO (String)
toString_super object_ = jobjectToString object_

newRecord_ :: IO JavaHelpSetNotifier
newRecord_ = do
    header_ <- newJavaHeader
    let this = JavaHelpSetNotifier header_
    jregisterLevel header_ this
    pure this

initFields_ :: JavaHelpSetNotifier -> IO ()
initFields_ this = do
    pure ()

new_ :: IO JavaHelpSetNotifier
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: JavaHelpSetNotifier -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


get :: IO (BasicArrayList.BasicArrayList)
get = do
        pure ((jget JavaHelpSetNotifier.vector))


isNotified :: HelpSet.HelpSet -> IO (Bool)
isNotified helpSet = do
        isNotified <- newIORef (False :: Bool)
        url <- (HelpSet.getHelpSetURL helpSet)
        size <- (BasicArrayList.size ((jget JavaHelpSetNotifier.vector)))
        urlArray <- (BasicArrayList.toArray ((jget JavaHelpSetNotifier.vector)))
        forM_ [0 .. size - 1] $ \i -> javaIteration (pure ()) $ do
            let nextURL = (javaCast (jindex urlArray (i)) :: URL.URL)
            when ((Prelude.fromEnum (Prelude.compare (jio (URL.toString url)) (jio (URL.toString nextURL))) - 1) == 0) $ do
                jset isNotified (True)
        Control.Monad.void (BasicArrayList.add ((jget JavaHelpSetNotifier.vector)) url)
        pure ((jget isNotified))


