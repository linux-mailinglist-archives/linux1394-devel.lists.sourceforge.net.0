Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B25CB8B5469
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 11:42:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1NWv-0006xo-Co;
	Mon, 29 Apr 2024 09:42:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1NWu-0006xf-5G
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:42:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ob0pSOejbRMiDkatchAvVg8Wh5EVywjaiNfeKZgpZ74=; b=ABMu8nhtwvmxDP6UHAhorXhRsG
 74IqSx1ChP/nX7icfWWjkdpunOWik/8UpuJ2BjlCVosXpbAHM2uBq5oZ6TxtNGKT42Cfr45iqJMcA
 HIZZkqiuugzlJsv+bW6bXgJDeits2WDkkwj5+ZCLhPhmeSvG0BBVyJ4CI5MwdghuCsY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ob0pSOejbRMiDkatchAvVg8Wh5EVywjaiNfeKZgpZ74=; b=QlU39y+rJULixX4/7EaK8fK4tu
 Od7AuIfy0k2qUJEsnw8JJc+3DSLzi7l/ExU4GcUluAhVpDTz0E4GcZzSYW8IGSdFjxfwOoctXmPkN
 GLw3peVqGLchN1YPTOzqGJ27N/biAorjBJX3XU5ZrkdbKDxnZ0a5O9zttIIPYD+hmnAU=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1NWs-0007wD-TN for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:42:36 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.west.internal (Postfix) with ESMTP id 940E218000F1;
 Mon, 29 Apr 2024 05:42:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 29 Apr 2024 05:42:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714383744; x=
 1714470144; bh=ob0pSOejbRMiDkatchAvVg8Wh5EVywjaiNfeKZgpZ74=; b=X
 Qrj1cYOuO5fGIW1m0scHMcsewev6eaAYpEAdZ5L1pfna3H1uUBvziQkVQ6YmIZrX
 9YqrQCl9hWvPSvHfOIvPocsmySAyS4seG8eZDl+1wYI2JQp7sMzgkVn0qXZDxZtz
 ujwajci1WBpoaEYsdkUNg1YVA5QN8g8JCRnl4Q7ZeS5QD2WUhIM2QkN/yzjADP/I
 FRdInPkxYxaDXqzp7IMAi+NmZUw6pImvje9Gg23LT/oZSnCbNqxk+acxiOmom5ST
 QilTNAejschlV47J8iEmPVOctV5R9xMDXsCMLBTj9lriAC0wIlzgAnRZz4LbH4AX
 BFd/NzNnpxJMXtbp+oeVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714383744; x=1714470144; bh=ob0pSOejbRMiDkatchAvVg8Wh5EV
 ywjaiNfeKZgpZ74=; b=kyFBDsD1UoBTyX0D6tNKod5dlWiU6YuZ/CPnX3kxijxB
 ihRvfbVn7xeJsT4lZadgWsVWp1GHXF6mz6SRr4a3czFQ1Cw8P2hxj7VandgDTDdu
 +KcVH0Kope3QF8YeiDRdBfaRc9lr8A8PH2UUYwiPh/S6YlKv2xnZ7cHg2v23xaVx
 eB2qQvYbe3lH6tZ4D8ZjBrYOyRAqpodHu3rn57BSyJO0Q7WXWis2foDnTWDlpdzi
 E7i+6nyR8pKIo2tjSpV64VRaZwW8tQI0Texa9zZNa/Px0x3E3/WFDc3m/aHE6TlU
 AixqPuLSAWidWjNZJJ3P8E3uvZQLio12fz865AiNnQ==
X-ME-Sender: <xms:gGsvZj1icsMEv818hov77cvWGKOU4ixcfqxJuNQwxDUSVhdLFm-KJQ>
 <xme:gGsvZiG-KLqfUwOP3FqUiBWhQSIT2QQVrvENjK65IANXYjxgeQwBiMU5ckXIb6nSy
 3SRarsKl8OcIAjrnQE>
X-ME-Received: <xmr:gGsvZj7y9rmooOShoppNfBd1tMsZReut77tW5fJzSV7jZMxobyv960LNNK3PuQz8MltC0xZF2fTGwrwU-Y4YBHfFhRpDcRk_dv4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduuddgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:gGsvZo1E1GViwdlp_sJvm6ltKQF1mUoN_nJm6SctgdLlScUB6lHHbw>
 <xmx:gGsvZmGiN8WSGs0Un0S0Q1HPRQwOootRD1FAgnu8AbPN2ufOy2Iwqw>
 <xmx:gGsvZp_l5UQ-s1KkOzIFC0rfyfzd8zK-13tz2DCpqciunOZu-q3R2Q>
 <xmx:gGsvZjkwYeWFQJQRYT5361FT5o94lkWtFrLCSoz0M0lnzSpPD5lP_Q>
 <xmx:gGsvZrQ61m1QtpvOLNyuRVTASumdY6ZnMZVPLnMUwQCXhTRC-3J-32b3>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 05:42:22 -0400 (EDT)
Date: Mon, 29 Apr 2024 18:42:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>
Subject: Re: Security issue in linux/drivers/firewire/nosy.c
Message-ID: <20240429094221.GC709071@workstation.local>
Mail-Followup-To: Thanassis Avgerinos <thanassis.avgerinos@gmail.com>,
 linux1394-devel@lists.sourceforge.net
References: <CAFK=-gY++P_fUyEz36CE8U7qER2_ebJMTkb6-d4Ts6XpcHBzaQ@mail.gmail.com>
 <b260bb9c-edf8-4bfd-8a3f-2257f31bc9ee@app.fastmail.com>
 <CAFK=-gZm4iOVJKi7_1UVx2vMwFZmKs54vbXVowbqnoAiBZfZUQ@mail.gmail.com>
 <20240418084446.GA16391@workstation.local>
 <CAFK=-ga9SgK_GV_2f5Qvo+7MibJFtJy=kjWPu2rRynx1jn3QWQ@mail.gmail.com>
 <CAFK=-gaim8OL6mzJAnU9CBcweY7H+YRebfVCO1vz6iZhERh3vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFK=-gaim8OL6mzJAnU9CBcweY7H+YRebfVCO1vz6iZhERh3vg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Apr 18, 2024 at 11:18:08AM -0400,
 Thanassis Avgerinos
 wrote: > Resending as I forgot to reply-all. > > Best, > Thanassis I'm sorry
 for my late reply. I applied the patch to for-linus branch. I'll send it
 as the part of fixes for v6.9-rc7 in this weekend. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s1NWs-0007wD-TN
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Apr 18, 2024 at 11:18:08AM -0400, Thanassis Avgerinos wrote:
> Resending as I forgot to reply-all.
> 
> Best,
> Thanassis

I'm sorry for my late reply. I applied the patch to for-linus branch.
I'll send it as the part of fixes for v6.9-rc7 in this weekend.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
