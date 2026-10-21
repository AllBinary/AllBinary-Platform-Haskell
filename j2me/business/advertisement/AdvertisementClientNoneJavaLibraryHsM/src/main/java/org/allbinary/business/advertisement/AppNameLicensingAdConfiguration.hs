{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
module AppNameLicensingAdConfiguration (module AppNameLicensingAdConfiguration, module AdConfiguration) where

import AdConfiguration hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9)
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
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AdConfiguration

data AppNameLicensingAdConfiguration = AppNameLicensingAdConfiguration
    { header_ :: JavaHeader
    , base :: AdConfiguration.AdConfiguration
    }

instance JavaNull AppNameLicensingAdConfiguration where
    javaNull = javaNullRecord "AppNameLicensingAdConfiguration"

instance JavaEquals AppNameLicensingAdConfiguration where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AppNameLicensingAdConfiguration where
    (==) = jrecordEquals

instance JavaObjectClass AppNameLicensingAdConfiguration where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO AppNameLicensingAdConfiguration
newRecord_ = do
    base <- AdConfiguration.newRecord_
    let header_ = base.header_
    let this = AppNameLicensingAdConfiguration header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: AppNameLicensingAdConfiguration -> IO ()
initFields_ this = do
    pure ()

new_ :: IO AppNameLicensingAdConfiguration
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: AppNameLicensingAdConfiguration -> IO ()
init_ this = do
        AdConfiguration.init_1 this.base (jarrayFromList [(jget ((jio (StringUtil.getInstance))).eMPTY_STRING), (jget ((jio (StringUtil.getInstance))).eMPTY_STRING), (jget ((jio (StringUtil.getInstance))).eMPTY_STRING)])
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


