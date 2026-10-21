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
-- package views.admin.inventory.listings
module ProductListingFactory where

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
import qualified ProductListing -- same package or java.lang
import qualified ProductListingInterface -- same package or java.lang
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified SearchRequest -- org.allbinary.logic.control.search.SearchRequest
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data ProductListingFactory = ProductListingFactory
    { header_ :: JavaHeader
    }

instance JavaNull ProductListingFactory where
    javaNull = javaNullRecord "ProductListingFactory"

instance JavaEquals ProductListingFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ProductListingFactory where
    (==) = jrecordEquals

instance JavaObjectClass ProductListingFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ProductListingFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = ProductListingFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: ProductListingFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ProductListingFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ProductListingFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


getInstance :: SearchRequest.SearchRequest -> IO (ProductListingInterface.ProductListingInterface)
getInstance searchRequest = do
        logUtil <- (LogUtil.getInstance)
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).fACTORYERROR))) $ do
                commonStrings <- (CommonStrings.getInstance)
                Control.Monad.void (LogUtil.put logUtil (jget (commonStrings).eXCEPTION) "ProductListingFactory" (jget (commonStrings).gET_INSTANCE) e)
            pure (javaNull)
            ) $ do
            pure ((javaCast (jio (ProductListing.new_1 searchRequest)) :: ProductListingInterface.ProductListingInterface))


