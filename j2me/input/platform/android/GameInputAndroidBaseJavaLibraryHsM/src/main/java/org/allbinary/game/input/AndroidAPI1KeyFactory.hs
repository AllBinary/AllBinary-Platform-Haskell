{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.game.input
module AndroidAPI1KeyFactory (module AndroidAPI1KeyFactory, module AndroidKeyFactory) where

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
import qualified NullUtil -- org.allbinary.logic.NullUtil
import qualified AndroidKeyFactory

data AndroidAPI1KeyFactory = AndroidAPI1KeyFactory
    { header_ :: JavaHeader
    , base :: AndroidKeyFactory.AndroidKeyFactory
    }

instance JavaNull AndroidAPI1KeyFactory where
    javaNull = javaNullRecord "AndroidAPI1KeyFactory"

instance JavaEquals AndroidAPI1KeyFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AndroidAPI1KeyFactory where
    (==) = jrecordEquals

instance JavaObjectClass AndroidAPI1KeyFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO (newIORef ((jget ((jio (NullUtil.getInstance))).nULL_OBJECT)))

newRecord_ :: IO AndroidAPI1KeyFactory
newRecord_ = do
    base <- AndroidKeyFactory.newRecord_
    let header_ = base.header_
    let this = AndroidAPI1KeyFactory header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AndroidAPI1KeyFactory -> IO ()
initFields_ this = do
    pure ()


getInstance :: IO (AndroidAPI1KeyFactory)
getInstance = do
        when ((jget AndroidAPI1KeyFactory.instance_) == (jget ((jio (NullUtil.getInstance))).nULL_OBJECT)) $ do
            assignedValue <- (new_)
            jset AndroidAPI1KeyFactory.instance_ (assignedValue)
        pure ((javaCast (jget AndroidAPI1KeyFactory.instance_) :: AndroidAPI1KeyFactory))

new_ :: IO AndroidAPI1KeyFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AndroidAPI1KeyFactory -> IO ()
init_ this = do
        AndroidKeyFactory.init_ this.base
        initFields_ this
        pure ()
        pure ()


