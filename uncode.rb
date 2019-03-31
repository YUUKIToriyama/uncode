#!/usr/bin/ruby
# Uncode (Cipher machine using 💩💩︎) ruby version
#
# (C) Copyright 2019 YUUKIToriyama All Rights Reserved.

unko = "0x1F4A9".hex.chr("UTF-8")
unko_m = unko + "0xFE0E".hex.chr("UTF-8")

puts gets.chomp.unpack("H*")[0].to_i(16).to_s(2).gsub("1", unko).gsub("0", unko_m)
