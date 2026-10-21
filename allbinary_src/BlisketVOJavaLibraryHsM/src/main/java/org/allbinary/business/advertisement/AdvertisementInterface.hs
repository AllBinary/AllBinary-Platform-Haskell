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
-- package org.allbinary.business.advertisement
module AdvertisementInterface where

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
import qualified AdvertisementImageInterface -- org.allbinary.business.advertisement.image.AdvertisementImageInterface
import qualified AdvertisementProductInterface -- org.allbinary.business.advertisement.product.AdvertisementProductInterface
import qualified AdvertisementThumbnailInterface -- org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface
import qualified Money -- org.allbinary.business.user.commerce.money.Money
import qualified DisplayInBrowserContraintsInterface -- org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface

-- Java interface: the classes that implement it have these functions
data AdvertisementInterface = AdvertisementInterface
    { header_ :: JavaHeader
    }

instance JavaNull AdvertisementInterface where
    javaNull = javaNullRecord "AdvertisementInterface"

instance JavaEquals AdvertisementInterface where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq AdvertisementInterface where
    (==) = jrecordEquals

instance JavaObjectClass AdvertisementInterface where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

fromHeader_ :: JavaHeader -> AdvertisementInterface
fromHeader_ header = AdvertisementInterface header

registerInterface_ :: JavaHeader -> IO ()
registerInterface_ header = do
    jregisterLevel header (AdvertisementInterface header)

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()


getArtist :: (JavaObjectClass this_) => this_ -> IO (String)
getArtist object_ = jmethod object_ "getArtist" (\() -> (getArtist_impl (javaCast object_ :: AdvertisementInterface))) ()

getArtist_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArtist_super object_ = (getArtist_impl (javaCast object_ :: AdvertisementInterface))

getArtist_impl :: AdvertisementInterface -> IO (String)
getArtist_impl this = javaAbstractMethod "getArtist"


getArtistLink :: (JavaObjectClass this_) => this_ -> IO (String)
getArtistLink object_ = jmethod object_ "getArtistLink" (\() -> (getArtistLink_impl (javaCast object_ :: AdvertisementInterface))) ()

getArtistLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArtistLink_super object_ = (getArtistLink_impl (javaCast object_ :: AdvertisementInterface))

getArtistLink_impl :: AdvertisementInterface -> IO (String)
getArtistLink_impl this = javaAbstractMethod "getArtistLink"


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: AdvertisementInterface))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: AdvertisementInterface))

getTitle_impl :: AdvertisementInterface -> IO (String)
getTitle_impl this = javaAbstractMethod "getTitle"


getDateAdded :: (JavaObjectClass this_) => this_ -> IO (String)
getDateAdded object_ = jmethod object_ "getDateAdded" (\() -> (getDateAdded_impl (javaCast object_ :: AdvertisementInterface))) ()

getDateAdded_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDateAdded_super object_ = (getDateAdded_impl (javaCast object_ :: AdvertisementInterface))

getDateAdded_impl :: AdvertisementInterface -> IO (String)
getDateAdded_impl this = javaAbstractMethod "getDateAdded"


getDirectory :: (JavaObjectClass this_) => this_ -> IO (String)
getDirectory object_ = jmethod object_ "getDirectory" (\() -> (getDirectory_impl (javaCast object_ :: AdvertisementInterface))) ()

getDirectory_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDirectory_super object_ = (getDirectory_impl (javaCast object_ :: AdvertisementInterface))

getDirectory_impl :: AdvertisementInterface -> IO (String)
getDirectory_impl this = javaAbstractMethod "getDirectory"


getFramedLink :: (JavaObjectClass this_) => this_ -> IO (String)
getFramedLink object_ = jmethod object_ "getFramedLink" (\() -> (getFramedLink_impl (javaCast object_ :: AdvertisementInterface))) ()

getFramedLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFramedLink_super object_ = (getFramedLink_impl (javaCast object_ :: AdvertisementInterface))

getFramedLink_impl :: AdvertisementInterface -> IO (String)
getFramedLink_impl this = javaAbstractMethod "getFramedLink"


getListPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getListPrice object_ = jmethod object_ "getListPrice" (\() -> (getListPrice_impl (javaCast object_ :: AdvertisementInterface))) ()

getListPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getListPrice_super object_ = (getListPrice_impl (javaCast object_ :: AdvertisementInterface))

getListPrice_impl :: AdvertisementInterface -> IO (Money.Money)
getListPrice_impl this = javaAbstractMethod "getListPrice"


getOurPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getOurPrice object_ = jmethod object_ "getOurPrice" (\() -> (getOurPrice_impl (javaCast object_ :: AdvertisementInterface))) ()

getOurPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getOurPrice_super object_ = (getOurPrice_impl (javaCast object_ :: AdvertisementInterface))

getOurPrice_impl :: AdvertisementInterface -> IO (Money.Money)
getOurPrice_impl this = javaAbstractMethod "getOurPrice"


getRank :: (JavaObjectClass this_) => this_ -> IO (Int)
getRank object_ = jmethod object_ "getRank" (\() -> (getRank_impl (javaCast object_ :: AdvertisementInterface))) ()

getRank_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRank_super object_ = (getRank_impl (javaCast object_ :: AdvertisementInterface))

getRank_impl :: AdvertisementInterface -> IO (Int)
getRank_impl this = javaAbstractMethod "getRank"


getImage :: (JavaObjectClass this_) => this_ -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: AdvertisementInterface))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage_super object_ = (getImage_impl (javaCast object_ :: AdvertisementInterface))

getImage_impl :: AdvertisementInterface -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage_impl this = javaAbstractMethod "getImage"


getProduct :: (JavaObjectClass this_) => this_ -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct object_ = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: AdvertisementInterface))) ()

getProduct_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct_super object_ = (getProduct_impl (javaCast object_ :: AdvertisementInterface))

getProduct_impl :: AdvertisementInterface -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct_impl this = javaAbstractMethod "getProduct"


getThumbnail :: (JavaObjectClass this_) => this_ -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail object_ = jmethod object_ "getThumbnail" (\() -> (getThumbnail_impl (javaCast object_ :: AdvertisementInterface))) ()

getThumbnail_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail_super object_ = (getThumbnail_impl (javaCast object_ :: AdvertisementInterface))

getThumbnail_impl :: AdvertisementInterface -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail_impl this = javaAbstractMethod "getThumbnail"


getDisplayInBrowserContraintsInterface :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface object_ = jmethod object_ "getDisplayInBrowserContraintsInterface" (\() -> (getDisplayInBrowserContraintsInterface_impl (javaCast object_ :: AdvertisementInterface))) ()

getDisplayInBrowserContraintsInterface_super :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface_super object_ = (getDisplayInBrowserContraintsInterface_impl (javaCast object_ :: AdvertisementInterface))

getDisplayInBrowserContraintsInterface_impl :: AdvertisementInterface -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface_impl this = javaAbstractMethod "getDisplayInBrowserContraintsInterface"


setArtist :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtist object_ a1 = jmethod object_ "setArtist" (\() -> (setArtist_impl (javaCast object_ :: AdvertisementInterface))) () a1

setArtist_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtist_super object_ a1 = (setArtist_impl (javaCast object_ :: AdvertisementInterface)) a1

setArtist_impl :: AdvertisementInterface -> String -> IO (())
setArtist_impl this artist = javaAbstractMethod "setArtist"


setArtistLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtistLink object_ a1 = jmethod object_ "setArtistLink" (\() -> (setArtistLink_impl (javaCast object_ :: AdvertisementInterface))) () a1

setArtistLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtistLink_super object_ a1 = (setArtistLink_impl (javaCast object_ :: AdvertisementInterface)) a1

setArtistLink_impl :: AdvertisementInterface -> String -> IO (())
setArtistLink_impl this artistLink = javaAbstractMethod "setArtistLink"


setTitle :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle object_ a1 = jmethod object_ "setTitle" (\() -> (setTitle_impl (javaCast object_ :: AdvertisementInterface))) () a1

setTitle_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle_super object_ a1 = (setTitle_impl (javaCast object_ :: AdvertisementInterface)) a1

setTitle_impl :: AdvertisementInterface -> String -> IO (())
setTitle_impl this title = javaAbstractMethod "setTitle"


setDateAdded :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDateAdded object_ a1 = jmethod object_ "setDateAdded" (\() -> (setDateAdded_impl (javaCast object_ :: AdvertisementInterface))) () a1

setDateAdded_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDateAdded_super object_ a1 = (setDateAdded_impl (javaCast object_ :: AdvertisementInterface)) a1

setDateAdded_impl :: AdvertisementInterface -> String -> IO (())
setDateAdded_impl this dateAdded = javaAbstractMethod "setDateAdded"


setDirectory :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDirectory object_ a1 = jmethod object_ "setDirectory" (\() -> (setDirectory_impl (javaCast object_ :: AdvertisementInterface))) () a1

setDirectory_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDirectory_super object_ a1 = (setDirectory_impl (javaCast object_ :: AdvertisementInterface)) a1

setDirectory_impl :: AdvertisementInterface -> String -> IO (())
setDirectory_impl this directory = javaAbstractMethod "setDirectory"


setFramedLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFramedLink object_ a1 = jmethod object_ "setFramedLink" (\() -> (setFramedLink_impl (javaCast object_ :: AdvertisementInterface))) () a1

setFramedLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFramedLink_super object_ a1 = (setFramedLink_impl (javaCast object_ :: AdvertisementInterface)) a1

setFramedLink_impl :: AdvertisementInterface -> String -> IO (())
setFramedLink_impl this framedLink = javaAbstractMethod "setFramedLink"


setRank :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRank object_ a1 = jmethod object_ "setRank" (\() -> (setRank_impl (javaCast object_ :: AdvertisementInterface))) () a1

setRank_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRank_super object_ a1 = (setRank_impl (javaCast object_ :: AdvertisementInterface)) a1

setRank_impl :: AdvertisementInterface -> Int -> IO (())
setRank_impl this rank = javaAbstractMethod "setRank"


setImage :: (JavaObjectClass this_) => this_ -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage object_ a1 = jmethod object_ "setImage" (\() -> (setImage_impl (javaCast object_ :: AdvertisementInterface))) () a1

setImage_super :: (JavaObjectClass this_) => this_ -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage_super object_ a1 = (setImage_impl (javaCast object_ :: AdvertisementInterface)) a1

setImage_impl :: AdvertisementInterface -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage_impl this advertisementImageInterface = javaAbstractMethod "setImage"


setProduct :: (JavaObjectClass this_) => this_ -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct object_ a1 = jmethod object_ "setProduct" (\() -> (setProduct_impl (javaCast object_ :: AdvertisementInterface))) () a1

setProduct_super :: (JavaObjectClass this_) => this_ -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct_super object_ a1 = (setProduct_impl (javaCast object_ :: AdvertisementInterface)) a1

setProduct_impl :: AdvertisementInterface -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct_impl this advertisementProductInterface = javaAbstractMethod "setProduct"


setThumbnail :: (JavaObjectClass this_) => this_ -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail object_ a1 = jmethod object_ "setThumbnail" (\() -> (setThumbnail_impl (javaCast object_ :: AdvertisementInterface))) () a1

setThumbnail_super :: (JavaObjectClass this_) => this_ -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail_super object_ a1 = (setThumbnail_impl (javaCast object_ :: AdvertisementInterface)) a1

setThumbnail_impl :: AdvertisementInterface -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail_impl this advertisementThumbnailInterface = javaAbstractMethod "setThumbnail"


