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
-- package org.allbinary.business.context.modules.storefronts
module BasicStoreFrontInterface where

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
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList

-- Java interface: the classes that implement it have these functions
data BasicStoreFrontInterface = BasicStoreFrontInterface
    { header_ :: JavaHeader
    }

instance JavaNull BasicStoreFrontInterface where
    javaNull = javaNullRecord "BasicStoreFrontInterface"

instance JavaEquals BasicStoreFrontInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicStoreFrontInterface where
    (==) = jrecordEquals

instance JavaObjectClass BasicStoreFrontInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> BasicStoreFrontInterface
fromHeader_ header = BasicStoreFrontInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (BasicStoreFrontInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getTestHtmlPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath object_ = jmethod object_ "getTestHtmlPath" (\() -> (getTestHtmlPath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestHtmlPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHtmlPath_super object_ = (getTestHtmlPath_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestHtmlPath_impl :: BasicStoreFrontInterface -> IO (String)
getTestHtmlPath_impl this = javaAbstractMethod "getTestHtmlPath"


getCurrentHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName object_ = jmethod object_ "getCurrentHostName" (\() -> (getCurrentHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getCurrentHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostName_super object_ = (getCurrentHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getCurrentHostName_impl :: BasicStoreFrontInterface -> IO (String)
getCurrentHostName_impl this = javaAbstractMethod "getCurrentHostName"


getCurrentHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath object_ = jmethod object_ "getCurrentHostNamePath" (\() -> (getCurrentHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getCurrentHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHostNamePath_super object_ = (getCurrentHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getCurrentHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getCurrentHostNamePath_impl this = javaAbstractMethod "getCurrentHostNamePath"


getCurrentHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName object_ = jmethod object_ "getCurrentHomeHostName" (\() -> (getCurrentHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getCurrentHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostName_super object_ = (getCurrentHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getCurrentHomeHostName_impl :: BasicStoreFrontInterface -> IO (String)
getCurrentHomeHostName_impl this = javaAbstractMethod "getCurrentHomeHostName"


getCurrentHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath object_ = jmethod object_ "getCurrentHomeHostNamePath" (\() -> (getCurrentHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getCurrentHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCurrentHomeHostNamePath_super object_ = (getCurrentHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getCurrentHomeHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getCurrentHomeHostNamePath_impl this = javaAbstractMethod "getCurrentHomeHostNamePath"


getName :: (JavaObjectClass this_) => this_ -> IO (String)
getName object_ = jmethod object_ "getName" (\() -> (getName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getName_super object_ = (getName_impl (javaCast object_ :: BasicStoreFrontInterface))

getName_impl :: BasicStoreFrontInterface -> IO (String)
getName_impl this = javaAbstractMethod "getName"


getUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName object_ = jmethod object_ "getUserName" (\() -> (getUserName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getUserName_super object_ = (getUserName_impl (javaCast object_ :: BasicStoreFrontInterface))

getUserName_impl :: BasicStoreFrontInterface -> IO (String)
getUserName_impl this = javaAbstractMethod "getUserName"


getBasketName :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName object_ = jmethod object_ "getBasketName" (\() -> (getBasketName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getBasketName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getBasketName_super object_ = (getBasketName_impl (javaCast object_ :: BasicStoreFrontInterface))

getBasketName_impl :: BasicStoreFrontInterface -> IO (String)
getBasketName_impl this = javaAbstractMethod "getBasketName"


getHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName object_ = jmethod object_ "getHomeHostName" (\() -> (getHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostName_super object_ = (getHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getHomeHostName_impl :: BasicStoreFrontInterface -> IO (String)
getHomeHostName_impl this = javaAbstractMethod "getHomeHostName"


getHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath object_ = jmethod object_ "getHomeHostNamePath" (\() -> (getHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHomeHostNamePath_super object_ = (getHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getHomeHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getHomeHostNamePath_impl this = javaAbstractMethod "getHomeHostNamePath"


getHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName object_ = jmethod object_ "getHostName" (\() -> (getHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostName_super object_ = (getHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getHostName_impl :: BasicStoreFrontInterface -> IO (String)
getHostName_impl this = javaAbstractMethod "getHostName"


getHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath object_ = jmethod object_ "getHostNamePath" (\() -> (getHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getHostNamePath_super object_ = (getHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getHostNamePath_impl this = javaAbstractMethod "getHostNamePath"


getTestHomeHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName object_ = jmethod object_ "getTestHomeHostName" (\() -> (getTestHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestHomeHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostName_super object_ = (getTestHomeHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestHomeHostName_impl :: BasicStoreFrontInterface -> IO (String)
getTestHomeHostName_impl this = javaAbstractMethod "getTestHomeHostName"


getTestHomeHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath object_ = jmethod object_ "getTestHomeHostNamePath" (\() -> (getTestHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestHomeHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHomeHostNamePath_super object_ = (getTestHomeHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestHomeHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getTestHomeHostNamePath_impl this = javaAbstractMethod "getTestHomeHostNamePath"


getTestHostName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName object_ = jmethod object_ "getTestHostName" (\() -> (getTestHostName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestHostName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostName_super object_ = (getTestHostName_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestHostName_impl :: BasicStoreFrontInterface -> IO (String)
getTestHostName_impl this = javaAbstractMethod "getTestHostName"


getTestHostNamePath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath object_ = jmethod object_ "getTestHostNamePath" (\() -> (getTestHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestHostNamePath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestHostNamePath_super object_ = (getTestHostNamePath_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestHostNamePath_impl :: BasicStoreFrontInterface -> IO (String)
getTestHostNamePath_impl this = javaAbstractMethod "getTestHostNamePath"


getStaticPath :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath object_ = jmethod object_ "getStaticPath" (\() -> (getStaticPath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getStaticPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getStaticPath_super object_ = (getStaticPath_impl (javaCast object_ :: BasicStoreFrontInterface))

getStaticPath_impl :: BasicStoreFrontInterface -> IO (String)
getStaticPath_impl this = javaAbstractMethod "getStaticPath"


getCategoryPath :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath object_ = jmethod object_ "getCategoryPath" (\() -> (getCategoryPath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getCategoryPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getCategoryPath_super object_ = (getCategoryPath_impl (javaCast object_ :: BasicStoreFrontInterface))

getCategoryPath_impl :: BasicStoreFrontInterface -> IO (String)
getCategoryPath_impl this = javaAbstractMethod "getCategoryPath"


-- throws Exception
getSubStores :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores object_ = jmethod object_ "getSubStores" (\() -> (getSubStores_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getSubStores_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getSubStores_super object_ = (getSubStores_impl (javaCast object_ :: BasicStoreFrontInterface))

getSubStores_impl :: BasicStoreFrontInterface -> IO (BasicArrayList.BasicArrayList)
getSubStores_impl this = javaAbstractMethod "getSubStores"


getTagLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation object_ = jmethod object_ "getTagLocation" (\() -> (getTagLocation_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTagLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTagLocation_super object_ = (getTagLocation_impl (javaCast object_ :: BasicStoreFrontInterface))

getTagLocation_impl :: BasicStoreFrontInterface -> IO (String)
getTagLocation_impl this = javaAbstractMethod "getTagLocation"


getPackageLocation :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation object_ = jmethod object_ "getPackageLocation" (\() -> (getPackageLocation_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getPackageLocation_super :: (JavaObjectClass this_) => this_ -> IO (String)
getPackageLocation_super object_ = (getPackageLocation_impl (javaCast object_ :: BasicStoreFrontInterface))

getPackageLocation_impl :: BasicStoreFrontInterface -> IO (String)
getPackageLocation_impl this = javaAbstractMethod "getPackageLocation"


getInventoryControl :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl object_ = jmethod object_ "getInventoryControl" (\() -> (getInventoryControl_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getInventoryControl_super :: (JavaObjectClass this_) => this_ -> IO (String)
getInventoryControl_super object_ = (getInventoryControl_impl (javaCast object_ :: BasicStoreFrontInterface))

getInventoryControl_impl :: BasicStoreFrontInterface -> IO (String)
getInventoryControl_impl this = javaAbstractMethod "getInventoryControl"


getFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp object_ = jmethod object_ "getFtp" (\() -> (getFtp_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtp_super object_ = (getFtp_impl (javaCast object_ :: BasicStoreFrontInterface))

getFtp_impl :: BasicStoreFrontInterface -> IO (String)
getFtp_impl this = javaAbstractMethod "getFtp"


getFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath object_ = jmethod object_ "getFtpPath" (\() -> (getFtpPath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPath_super object_ = (getFtpPath_impl (javaCast object_ :: BasicStoreFrontInterface))

getFtpPath_impl :: BasicStoreFrontInterface -> IO (String)
getFtpPath_impl this = javaAbstractMethod "getFtpPath"


getFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName object_ = jmethod object_ "getFtpUserName" (\() -> (getFtpUserName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpUserName_super object_ = (getFtpUserName_impl (javaCast object_ :: BasicStoreFrontInterface))

getFtpUserName_impl :: BasicStoreFrontInterface -> IO (String)
getFtpUserName_impl this = javaAbstractMethod "getFtpUserName"


getFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword object_ = jmethod object_ "getFtpPassword" (\() -> (getFtpPassword_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFtpPassword_super object_ = (getFtpPassword_impl (javaCast object_ :: BasicStoreFrontInterface))

getFtpPassword_impl :: BasicStoreFrontInterface -> IO (String)
getFtpPassword_impl this = javaAbstractMethod "getFtpPassword"


getTestFtp :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp object_ = jmethod object_ "getTestFtp" (\() -> (getTestFtp_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestFtp_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtp_super object_ = (getTestFtp_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestFtp_impl :: BasicStoreFrontInterface -> IO (String)
getTestFtp_impl this = javaAbstractMethod "getTestFtp"


getTestFtpPath :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath object_ = jmethod object_ "getTestFtpPath" (\() -> (getTestFtpPath_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestFtpPath_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPath_super object_ = (getTestFtpPath_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestFtpPath_impl :: BasicStoreFrontInterface -> IO (String)
getTestFtpPath_impl this = javaAbstractMethod "getTestFtpPath"


getTestFtpUserName :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName object_ = jmethod object_ "getTestFtpUserName" (\() -> (getTestFtpUserName_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestFtpUserName_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpUserName_super object_ = (getTestFtpUserName_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestFtpUserName_impl :: BasicStoreFrontInterface -> IO (String)
getTestFtpUserName_impl this = javaAbstractMethod "getTestFtpUserName"


getTestFtpPassword :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword object_ = jmethod object_ "getTestFtpPassword" (\() -> (getTestFtpPassword_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTestFtpPassword_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTestFtpPassword_super object_ = (getTestFtpPassword_impl (javaCast object_ :: BasicStoreFrontInterface))

getTestFtpPassword_impl :: BasicStoreFrontInterface -> IO (String)
getTestFtpPassword_impl this = javaAbstractMethod "getTestFtpPassword"


getTimeCreated :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated object_ = jmethod object_ "getTimeCreated" (\() -> (getTimeCreated_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getTimeCreated_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTimeCreated_super object_ = (getTimeCreated_impl (javaCast object_ :: BasicStoreFrontInterface))

getTimeCreated_impl :: BasicStoreFrontInterface -> IO (String)
getTimeCreated_impl this = javaAbstractMethod "getTimeCreated"


getLastModified :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified object_ = jmethod object_ "getLastModified" (\() -> (getLastModified_impl (javaCast object_ :: BasicStoreFrontInterface))) ()

getLastModified_super :: (JavaObjectClass this_) => this_ -> IO (String)
getLastModified_super object_ = (getLastModified_impl (javaCast object_ :: BasicStoreFrontInterface))

getLastModified_impl :: BasicStoreFrontInterface -> IO (String)
getLastModified_impl this = javaAbstractMethod "getLastModified"


