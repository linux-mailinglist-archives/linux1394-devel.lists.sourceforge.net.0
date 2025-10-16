Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A930BE1137
	for <lists+linux1394-devel@lfdr.de>; Thu, 16 Oct 2025 02:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EwS/67qPh6tKs3tyklPl0SXu9HlnCmO1X8eE+7Y+Z2A=; b=izQqNG/lsZR5jydYxTwHergBZc
	1tdp24PbMLTBuLWD9TjrbPYwLCMYhvAndpHvRyN5eOE3wSGBMaSye9pFeAt3X3UZbVCV9q27S7pbN
	1/3CfzM57pLehTyhFL+WoIdrfvUt9qEIZwQf8jm+rMDA03VW/zbF6V+fSyDR29lLwgNk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v9BW3-0000u9-4a;
	Thu, 16 Oct 2025 00:06:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v9BW0-0000u1-EE
 for linux1394-devel@lists.sourceforge.net;
 Thu, 16 Oct 2025 00:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OqmLjoExoRAOZj23vynDJnRFsYy0IX4w2GqduP1xq5E=; b=aKIZEPoDf60aOBOwLH+6ZHpmfy
 A6huW8g2J/QsR3HyGHOidyqPrU/XMFJ8FAXVPgO3xTfasjK1mG/BlentiMREOp56MN3p8FmbH54PI
 Qc6lODSt7pK0xs9EpMWax/RuTOC751bnlmeBj1liZWEgVNgbcwvPk9Wzw0IEZE8klC1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OqmLjoExoRAOZj23vynDJnRFsYy0IX4w2GqduP1xq5E=; b=WFcKQOgHQfmzmtYm7kmNyhHSFn
 waQMxQJwfEpFbiCtfEo/djzplbbpMpfBTu5hX1QdT3973s0cbT3Cqgy1izmA0IcynILJy0PIs4JZa
 MtUe5JchEk+XmsclyN6vqyJ1zLcNEL6NvwJ24DeuVMHVQxVH6NX3oUtrs32b+i7yZL2c=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9BVz-00036z-JM for linux1394-devel@lists.sourceforge.net;
 Thu, 16 Oct 2025 00:06:44 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id ED19E1D00097;
 Wed, 15 Oct 2025 20:06:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 15 Oct 2025 20:06:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760573192; x=
 1760659592; bh=OqmLjoExoRAOZj23vynDJnRFsYy0IX4w2GqduP1xq5E=; b=s
 Etc33kIeK86v6ggEbbX31ZXCJy8ODe0nd6gT58e0/qNMOMFEX4tFGiVSsY7MkLAH
 UqBvA9l1UeuAB3d14napxnQes5UD/ebgsEf/DTemlFi+ydO4kcbdDLGVOay9rDMG
 LxQJred6kz2xDNoUq5qdkM9BGJ0ZGX0y9GYIMhttL8AXPkyAt+KZb+omN2PVP0Rz
 a9FzpHua19f2+JYIQEF6Y2v/EAQG29Q/I5wUT4qUw5tB7Px1Hn5oUzNvmeeXUCEP
 axtyWbVnBOVv8LJcSMMcCud4wn2cTy9jCk0r9JWJAB1sWT6EG/19moo9jP02Wolq
 1HaDuAo1dY3wxZ0qmQ1Jg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1760573192; x=1760659592; bh=OqmLjoExoRAOZj23vynDJnRFsYy0IX4w2Gq
 duP1xq5E=; b=iZYS7gS46/xOxQxyDqfJvp6VSX6OBo3Gg7X9sOeT0OCOrpBEoSv
 F7yDt/WVW6bpEeW+9joxQ+XL1jKdQCQp+aeWAQZ1stuMv8wFgz8KbVJTvDxkRT6n
 7Q3NwAl70GfMLMOZN/7Nlt1WemhnCSMEJQa0+w/CQeiCurb5rFZPZ5/QTg29tgif
 cko7PA9C4X3Tll8654mJF80i0illEhYCKiMiEzYkdBLauXzjN5CZLJZMcRYzMgbm
 sJ1jOITeYspJnr6ERMy5qnwwwPGiR4PDv+3QO/G9YmrO1Kj+n+HvfcYCYYlYnkJx
 3s4S6XjPsqX4z/oCiHD3F2Xd1ygnBNqSpYA==
X-ME-Sender: <xms:CDfwaIDSn37pFk67uNmXJb86UT--Y3pqMVkGE3lqrlWW18RuIFDPqA>
 <xme:CDfwaIfpBbdQBeVFtk3M30hSVyWwJHD54eOeazE_CHMIsfF-vSDqkA_sD5z27hznA
 uqB6E-EQJlUxD-XOrNgph0O8z2o7MtD14ikX-3IWotNd9byc0Wpwd0>
X-ME-Received: <xmr:CDfwaDI2joHG6zUu7VGS7rf39UWtzIUEcMzEON19wyz8z-kthQyDiE2oPZkwzmC9gNxJuL_BAz1qE5l2yC8XpsKslbJwqI3SoFfh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduvdegkeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:CDfwaLfq7d3mRxiunJDUBBpnwA4GGunIlUBiOd4ez-9KHnz59Qi7pw>
 <xmx:CDfwaK0Mdi0EG-l6jvWvOh-OJw4hSRJ0S8G5A2BB0UKxTnWOUllgpw>
 <xmx:CDfwaEjL9NF75LU5SjO87iaW6QudRm1wwTXq6O8YoR7SUZQiBtqBmg>
 <xmx:CDfwaARGu15ev-N-mXFxfvABnGmBaazdFgM47SEVN1TsSjngL1bPZQ>
 <xmx:CDfwaB0_86j6WFpdJh_5fpBZCz3D8fC8QgM_Ygwe6rrDGV5vaD-wy9FA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Oct 2025 20:06:31 -0400 (EDT)
Date: Thu, 16 Oct 2025 09:06:29 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: add device quirk detection
Message-ID: <20251016000629.GA208195@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 13, 2025 at 11:03:09PM +0900, Takashi Sakamoto
 wrote: > Hi, > > In the history of this subsystem, we have experienced some
 device-specific > quirks. For example: > > * afa1282a35d3 ("firew [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [202.12.124.148 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v9BVz-00036z-JM
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Oct 13, 2025 at 11:03:09PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In the history of this subsystem, we have experienced some device-specific
> quirks. For example:
> 
> * afa1282a35d3 ("firewire: core: check for 1394a compliant IRM, fix inaccessibility of Sony camcorder").
> * a509e43ff338 ("firewire: core: fix unstable I/O with Canon camcorder").
> * 3a93d082bacf ("ALSA: firewire-motu: add support for MOTU Audio Express")
> 
> However, there is no common mechanism to handle such quirks. This patchset
> adds a consistent approach for detecting and managing device-specific
> quirks within the subsystem.
> 
> Takashi Sakamoto (2):
>   firewire: core: detect device quirk when reading configuration ROM
>   firewire: core: handle device quirk of MOTu Audio Express
> 
>  drivers/firewire/core-card.c   | 21 +++------
>  drivers/firewire/core-device.c | 78 +++++++++++++++++++++++++++++++++-
>  drivers/firewire/ohci.c        | 29 +++++++++++++
>  include/linux/firewire.h       | 14 ++++++
>  4 files changed, 126 insertions(+), 16 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
