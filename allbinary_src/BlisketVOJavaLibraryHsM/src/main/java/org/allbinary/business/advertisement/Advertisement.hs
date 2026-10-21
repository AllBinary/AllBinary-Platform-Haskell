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
module Advertisement where

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
import qualified AdvertisementInterface

-- implements AdvertisementInterface
data Advertisement = Advertisement
    { header_ :: JavaHeader
    , artist :: IORef (String)
    , artistLink :: IORef (String)
    , title :: IORef (String)
    , dateAdded :: IORef (String)
    , directory :: IORef (String)
    , framedLink :: IORef (String)
    , rank :: IORef (Int)
    , listPrice :: IORef (Money.Money)
    , ourPrice :: IORef (Money.Money)
    , image :: IORef (AdvertisementImageInterface.AdvertisementImageInterface)
    , product :: IORef (AdvertisementProductInterface.AdvertisementProductInterface)
    , thumbnail :: IORef (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
    , displayInBrowserContraintsInterface :: IORef (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
    }

instance JavaNull Advertisement where
    javaNull = javaNullRecord "Advertisement"

instance JavaEquals Advertisement where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq Advertisement where
    (==) = jrecordEquals

instance JavaObjectClass Advertisement where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO Advertisement
newRecord_ = do
    header_ <- newJavaHeader
    artist <- newIORef ""
    artistLink <- newIORef ""
    title <- newIORef ""
    dateAdded <- newIORef ""
    directory <- newIORef ""
    framedLink <- newIORef ""
    rank <- newIORef 0
    listPrice <- newIORef javaNull
    ourPrice <- newIORef javaNull
    image <- newIORef javaNull
    product <- newIORef javaNull
    thumbnail <- newIORef javaNull
    displayInBrowserContraintsInterface <- newIORef javaNull
    let this = Advertisement header_ artist artistLink title dateAdded directory framedLink rank listPrice ourPrice image product thumbnail displayInBrowserContraintsInterface
    jregisterLevel header_ this
    AdvertisementInterface.registerInterface_ header_
    jregisterMethod header_ "getArtist" (\() -> getArtist_impl this)
    jregisterMethod header_ "setArtist" (\() -> setArtist_impl this)
    jregisterMethod header_ "getArtistLink" (\() -> getArtistLink_impl this)
    jregisterMethod header_ "setArtistLink" (\() -> setArtistLink_impl this)
    jregisterMethod header_ "getTitle" (\() -> getTitle_impl this)
    jregisterMethod header_ "setTitle" (\() -> setTitle_impl this)
    jregisterMethod header_ "getDateAdded" (\() -> getDateAdded_impl this)
    jregisterMethod header_ "setDateAdded" (\() -> setDateAdded_impl this)
    jregisterMethod header_ "getDirectory" (\() -> getDirectory_impl this)
    jregisterMethod header_ "setDirectory" (\() -> setDirectory_impl this)
    jregisterMethod header_ "getFramedLink" (\() -> getFramedLink_impl this)
    jregisterMethod header_ "setFramedLink" (\() -> setFramedLink_impl this)
    jregisterMethod header_ "getListPrice" (\() -> getListPrice_impl this)
    jregisterMethod header_ "setListPrice" (\() -> setListPrice_impl this)
    jregisterMethod header_ "getOurPrice" (\() -> getOurPrice_impl this)
    jregisterMethod header_ "setOurPrice" (\() -> setOurPrice_impl this)
    jregisterMethod header_ "getRank" (\() -> getRank_impl this)
    jregisterMethod header_ "setRank" (\() -> setRank_impl this)
    jregisterMethod header_ "getImage" (\() -> getImage_impl this)
    jregisterMethod header_ "setImage" (\() -> setImage_impl this)
    jregisterMethod header_ "getProduct" (\() -> getProduct_impl this)
    jregisterMethod header_ "setProduct" (\() -> setProduct_impl this)
    jregisterMethod header_ "getThumbnail" (\() -> getThumbnail_impl this)
    jregisterMethod header_ "setThumbnail" (\() -> setThumbnail_impl this)
    jregisterMethod header_ "getDisplayInBrowserContraintsInterface" (\() -> getDisplayInBrowserContraintsInterface_impl this)
    pure this

initFields_ :: Advertisement -> IO ()
initFields_ this = do
    jset this.artist ("")
    jset this.artistLink ("")
    jset this.title ("")
    jset this.dateAdded ("")
    jset this.directory ("")
    jset this.framedLink ("")
    jset this.rank (0)
    jset this.listPrice (javaNull)
    jset this.ourPrice (javaNull)
    jset this.image (javaNull)
    jset this.product (javaNull)
    jset this.thumbnail (javaNull)
    jset this.displayInBrowserContraintsInterface (javaNull)
    pure ()

new_ :: IO Advertisement
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: Advertisement -> IO ()
init_ this = do
        initFields_ this
        jset (this).displayInBrowserContraintsInterface (javaNull)
        pure ()


getArtist :: (JavaObjectClass this_) => this_ -> IO (String)
getArtist object_ = jmethod object_ "getArtist" (\() -> (getArtist_impl (javaCast object_ :: Advertisement))) ()

getArtist_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArtist_super object_ = (getArtist_impl (javaCast object_ :: Advertisement))

getArtist_impl :: Advertisement -> IO (String)
getArtist_impl this = do
        pure ((jget (this).artist))


setArtist :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtist object_ a1 = jmethod object_ "setArtist" (\() -> (setArtist_impl (javaCast object_ :: Advertisement))) () a1

setArtist_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtist_super object_ a1 = (setArtist_impl (javaCast object_ :: Advertisement)) a1

setArtist_impl :: Advertisement -> String -> IO (())
setArtist_impl this artist = do
        jset (this).artist (artist)
        pure ()


getArtistLink :: (JavaObjectClass this_) => this_ -> IO (String)
getArtistLink object_ = jmethod object_ "getArtistLink" (\() -> (getArtistLink_impl (javaCast object_ :: Advertisement))) ()

getArtistLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getArtistLink_super object_ = (getArtistLink_impl (javaCast object_ :: Advertisement))

getArtistLink_impl :: Advertisement -> IO (String)
getArtistLink_impl this = do
        pure ((jget (this).artistLink))


setArtistLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtistLink object_ a1 = jmethod object_ "setArtistLink" (\() -> (setArtistLink_impl (javaCast object_ :: Advertisement))) () a1

setArtistLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setArtistLink_super object_ a1 = (setArtistLink_impl (javaCast object_ :: Advertisement)) a1

setArtistLink_impl :: Advertisement -> String -> IO (())
setArtistLink_impl this artistLink = do
        jset (this).artistLink (artistLink)
        pure ()


getTitle :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle object_ = jmethod object_ "getTitle" (\() -> (getTitle_impl (javaCast object_ :: Advertisement))) ()

getTitle_super :: (JavaObjectClass this_) => this_ -> IO (String)
getTitle_super object_ = (getTitle_impl (javaCast object_ :: Advertisement))

getTitle_impl :: Advertisement -> IO (String)
getTitle_impl this = do
        pure ((jget (this).title))


setTitle :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle object_ a1 = jmethod object_ "setTitle" (\() -> (setTitle_impl (javaCast object_ :: Advertisement))) () a1

setTitle_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setTitle_super object_ a1 = (setTitle_impl (javaCast object_ :: Advertisement)) a1

setTitle_impl :: Advertisement -> String -> IO (())
setTitle_impl this title = do
        jset (this).title (title)
        pure ()


getDateAdded :: (JavaObjectClass this_) => this_ -> IO (String)
getDateAdded object_ = jmethod object_ "getDateAdded" (\() -> (getDateAdded_impl (javaCast object_ :: Advertisement))) ()

getDateAdded_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDateAdded_super object_ = (getDateAdded_impl (javaCast object_ :: Advertisement))

getDateAdded_impl :: Advertisement -> IO (String)
getDateAdded_impl this = do
        pure ((jget (this).dateAdded))


setDateAdded :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDateAdded object_ a1 = jmethod object_ "setDateAdded" (\() -> (setDateAdded_impl (javaCast object_ :: Advertisement))) () a1

setDateAdded_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDateAdded_super object_ a1 = (setDateAdded_impl (javaCast object_ :: Advertisement)) a1

setDateAdded_impl :: Advertisement -> String -> IO (())
setDateAdded_impl this dateAdded = do
        jset (this).dateAdded (dateAdded)
        pure ()


getDirectory :: (JavaObjectClass this_) => this_ -> IO (String)
getDirectory object_ = jmethod object_ "getDirectory" (\() -> (getDirectory_impl (javaCast object_ :: Advertisement))) ()

getDirectory_super :: (JavaObjectClass this_) => this_ -> IO (String)
getDirectory_super object_ = (getDirectory_impl (javaCast object_ :: Advertisement))

getDirectory_impl :: Advertisement -> IO (String)
getDirectory_impl this = do
        pure ((jget (this).directory))


setDirectory :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDirectory object_ a1 = jmethod object_ "setDirectory" (\() -> (setDirectory_impl (javaCast object_ :: Advertisement))) () a1

setDirectory_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setDirectory_super object_ a1 = (setDirectory_impl (javaCast object_ :: Advertisement)) a1

setDirectory_impl :: Advertisement -> String -> IO (())
setDirectory_impl this directory = do
        jset (this).directory (directory)
        pure ()


getFramedLink :: (JavaObjectClass this_) => this_ -> IO (String)
getFramedLink object_ = jmethod object_ "getFramedLink" (\() -> (getFramedLink_impl (javaCast object_ :: Advertisement))) ()

getFramedLink_super :: (JavaObjectClass this_) => this_ -> IO (String)
getFramedLink_super object_ = (getFramedLink_impl (javaCast object_ :: Advertisement))

getFramedLink_impl :: Advertisement -> IO (String)
getFramedLink_impl this = do
        pure ((jget (this).framedLink))


setFramedLink :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFramedLink object_ a1 = jmethod object_ "setFramedLink" (\() -> (setFramedLink_impl (javaCast object_ :: Advertisement))) () a1

setFramedLink_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setFramedLink_super object_ a1 = (setFramedLink_impl (javaCast object_ :: Advertisement)) a1

setFramedLink_impl :: Advertisement -> String -> IO (())
setFramedLink_impl this framedLink = do
        jset (this).framedLink (framedLink)
        pure ()


getListPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getListPrice object_ = jmethod object_ "getListPrice" (\() -> (getListPrice_impl (javaCast object_ :: Advertisement))) ()

getListPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getListPrice_super object_ = (getListPrice_impl (javaCast object_ :: Advertisement))

getListPrice_impl :: Advertisement -> IO (Money.Money)
getListPrice_impl this = do
        pure ((jget (this).listPrice))


setListPrice :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setListPrice object_ a1 = jmethod object_ "setListPrice" (\() -> (setListPrice_impl (javaCast object_ :: Advertisement))) () a1

setListPrice_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setListPrice_super object_ a1 = (setListPrice_impl (javaCast object_ :: Advertisement)) a1

setListPrice_impl :: Advertisement -> Money.Money -> IO (())
setListPrice_impl this listPrice = do
        jset (this).listPrice (listPrice)
        pure ()


getOurPrice :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getOurPrice object_ = jmethod object_ "getOurPrice" (\() -> (getOurPrice_impl (javaCast object_ :: Advertisement))) ()

getOurPrice_super :: (JavaObjectClass this_) => this_ -> IO (Money.Money)
getOurPrice_super object_ = (getOurPrice_impl (javaCast object_ :: Advertisement))

getOurPrice_impl :: Advertisement -> IO (Money.Money)
getOurPrice_impl this = do
        pure ((jget (this).ourPrice))


setOurPrice :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setOurPrice object_ a1 = jmethod object_ "setOurPrice" (\() -> (setOurPrice_impl (javaCast object_ :: Advertisement))) () a1

setOurPrice_super :: (JavaObjectClass this_) => this_ -> Money.Money -> IO (())
setOurPrice_super object_ a1 = (setOurPrice_impl (javaCast object_ :: Advertisement)) a1

setOurPrice_impl :: Advertisement -> Money.Money -> IO (())
setOurPrice_impl this ourPrice = do
        jset (this).ourPrice (ourPrice)
        pure ()


getRank :: (JavaObjectClass this_) => this_ -> IO (Int)
getRank object_ = jmethod object_ "getRank" (\() -> (getRank_impl (javaCast object_ :: Advertisement))) ()

getRank_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getRank_super object_ = (getRank_impl (javaCast object_ :: Advertisement))

getRank_impl :: Advertisement -> IO (Int)
getRank_impl this = do
        pure ((jget (this).rank))


setRank :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRank object_ a1 = jmethod object_ "setRank" (\() -> (setRank_impl (javaCast object_ :: Advertisement))) () a1

setRank_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setRank_super object_ a1 = (setRank_impl (javaCast object_ :: Advertisement)) a1

setRank_impl :: Advertisement -> Int -> IO (())
setRank_impl this rank = do
        jset (this).rank (rank)
        pure ()


getImage :: (JavaObjectClass this_) => this_ -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage object_ = jmethod object_ "getImage" (\() -> (getImage_impl (javaCast object_ :: Advertisement))) ()

getImage_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage_super object_ = (getImage_impl (javaCast object_ :: Advertisement))

getImage_impl :: Advertisement -> IO (AdvertisementImageInterface.AdvertisementImageInterface)
getImage_impl this = do
        pure ((jget (this).image))


setImage :: (JavaObjectClass this_) => this_ -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage object_ a1 = jmethod object_ "setImage" (\() -> (setImage_impl (javaCast object_ :: Advertisement))) () a1

setImage_super :: (JavaObjectClass this_) => this_ -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage_super object_ a1 = (setImage_impl (javaCast object_ :: Advertisement)) a1

setImage_impl :: Advertisement -> AdvertisementImageInterface.AdvertisementImageInterface -> IO (())
setImage_impl this image = do
        jset (this).image (image)
        pure ()


getProduct :: (JavaObjectClass this_) => this_ -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct object_ = jmethod object_ "getProduct" (\() -> (getProduct_impl (javaCast object_ :: Advertisement))) ()

getProduct_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct_super object_ = (getProduct_impl (javaCast object_ :: Advertisement))

getProduct_impl :: Advertisement -> IO (AdvertisementProductInterface.AdvertisementProductInterface)
getProduct_impl this = do
        pure ((jget (this).product))


setProduct :: (JavaObjectClass this_) => this_ -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct object_ a1 = jmethod object_ "setProduct" (\() -> (setProduct_impl (javaCast object_ :: Advertisement))) () a1

setProduct_super :: (JavaObjectClass this_) => this_ -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct_super object_ a1 = (setProduct_impl (javaCast object_ :: Advertisement)) a1

setProduct_impl :: Advertisement -> AdvertisementProductInterface.AdvertisementProductInterface -> IO (())
setProduct_impl this product = do
        jset (this).product (product)
        pure ()


getThumbnail :: (JavaObjectClass this_) => this_ -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail object_ = jmethod object_ "getThumbnail" (\() -> (getThumbnail_impl (javaCast object_ :: Advertisement))) ()

getThumbnail_super :: (JavaObjectClass this_) => this_ -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail_super object_ = (getThumbnail_impl (javaCast object_ :: Advertisement))

getThumbnail_impl :: Advertisement -> IO (AdvertisementThumbnailInterface.AdvertisementThumbnailInterface)
getThumbnail_impl this = do
        pure ((jget (this).thumbnail))


setThumbnail :: (JavaObjectClass this_) => this_ -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail object_ a1 = jmethod object_ "setThumbnail" (\() -> (setThumbnail_impl (javaCast object_ :: Advertisement))) () a1

setThumbnail_super :: (JavaObjectClass this_) => this_ -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail_super object_ a1 = (setThumbnail_impl (javaCast object_ :: Advertisement)) a1

setThumbnail_impl :: Advertisement -> AdvertisementThumbnailInterface.AdvertisementThumbnailInterface -> IO (())
setThumbnail_impl this thumbnail = do
        jset (this).thumbnail (thumbnail)
        pure ()


getDisplayInBrowserContraintsInterface :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface object_ = jmethod object_ "getDisplayInBrowserContraintsInterface" (\() -> (getDisplayInBrowserContraintsInterface_impl (javaCast object_ :: Advertisement))) ()

getDisplayInBrowserContraintsInterface_super :: (JavaObjectClass this_) => this_ -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface_super object_ = (getDisplayInBrowserContraintsInterface_impl (javaCast object_ :: Advertisement))

getDisplayInBrowserContraintsInterface_impl :: Advertisement -> IO (DisplayInBrowserContraintsInterface.DisplayInBrowserContraintsInterface)
getDisplayInBrowserContraintsInterface_impl this = do
        pure ((jget (this).displayInBrowserContraintsInterface))


