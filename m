Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBFB7FD823
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Nov 2023 14:31:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1r8Keh-0003l8-1o;
	Wed, 29 Nov 2023 13:31:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1r8Ked-0003jx-0d
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Nov 2023 13:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rEAzZ5Ubyx5jgHcpIfVyTV7a0ekzGUFT5JoXA9YdUWc=; b=cl7goPOy/PaBRejCGrt9x/QvDP
 MDb94YMtfp2qOY3rQv4o4/B2K+AISC1QnP3+Gf8gNfHleAm8ya9n7hn7zfgCPSvfOn6EzIarM/xwQ
 rwXvcfQopI0B5NxUO+ULHa5BmpTR3Jn0loITXsBDAw7ihGsnOKI3+XdFK8eAb8vNekkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rEAzZ5Ubyx5jgHcpIfVyTV7a0ekzGUFT5JoXA9YdUWc=; b=BWNy2ow7HWtZsGK8Yxxca6I/AA
 FpDnXxCMwc+f5oA10nEbyXkO/VPlrMmNg51p7NctezLoUI1QZR9Y3SDjXzx7Rc6Glg40vyBjPW1Tr
 HToZ32CSpdeuQWlvjydsg9QGEeXVSgZjNF3dYdc1+bu+9GtChii44jPE5ue7WemKrR3Q=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r8KeY-0004pC-9D for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Nov 2023 13:31:01 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id A0FAA5C0275;
 Wed, 29 Nov 2023 08:24:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 29 Nov 2023 08:24:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1701264249; x=
 1701350649; bh=rEAzZ5Ubyx5jgHcpIfVyTV7a0ekzGUFT5JoXA9YdUWc=; b=m
 ZFcniXVVWW0xtaYbYYZXNC9dH6ZWGz3ZQvSAAnXZqDDkiyxKnDeI0+YjQ5lfI0bg
 SzqH3PnrgJ7lWasHzEDioGKVdUPY8gyffit4M1YZQtXfHxPpCXR1ZmaG+QSo2G8+
 Ed1MVlXUvdEJS/2LELFkERfR2t7cKMYsqggBetV9H+t/yHJiKBqPk4cIAa5svNr8
 yOjB76rwtb8Uxhcg5fcprM9MOLGA3BhNk1h0mvPSj60E1u5x0Xoh/cxh1BEFg2cd
 iKaeDzb8ufIJC8sFFQ1Zqbjazddz79k8vPSg2lFxbKpjoextX2UBxPxaxfSE011c
 GGKUStzry6FrXWsGaXJwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1701264249; x=1701350649; bh=rEAzZ5Ubyx5jg
 HcpIfVyTV7a0ekzGUFT5JoXA9YdUWc=; b=VJR6xQZwNboUk7lsp9o1xN7xLlJMr
 KYif0ObXr4sZeupyUsvTSEIjlR3CQJ4hQVvghShYiR5vlxFeqfAMTYaPzyFCCHR2
 zNlXmGEGDZsJAQ2a1zsXsuoJTGGAo6DXdz2djaIIrmsDT7i0D7Q8ZHpbBmpkKF/X
 NngGNbdz86Wyj5GA7wVrTh5iZsaf5oITcq60t4Jtp+MqBw/suViV+CHnVqZFJy5T
 4Zuudro54Lk8pLEfldibbG9rLkCJmRfm/OyJUDrNdN95juslP72wHXpJv9267fGx
 hb4docc33QEeKeMBGztwx7g+LtMlnd6c+NqN7kgVNnjiRITmeM8DjqZBw==
X-ME-Sender: <xms:eTtnZS6Yf59x-tI_gufhZ9ALhkUCkvuBvv2KMp-iD7bryVygttfbgQ>
 <xme:eTtnZb47awK2wRPz2554oBZnLn1XizONWxR85Wcm6aSk_P7zpVjPPekQwrcjcVsIK
 Oq-rwEApIY35t22NLs>
X-ME-Received: <xmr:eTtnZRd83S0oA-d8WigW-iYVIxg3mIi1tD_SDCqeOc9PMlRrBuHP4FfiXNFqFpoOlkkGBdG9O6Iu0siziwOMkDk1P1aBj-ZqTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeihedghedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:eTtnZfLr4SD3Q5OZkI2YKqObclvu_XhfaMqYfg0CYwgcZMT04GbiYA>
 <xmx:eTtnZWKmiJV_598lLGBDgI3g1yWXYwSC9iinMTjtQFSXci-qfU6wFQ>
 <xmx:eTtnZQyA6U80l9LI2YHRXVJx7cRu3Hya_W51KnwtcQZb1D6-DoNnbg>
 <xmx:eTtnZQxlP9qEFY13-0YVq1vLl_OosO0GQr2aV_tgGF6p2ukJU5qgYg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Nov 2023 08:24:08 -0500 (EST)
Date: Wed, 29 Nov 2023 22:24:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] Fix missing sysfs vendor/model entries for some devices
Message-ID: <20231129132406.GB8078@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net
References: <ZWMgBK3vnYjy63AD@iguana.lan>
 <20231127104003.GA5447@workstation.local>
 <ZWWyZoFJhtwu9ciS@iguana.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZWWyZoFJhtwu9ciS@iguana.lan>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Nov 28, 2023 at 01:27:03AM -0800, Adam Goldman
 wrote: > On Mon, Nov 27, 2023 at 07:40:03PM +0900, Takashi Sakamoto wrote:
 > > The patch format is not compliant to Linux kernel development, whi [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r8KeY-0004pC-9D
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

On Tue, Nov 28, 2023 at 01:27:03AM -0800, Adam Goldman wrote:
> On Mon, Nov 27, 2023 at 07:40:03PM +0900, Takashi Sakamoto wrote:
> > The patch format is not compliant to Linux kernel development, while I
> > would evaluate it.
> 
> Should I submit the patch again in canonical patch format[1]?
 
Thanks for your care, however at this time I prepared remote branch and
applied your patch[1]. I'd like to review it carefully so that it brings
the other regressions since it has an effect to modalias for unit and
device attributes for node exported via sysfs. After enough testing, I'll
merge it to PR for v6.8 kernel.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=topic/support-legacy-layout-of-configuration-rom


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
