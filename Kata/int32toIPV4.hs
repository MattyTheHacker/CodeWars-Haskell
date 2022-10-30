module IPv4 where

import Data.Word  (Word8, Word32)
import Data.Bits
import Data.List
import Data.List.Split

type IPString = String

-- take a 32-bit integer and return a string representation of its IPv4 address
word32ToIP :: Word32 -> IPString
word32ToIP word32 = show (word32 `div` 16777216) ++ "." ++ show (word32 `div` 65536 `mod` 256) ++ "." ++ show (word32 `div` 256 `mod` 256) ++ "." ++ show (word32 `mod` 256)



word32ToIP' :: Word32 -> IPString
word32ToIP word32 = intercalate "." . map show $ octets word32

octets :: Word32 -> [Word8]
octets w = [ 
    fromIntegral (w `shiftR` 24), 
    fromIntegral (w `shiftR` 16), 
    fromIntegral (w `shiftR` 8), 
    fromIntegral w
    ]

