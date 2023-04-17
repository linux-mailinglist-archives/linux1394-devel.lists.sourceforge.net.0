Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D67A16E4B97
	for <lists+linux1394-devel@lfdr.de>; Mon, 17 Apr 2023 16:36:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1poPxh-0005wv-Cz;
	Mon, 17 Apr 2023 14:36:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1poPxe-0005we-Pm
 for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 14:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l15cdflCQ3SxSuEdRTgAeWktejfsY5ZPKXq6m2nekW4=; b=E6oBQn9cGqPdpze3trqSp/vmu+
 yX7yUDcP1frIjeaKbg0/Bv4Qmwj1TcjpGt5EqGTvXZJ9cJl0ypxe0nWHCGf0E0ADgkWDtd4Kr8FaJ
 b7dktYhHzNNyEZo6cAI/Qpq/E/LbPIubiQ1fgNZ3S6axHuggHXuHb9mo3doHCByqPA14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l15cdflCQ3SxSuEdRTgAeWktejfsY5ZPKXq6m2nekW4=; b=QiWKXCNZiIGxXA8DxS/A8MHu+j
 EjeygdRm1vdBBv8uL0oy9vKTCnOty/mQznPL2vRl3Gyb5iMppB3BiWmI33IAj1y7M50v96Iqr8i0p
 6kJxIpistmKQ8OHO2YsXqpTocUpRQ/P1tIvqoBZ4gPdpJMv9anNWAViK4IwN/mJ8LqJ0=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1poPxZ-0001mv-Vh for linux1394-devel@lists.sourceforge.net;
 Mon, 17 Apr 2023 14:36:07 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 556965C00F4;
 Mon, 17 Apr 2023 10:17:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 17 Apr 2023 10:17:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1681741033; x=
 1681827433; bh=l15cdflCQ3SxSuEdRTgAeWktejfsY5ZPKXq6m2nekW4=; b=G
 KDDM4yg0ja82PR7UFA2IM88NqCebJi+TFhPe8bF23WcNjhVDQEWCH1TYfg/60PWJ
 2eq1+fp8TXDMhTdAo/E2HehgsceviXYt1VyjnZmNLEuWKMgElHZIGn5R/Z6tAA0p
 Kb3cUaoVqZa3bGq2fJmq8Oj0hhCotfNQiB2IIiaiBIHTmYzZwLT4chniAXhpmBFp
 UWxYRkEzUNums0CC5f+HhbgYFxsLO+HNXaaL2GbwLbEJJfXPYxN+HlfEJtetklRT
 SUMhclwXbBISsRIdWft2w+V41XlAI77zXdVkkI3ER0pDvi9eVz0bzuteQWf4+goy
 BZ8lKRk4DAlOxJdEkJBmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1681741033; x=1681827433; bh=l15cdflCQ3SxS
 uEdRTgAeWktejfsY5ZPKXq6m2nekW4=; b=HF7lLdY3CG29HOuOyGNcjYY41pnEv
 MWBIHfX4aUc8tAYUFszbitfZZgH2Pfx6i6p48SFWRI+8fqFgrEdyooi7UblPTekR
 cdHHJP3Iyyf4WrF/QdmlOnQJ51hUmV4FB7Me++xJEC0Xo+etuYcMvn1J9iAK399O
 V83pXy9XNLaq/hGIJ4qyYd/WVSc0ifeAObIa7Y1gdzbiDkPiAYAp3Vsf2RbFhIeK
 S1xL91ij3fgpNdT2yUbJwq/RrTdXEBYxzR3H8Obp8+TPmD1U5zaorqbCYhjGlSwO
 DgoigqphQ21byer1j6UMHCssE1N4zMjFmoeKNXS4vFd9D4SjILRU0orLA==
X-ME-Sender: <xms:6FQ9ZJ2aK6vxxCPEwnujDN1tMnT7qy31LDz9CRpsNeC_82efDKOFfA>
 <xme:6FQ9ZAH_KwWWFROQNPE3U6K-723W797rjDrdAbHaVcQwbrlsyIj2Vx5UL53MN2Toq
 zx_EIw1EnXaXaVflpg>
X-ME-Received: <xmr:6FQ9ZJ7RIqUMmegwY4RZWC-C74hZarJKOjNk9kPUX5QLRt2sNLUp1-mFKXe_FkxATNT3sxg2MlKll4nDa9H6acQMhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdeliedgjeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephfduvedvgfduueekleeuleeihedvffdugffhteei
 ffevhfeutddtffeijeegueevnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpmhgrrh
 gtrdhinhhfohenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:6FQ9ZG2gsh7a7AfZLmtW0Mo3JYojU-LUQPQvPWGRvm3Xo2FzHL7dVw>
 <xmx:6FQ9ZMEA8DSYUxX73vgYYLZllY3pCt1BTZl4VCoU8C-J-rLIenRnGA>
 <xmx:6FQ9ZH9UsLvTi3W8sTDp2Et2voeIOM3YKtRS1VazXkEWWw0R2l8ulg>
 <xmx:6VQ9ZIjujCh3Rqaai1CTmVOzf24c8eby41BAQB1LRmNrSouq0u8iAA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 17 Apr 2023 10:17:10 -0400 (EDT)
Date: Mon, 17 Apr 2023 23:17:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: rdunlap@infradead.org
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230417141706.GA493669@workstation>
Mail-Followup-To: rdunlap@infradead.org,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 tiwai@suse.de, broonie@kernel.org
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
 <20230310210356.561dbe63@kant>
 <20230311080343.GA378828@workstation>
 <20230311101554.14c211d4@kant>
 <20230312070728.GA421475@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230312070728.GA421475@workstation>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Randy, I'm sorry that I didn't notice your reply, but I'm
 off from the receivers list of the message. > Hi-- > >On 3/11/23 23:07, Takashi
 Sakamoto wrote: >> Hi, >> >>> >>> It's good to see you being active in the
 kernel and related userland >>> development/ maintainership, and that you
 have a plan for [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1poPxZ-0001mv-Vh
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
Cc: tiwai@suse.de, broonie@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Randy,

I'm sorry that I didn't notice your reply, but I'm off from the receivers
list of the message.

> Hi--
> 
>On 3/11/23 23:07, Takashi Sakamoto wrote:
>> Hi,
>> 
>>>
>>> It's good to see you being active in the kernel and related userland
>>> development/ maintainership, and that you have a plan for the next years.
>> 
>> At the moment, I have a problem about the list archive.
> 
> If there is still a problem about the mailing list archives,
> Hank Leininger at marc.info has been pretty good in the past about providing
> archives fore lore.kernel.org.
> See the bottom of https://marc.info/?q=about for his email address.
 
Thanks for the information. As a quick glimpse, linux1394-devel has been
archived since 2003. It looks to be a good source to push into
lore.kernel.org, while I know that the list archive should include many
spams since any one is allowed to post to the list without subscribing and
being moderated at one time. It is one of my reason not to use the list
so actively. I need to make filter to remove them before pushing.
Furthermore, the ownership of list is still unclear to me. I have a small
hesitation to use it further...
 
> Are you waiting for the kernel.org account before merging the update to the
> MAINTAINER's file?

I've already got the account and enough permission to linux1394
repository, but The repository is inactive so long, and abandoned. Looking
ahead to my future work, I'm preparing them at present.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
