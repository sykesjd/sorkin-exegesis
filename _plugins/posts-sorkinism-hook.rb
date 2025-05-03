#!/usr/bin/env ruby
#
# Scrape Sorkinisms from a post to allow for glossary

Jekyll::Hooks.register :posts, :pre_render do |post|
    vtRegex = /(NEW|RETURNING) Verbal Tic\: (.*)/
    vtMatches = post.content.scan(vtRegex)
    vts = Array.new
    for vt in vtMatches do 
        vts << vt[1]
    end
    post.data['verbal_tics'] = vts

    dmRegex = /(NEW|RETURNING) Dialogue Motif\: (.*)/
    dmMatches = post.content.scan(dmRegex)
    dms = Array.new
    for dm in dmMatches do 
        dms << dm[1]
    end
    post.data['dialogue_motifs'] = dms

    pbRegex = /(NEW|RETURNING) Plot Bunny\: (.*)/
    pbMatches = post.content.scan(pbRegex)
    pbs = Array.new
    for pb in pbMatches do 
        pbs << pb[1]
    end
    post.data['plot_bunnies'] = pbs

    tsRegex = /(NEW|RETURNING) Topical Signature\: (.*)/
    tsMatches = post.content.scan(tsRegex)
    tss = Array.new
    for ts in tsMatches do 
        tss << ts[1]
    end
    post.data['topical_signatures'] = tss

    nvRegex = /(NEW|RETURNING) Non-Verbal Signature\: (.*)/
    nvMatches = post.content.scan(nvRegex)
    nvs = Array.new
    for nv in nvMatches do 
        nvs << nv[1]
    end
    post.data['nonverbal_signatures'] = nvs

    snRegex = /(NEW|RETURNING) Sorkin Name\: (.*)/
    snMatches = post.content.scan(snRegex)
    sns = Array.new
    for sn in snMatches do 
        sns << sn[1]
    end
    post.data['sorkin_names'] = sns

    sdRegex = /(NEW|RETURNING) Sorkin Drink\: (.*)/
    sdMatches = post.content.scan(sdRegex)
    sds = Array.new
    for sd in sdMatches do 
        sds << sd[1]
    end
    post.data['sorkin_drinks'] = sds

    spRegex = /(NEW|RETURNING) Sorkin Player\: (.*)/
    spMatches = post.content.scan(spRegex)
    sps = Array.new
    for sp in spMatches do 
        sps << sp[1]
    end
    post.data['sorkin_players'] = sps
  end
  