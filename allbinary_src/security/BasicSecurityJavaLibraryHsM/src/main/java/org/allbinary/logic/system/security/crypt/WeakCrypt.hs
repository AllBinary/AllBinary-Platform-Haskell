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
-- package org.allbinary.logic.system.security.crypt
module WeakCrypt where

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
import qualified DatabaseEncoder -- same package or java.lang
import qualified TsUtil -- org.allbinary.TsUtil
import qualified PreLogUtil -- org.allbinary.logic.communication.log.PreLogUtil
import qualified StringUtil -- org.allbinary.logic.string.StringUtil
import qualified AbCrypt -- org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt
import qualified KeySpecFactory -- org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory
import qualified CommonStrings -- org.allbinary.string.CommonStrings

data WeakCrypt = WeakCrypt
    { header_ :: JavaHeader
    , tsUtil :: IORef (TsUtil.TsUtil)
    , abCrypt :: IORef (AbCrypt.AbCrypt)
    }

instance JavaNull WeakCrypt where
    javaNull = javaNullRecord "WeakCrypt"

instance JavaEquals WeakCrypt where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq WeakCrypt where
    (==) = jrecordEquals

instance JavaObjectClass WeakCrypt where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE keys #-}
keys = unsafePerformIO (newIORef ((jarrayFromList ["qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833"])))

{-# NOINLINE kEYMAX #-}
kEYMAX = unsafePerformIO (newIORef ((jlength (jget WeakCrypt.keys))))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO WeakCrypt
newRecord_ = do
    header_ <- newJavaHeader
    tsUtil <- newIORef javaNull
    abCrypt <- newIORef javaNull
    let this = WeakCrypt header_ tsUtil abCrypt
    jregisterLevel header_ this
    jregisterMethod header_ "encrypt" (\() -> encrypt_impl this)
    jregisterMethod header_ "decrypt" (\() -> decrypt_impl this)
    pure this

initFields_ :: WeakCrypt -> IO ()
initFields_ this = do
    jset this.tsUtil =<< (TsUtil.getInstance)
    jset this.abCrypt =<< (AbCrypt.new_1 (jget ((jio (KeySpecFactory.getInstance))).dES))
    pure ()

new_1 :: Int -> IO WeakCrypt
new_1 key = do
    this <- newRecord_
    init_1 this key
    pure this

init_1 :: WeakCrypt -> Int -> IO ()
init_1 this key = do
        initFields_ this
        handle (\(e :: JavaException) -> do
            commonStrings <- (CommonStrings.getInstance)
            Control.Monad.void (PreLogUtil.putOE (jget (commonStrings).eXCEPTION) this "SuperCrypt(key)" e)
            ) $ do
            Control.Monad.void (AbCrypt.init ((jget (this).abCrypt)) (jindex ((jget WeakCrypt.keys)) (key)))
        pure ()


encrypt :: (JavaObjectClass this_) => this_ -> String -> IO (String)
encrypt object_ a1 = jmethod object_ "encrypt" (\() -> (encrypt_impl (javaCast object_ :: WeakCrypt))) () a1

encrypt_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
encrypt_super object_ a1 = (encrypt_impl (javaCast object_ :: WeakCrypt)) a1

encrypt_impl :: WeakCrypt -> String -> IO (String)
encrypt_impl this value = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "Encrypt Failed" this "encrypt" e)
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            ) $ do
            crypted <- (AbCrypt.encrypt ((jget (this).abCrypt)) (jio (TsUtil.getByteArray ((jget (this).tsUtil)) value)))
            (DatabaseEncoder.encode crypted)


decrypt :: (JavaObjectClass this_) => this_ -> String -> IO (String)
decrypt object_ a1 = jmethod object_ "decrypt" (\() -> (decrypt_impl (javaCast object_ :: WeakCrypt))) () a1

decrypt_super :: (JavaObjectClass this_) => this_ -> String -> IO (String)
decrypt_super object_ a1 = (decrypt_impl (javaCast object_ :: WeakCrypt)) a1

decrypt_impl :: WeakCrypt -> String -> IO (String)
decrypt_impl this value = do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (PreLogUtil.putOE "decrypt Failed" this "decrypt" e)
            pure ((jget ((jio (StringUtil.getInstance))).eMPTY_STRING))
            ) $ do
            decrypted <- (AbCrypt.decrypt ((jget (this).abCrypt)) (jio (DatabaseEncoder.decode value)))
            (jnewString decrypted)


