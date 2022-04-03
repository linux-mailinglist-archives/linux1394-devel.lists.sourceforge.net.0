Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C70D4F07C6
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Apr 2022 07:21:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nasfr-0002Sj-4q; Sun, 03 Apr 2022 05:21:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nasfp-0002Sb-P4
 for linux1394-devel@lists.sourceforge.net; Sun, 03 Apr 2022 05:21:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WeeRCkZhxmtARzf06YltnRLpzhoYn2mfqbh7gF1oO98=; b=VZfvIIa8MZWNmrMNAZqw82xeV6
 ODp3urohf8BSscOqHWe7V8AtbOvvDCPaOBWbGvOq/YSB3z8xOE9xWhePH/KzZmwioB7wfYht/yDyz
 05xhsbtjIh8ZwHl7lceS7dWuaBdhyJpcD1rPD/Q8dCmlhZVAaI2MM87qjxwKuYXDySLk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WeeRCkZhxmtARzf06YltnRLpzhoYn2mfqbh7gF1oO98=; b=HbzNMbXfBrzPfRXfajn1Uj9+vd
 /Ch1I8M2SxRy46rjBLMuF8At1+/D497z0Qr2KkvfPIk/S8P4SlJipF14DJrRt6hQvtqzIITUr2ztM
 GRotzUsLupmtxx3xiExrkOUgfE+3/D4oiIkzgebjTNWAxy7C4id3FAdKgF6V7gfq6iFc=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nasfl-003bvp-DB
 for linux1394-devel@lists.sourceforge.net; Sun, 03 Apr 2022 05:21:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id D1E793200D30;
 Sun,  3 Apr 2022 01:02:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 03 Apr 2022 01:02:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; bh=WeeRCkZhxmtARzf06YltnRLpzhoYn2
 mfqbh7gF1oO98=; b=BZA6oC2Pcq0YOqfC+nC+driizm60Q3zn1Rw/v/NjET+Kp0
 /rGHjKINSU22NqTZoDouOEw4iJfmO5GCVUY+tVhgHAZBsHMZlUeGc7yAqSEiWwMv
 WulEJuKr9rApl/bjko17VLvPvXvWY3ZhcPT4i7o2xB2Il3TNbGmwUd1ldmtTtDc4
 aV/99s9FRiz4R8Kl59Ugk0cI29motgnNiORb/EB0aaYIDuZCWYamvEPGeIM5xpwb
 DmfLWyqCKUH/ltrzvurFyY0sRxKPwPN8s63S+fdR9dx8NKUXIKNTMxM9PLqiObVZ
 1Yi/KhPoiJ9nuDSBa6euAjyKl7RHxAapi/1Fxtwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=WeeRCkZhxmtARzf06
 YltnRLpzhoYn2mfqbh7gF1oO98=; b=bX0JCIe9dSbss8GwNo95tUCB3aLr5Nt0z
 moHkSrwhHPrLFwXssMbkSXNuJemBlFWqpUwVGmA5cno6S6WwkLciwmMCKLZPo3SF
 ESY4izFB0yyMGzXZJQA8Vdfp4wcjBRXoWMwh50C3phpP0uvbq/cgPi3RMS7IzqZc
 JZmEsm3xfwufC6Tcnwq1kBssGHZcN3kKjI93WFhz3sZ4tYIs0K/6m0vDbyptONm5
 /ABnQqwMKTtOpjT9AhVWiA6dMomLkiHg3AQytn9C4+gLi6oxrkjqekJxEDDfTZdt
 WOSNdZXl5iOB4RGf3Yahv+PUr1srI5ix7TQPJHTDf3hkkH/G6KidQ==
X-ME-Sender: <xms:eipJYohqhsUtqtfPKg1sDrKZS3oky1xwRh2D4v7Q9S66dCowPgNufA>
 <xme:eipJYhCoR0scliF3ten5UVVVyJI7U18RX3xQuMUoniHnl6DSE66z0n4Z3hHNJ4mcD
 xoeOpb4ZaLb7C_2g94>
X-ME-Received: <xmr:eipJYgFHoTS45-XDtLMgl6rHDIEz0sZ8wGIi5YFECqWW7e6EOeS4UrSCmhpGHAwZkAd90OU-ytSuwNBlJQ4nh4JajmN1JoiM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiledgkeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeejgeeifeeuveeufeeigeegjeelvdfgjeegffejgfdv
 keelhefgtdefteejleekjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:eypJYpSNReaLdacj38Bh7MeXLPSYhR4smNqfigJXlUj00HUD3T1hwQ>
 <xmx:eypJYlwEhKEwSD4iDCxsc9fl2ugDo_666pAuug2iDwuL5miw_Ss7Dg>
 <xmx:eypJYn4f165a2FQorFf1p2agPntxEXg1QmpFJVN4r5ZWVqk0R2xPNg>
 <xmx:eypJYsmBAyVyslg2qkhmkld_MI3CqBf0Kf9TInPOIM2eE8uyY8RGZg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Apr 2022 01:02:49 -0400 (EDT)
Date: Sun, 3 Apr 2022 14:02:47 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Jakob Koschel <jakobkoschel@gmail.com>
Subject: Re: [PATCH] firewire: remove check of list iterator against head
 past the loop body
Message-ID: <YkkqdybZovAITy6k@workstation>
Mail-Followup-To: Jakob Koschel <jakobkoschel@gmail.com>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux-kernel@vger.kernel.org, "Bos, H.J." <h.j.bos@vu.nl>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>,
 linux1394-devel@lists.sourceforge.net,
 Mike Rapoport <rppt@kernel.org>
References: <20220331223601.902329-1-jakobkoschel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331223601.902329-1-jakobkoschel@gmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Apr 01, 2022 at 12:36:01AM +0200, Jakob Koschel
 wrote: > When list_for_each_entry() completes the iteration over the whole
 list > without breaking the loop, the iterator value will be a bogus [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nasfl-003bvp-DB
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
Cc: linux-kernel@vger.kernel.org, "Bos, H.J." <h.j.bos@vu.nl>,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, linux1394-devel@lists.sourceforge.net,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Apr 01, 2022 at 12:36:01AM +0200, Jakob Koschel wrote:
> When list_for_each_entry() completes the iteration over the whole list
> without breaking the loop, the iterator value will be a bogus pointer
> computed based on the head element.
> 
> While it is safe to use the pointer to determine if it was computed
> based on the head element, either with list_entry_is_head() or
> &pos->member == head, using the iterator variable after the loop should
> be avoided.
> 
> In preparation to limit the scope of a list iterator to the list
> traversal loop, use a dedicated pointer to point to the found element [1].
> 
> Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
> Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
> ---
>  drivers/firewire/core-transaction.c | 30 +++++++++++++++--------------
>  drivers/firewire/sbp2.c             | 13 +++++++------
>  2 files changed, 23 insertions(+), 20 deletions(-)

I think it is a good catch.

Reviewed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

For the changes in firewire-core module:
Tested-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

Unfortunately the activity for maintenance in Linux FireWire subsystem
is quite low. No actions in past half a year. If the patch blocks
further work to improve list implementation, I think it better to look
for the other path to merge.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
