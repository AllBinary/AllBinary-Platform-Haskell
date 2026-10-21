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
-- package taghelpers
module InventoryHelperFactory where

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
import qualified HashMap -- java.util.HashMap
import qualified PageContext -- javax.servlet.jsp.PageContext
import qualified LicensingException -- org.allbinary.logic.system.security.licensing.LicensingException
import qualified HelperFactory -- admin.taghelpers.HelperFactory

data InventoryHelperFactory = InventoryHelperFactory
    { header_ :: JavaHeader
    }

instance JavaNull InventoryHelperFactory where
    javaNull = javaNullRecord "InventoryHelperFactory"

instance JavaEquals InventoryHelperFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InventoryHelperFactory where
    (==) = jrecordEquals

instance JavaObjectClass InventoryHelperFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

cLASSNAME = "taghelpers.InventoryHelper"

fACTORYNAME = "taghelpers.InventoryHelperFactory"

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO InventoryHelperFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = InventoryHelperFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: InventoryHelperFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InventoryHelperFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InventoryHelperFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws LicensingException
getInstance :: HashMap.HashMap -> PageContext.PageContext -> IO (Any.Any)
getInstance hashMap pageContext = do
        (fmap jtoObject (HelperFactory.getInstance fACTORYNAME cLASSNAME hashMap pageContext))


