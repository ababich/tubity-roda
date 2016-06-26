class Counter

  # originally aplhabet is 64 symbols:
  #          "bcdfghjklmnpqrstvwxzBCDFGHJKLMNPQRSTVWXZ0123456789-_"
  # and is a bit shuffled to be more interesting

  ALPHABET = %W(
    sMXzj6TZLlvk4c1bqS0ghCBJ9Fx-t2PdG3_nQRVrHp8NKDfm7W5w
    4sPhwXl-mfTJB8GMnqkQFbcjdpgt5W1rvS9HD32_NCZ7xL0zR6KV
    6kp8v0CRnX2_Krx-9sVZWGjQ1Nf5BHJb3z4MtTdLwmgP7lSFDqhc
    LPGx8B-q9H6phXMn52cgkVTW7wtmlfQvJ4jS3KsRdzrb_ZCNF01D
    zgwrW-q9Ln0dMPRCBv5FkKm2pHsQ8D76xbGZjtN_lhc3JS1fVX4T
    b4KN1t5s8dDqXQknwFS_WvCfLZc6rxmR7JVhTMpBGP2j3-0Hz9gl
    QRdwD9rX3FK_bft-WkHc71BjmZP405VvNJn8p2hxLlTM6GsCqgzS
    sVLTkCHtN1xKc_4G6B3Whb-QM9ZXnDfr7PSg82J5vzpq0lwjdmFR
    vMSC6JKbPls9ztrj5w7k31Z4hgc2L_dTxFNRpq8DHmBWG-f0nQVX
    XrD4Lc_F3nfb-qdvSxpCBZVWm1swjk6gKhl570tJHQNP9TR8Gz2M
    4fBXHtDcTdxs1M_WS85qlLr6Gm3ZRbPhkCwvjzV92NK7JQpFgn-0
    fZFc3n8ThwsBDkRQlgx4MVXr9mL_vHjJtPqb1z50W7GC2Kdp6-NS
    Kk3tf0psXcLBxPg4lhqDJ6Rw8SzNvGm-FjZCM57rQb29dWnV_H1T
    0Cc_WX5D16JgbhZ9-HRrvBL8VGd4TKpkzw7mNP3Qf2SjxtsnMFql
    -rX8c65Kxz0DgPbdGCwvfnWHVLhm_t7kjFJ2sBM9lSZ1NqQp43RT
    zpjmrNdJLWGx971P5gs64BwfSvlZ_kFQnXHTqV8Dt20RKbcC3-hM
    l6gNJx2cnmqBSzb9Z_dHtkw-01pQVD3PhvWMLCr5jfsTFGR4KX78
    hFC_rXjmxzcgQK0d359nGVfZ4Pv7RLsWtS-2T1pDJwBb6qHNMl8k
    ctM0-LwSZ8JlqWDKCbXnVzfPFxRpd34Nsv69g1rjBkhQ5H_T2mG7
    0dL6BDk8g2HW5TPj4FS9lRxbtmZJhfvCNKsM31GXwrpnV7-Qczq_
    w_ZSGNC3nzRtm0bXQK914lDpPFfB7MLkcJ62-rvsq8WgdHVjThx5
    phqKSc0z7F_nD4mgf5X1MQWN-B9lZHkd8P2trLCVjxRbswvGJ3T6
    M5qt3hGnrFRJ-_4Kz2dgZC9QfSTWlND6H10wmxkpX8bvsBcLjV7P
    -FX8VHBtqvQ0GRlSCMpLNw6Zdcgs7mDfjzk53r4TPnWJ_hb91K2x
    mB_8ZTbHXgSq5p9w0t17rR2fWs-3dxFKnJDMkl4vN6GhcVjQLCzP
    rNcS3nZxdXR0sjMH1wFv7g96_f5tWz4h-GTpVklBQqmDPbKC82LJ
    14w_smrVjp-S6WhLTnbR38BxlPd7HJKvXcN0qkf2QFZDGgt5MzC9
    fsJFcwjG-W4BhTKMz58Hd1X2Cxqt0SNQRVDgv3nZ79rm6PpbL_kl
    -5ns7cj6p4mVfzTGqPJSHxkKCbMQ3L1wlFXt_B8v0dDgRNh9r2WZ
    BbhWNvTQ9L4pGDHtSmx8wRcJd3lfPkMr6ZCjKX-q52z17_gn0sFV
    8x3V5rPKXphNR_LW4qmn-lTHQwdt7cD90gzM2G6FCfbvsBjJkS1Z
    hPf0lc1xBtRF53Wgv7GqJwnMV2DT6H4SzdmKZr-8j_Q9bpskCXNL
    pNWg2w5MzRqrPCfQVlbxvKc-hdsFmn9XB16_T3DLjGZH8t4kS07J
    hV_T0G6vKxkFdtcz18gfpmLsXJ93r4NbBlSZ5CPRqHwDQ7W-n2jM
    HxbLvd5F9XfnJ2gKl_6hkpsMZSwDWjGz1tT3N0qrQ7c-mP8CRV4B
    qsvM-n59Wj46tkCXHhw_b8pBfV1R2rK7FxcJ0mTg3SNzdPLDZGlQ
    gw843bH6WpRdVh7lXmzNTDKBkQvJq10M_cGrLFfS2x-5ntsjPZ9C
    z8-Z_JTqB4C9cKlV6mHPRbkMh3tgQ2x7NnWd1wX0LFvSfrsGDj5p
    R7TJdFq895MPtj4xDSvs2GQ30kL-BV1cwWg_zNmCZp6nhlHrKXfb
    NhxbRQz3nZB-gVFdGLrl8WtHDwpCXfvc0m7k2Ts5S_Pq4j6JMK19
    N4vDtjWJX0Cszxdr1nLkg_bc5l9-hFSmfVqpGBQM6Z2T73RHwKP8
    K_2fRSGvq81ZrnMT54N3CdF9XL0lHPm7gVWJkjhDBs6tcb-xzwQp
    Cm5qwSQH3FrRGt0LfVg-_J42jBXnMPl7bzvkdh8pNcT6xDWZK91s
    DlmB1r-H8LSXWRsZTN72vngtPpk56CqMKGwx0dbJzF39Qh4Vfjc_
    MCSfXqvF-HjNwd35c0Jlb9Lk6BgmQ4nhpRx71WVG_rZD2zPstK8T
    S_qHs2rmpdRghT-WtJ7BfwxCXD1v9KVz84nLcj6ZGkb0lPQMN35F
    kxg-cHTnJr03PBb2MW8ZjGvNRlSt_hzKmVdqXF9p64f5L7wCsQ1D
    BMKs5GjxQ_pJ6WLqnbhz3-CTv8c4DNk9FR1X0HmlVPZfgwdtrS72
    5gZ7HtBmq36jTS4cC_9zMhPDXLGlwJpsfvFWQkV8xb20-dRKn1rN
    pRsqr_Mg7kV3hz2NtF6wfx80SGHjmDl49T1CP-d5cQnZWvbXKLBJ
    C9jhp_nFW1rNRPt8Kb4SHgdmBkQZT7lfGw-V3D5vxzXc6MJ20Lqs
    1bQ3xVfkm0vGRJl2D76rh-dpqLHF8sKMWZw_XSzjBnNcgC9PTt45
  )

  ALPHABET_SKIPPABLE = "-_"
  ALPHABET_EXTRA     = /\d/

  #database jeys of global counters
  KEY = "tubity:counter"
  # KEY_DICTIONARY = "Tubity:Dictionary"

  def self.get_hash
    hash = R.get(KEY)
    # new_hash = next_hash_with_dictionary(hash, ALPHABET)
    new_hash = next_hash(current: hash)
    R.set(KEY, new_hash)

    new_hash
  end


  private

  # def self.next_hash_with_dictionary(current: nil, alphabet: ALPHABET)
  #   words = new = current

  #   while !words.empty?
  #     new = next_hash(current: new, alphabet: alphabet)
  #     words = new.delete(ALPHABET_SKIPPABLE)
  #                .split(ALPHABET_EXTRA)
  #                .select{|w| !w.empty? && R.sismember(KEY_DICTIONARY, w.downcase)}
  #   end

  #   new
  # end

  def self.next_hash(current: nil, alphabet: ALPHABET)
    return (0..1).map{|i| alphabet[i][0]}.join unless current

    new = current.dup
    # alphabet subset length
    a_size = alphabet[0].size - 1

    # index of last char
    idx = new.size - 1

    while idx >= 0
      last_chr = new[idx]
      last_pos = alphabet[idx].index(last_chr)

      if last_pos < a_size
        new[idx] = alphabet[idx][last_pos + 1]

        return new
      else
        new[idx] = alphabet[idx][0]
        idx -= 1
      end
    end

    # if we got this point this means that we need to extend length
    return new + alphabet[new.size][0]

    # while a_index == alphabet.length
    #   h_index -= 1
    #   new << alphabet.first and break if h_index < 0

    #   last = new[h_index]
    #   a_index = alphabet.index(last) + 1

    #   new[h_index] = alphabet[a_index % alphabet.length]
    # end
  end
end
