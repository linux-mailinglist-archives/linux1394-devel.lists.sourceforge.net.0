Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE10FB20A30
	for <lists+linux1394-devel@lfdr.de>; Mon, 11 Aug 2025 15:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+IPT6MocOOD6scgFDjf0qYlvyg61QexmLHQXfHp/ENY=; b=M/9QS898t3AmEhCOTCVXnHSN/S
	ICHXGykDVe2oqa2TKNIik+0UIlP/Y5qIzLuPgaLQ7QYDVyXSb1Bsj3w1KFE4wtQVSFU/e/yML+gE4
	1BPmh3lvO7RWa2bJ5SJhM4AbTHtWQTlldl8dK6/xmePIe8746YZnobmDSwz2m3j7gJpk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1ulSZn-0004JG-Uo;
	Mon, 11 Aug 2025 13:28:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1ulSZl-0004J7-Vw
 for linux1394-devel@lists.sourceforge.net;
 Mon, 11 Aug 2025 13:28:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DaKM1MT2vnhDEwshxSnQdmlixM5+zD2EhgIAWWaUiYc=; b=CiBDVbasw8iWNLnUMrI33qZCUQ
 OyRPaxmqbOZSGFgmK6w59W0D90B2JRmVIOc8Vyc8+gcz4wOoOmMX+t7b5XLESiVZUn5aeoGbfAMvx
 yvg3nlkQA9oUD/D3SJXSPwLwZGuyaQrh+ApZ7GeI2BCM/zr77HcyU1BNjtGpy5ctbQ9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DaKM1MT2vnhDEwshxSnQdmlixM5+zD2EhgIAWWaUiYc=; b=nML//mMRCmr8pEE4a6oGyebTsc
 Mi0gABDoapYqy37Wdq7rKQrMm37YdLHk9N0hOYhzarzRboCY7n+qaWm0J9uTF4SH697RBEwd+FogV
 RUPB0qOHpIacPq1Qpcj+9gRlapN6EqrwTW/P6nsJFjvQIOcGLk5l81bHNWzP55p/AWDY=;
Received: from fout-a4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ulSZk-0003LH-E7 for linux1394-devel@lists.sourceforge.net;
 Mon, 11 Aug 2025 13:28:33 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id A9382EC00C3;
 Mon, 11 Aug 2025 09:28:21 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Mon, 11 Aug 2025 09:28:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1754918901; x=
 1755005301; bh=DaKM1MT2vnhDEwshxSnQdmlixM5+zD2EhgIAWWaUiYc=; b=J
 bPlwjVFkrwY0jLRmL1BsZxkTSSlp2xpTQL3okJqASrhxQZuIpXXj9tBS57LZ6qEV
 CxQShUmjYzc/KoOPL2quo2qCO3MlPtLu5h0MIQOS+1GDhyMFYjKDRTcoThewIUMQ
 C/r7dDjUQmpisfvOIva4jZ6jHR4Bu2DjvZuqGYTwba8wMliFlMCsNXngGctw0knQ
 ijvV/fcwmwgIR6AVCALhYy2F9DgxH86M/68TQTEwc34t9k1EXxH4uo+TFDhSRFl4
 u+tDp+VhvooDR5ZRcZchlBr/3EAvmvsAiB2p+BBrcIYbu4PuA+V3aLvuzjaozQBt
 wH6EK7YGTQoL0AW5pmvOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1754918901; x=1755005301; bh=DaKM1MT2vnhDEwshxSnQdmlixM5+zD2EhgI
 AWWaUiYc=; b=PAxLtR7iZtdTtVduVi1HNR5i/gDmjGAvNH9jq7dHe7eOxoMdnuI
 Dt4yyv/nhr5U2pzpW7QVAVWQJy06xSRQmpZRMoO0Jv8WVnsmlJL80DlmEc9mU+iF
 B5bIINz4jgaFChKYUpFgG5k2y2g1A+3udugo9pPjMoSDHI1h3Uh5I2pjwKsKvmPb
 8cZmhyjFfpWBinkYzzl6ECcy4tVDblHxj7QpjylkFQMTJB2nNAe5i/wi3M8znD3/
 QTeRhAkPCNytffdpQIY5/ASPleeZGN65vuYefrAlAphgwtkwAD1y9Lu6+kP9RNN+
 EnDTzkAvjgXIHAiGooXIoQlvu8U5+fsbs0w==
X-ME-Sender: <xms:9e-ZaMaB5oX0LPoLJq9pR9A3JoTDd_U9QV994Of9cMcSOnfJAAQSjw>
 <xme:9e-ZaAWjC1yt-qxNLMSNbn_JT5ulGwZBUHNSC8qpZLe1phsopHYfYdoAQy_gXdEh5
 DFDTrexb0ym7FvvVes>
X-ME-Received: <xmr:9e-ZaI7SnuE2jv8yxOz3HZDUszFhOFb_ZMANnM0WBVYlWByANNExutfcpWuLnuy0HXBwkvxOxlMbc66AeUoxCFvCnyFD05FgtRM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddufedvheejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhfduke
 ffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphht
 thhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:9e-ZaDjtR9xyaCeYzCuI6BuGQ-ZGp_e0KUmpRMzkBczXwcfY1IbGSg>
 <xmx:9e-ZaHdIMlscw-FF6eEwSBkEISaBgFV5Q3ppXhZSwQ85hC1zIlLq0w>
 <xmx:9e-ZaAfNtTVsTB2MC2Rk2q4MYrmmwkeALKDN9-jsWvAj5YM1vijHww>
 <xmx:9e-ZaJ8Z2zH-85nQfALPkFXOUIJtFcLCcwesHNOdvHbPoz638K_1MA>
 <xmx:9e-ZaKfTryjU9WI-itiMcE2sr7r6oDaeT74X55JzvTL17_Lb7eZOksoU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Aug 2025 09:28:20 -0400 (EDT)
Date: Mon, 11 Aug 2025 22:28:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2 0/4] firewire: core: call address handlers ouside RCU
 read-side critical section
Message-ID: <20250811132817.GA267817@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Aug 03, 2025 at 09:20:11PM +0900, Takashi Sakamoto
 wrote: > Hi, > > This is an updated version of my previous patchset[1]. >
 > In the earlier version, XArray was used to collect FCP address ha [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ulSZk-0003LH-E7
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

On Sun, Aug 03, 2025 at 09:20:11PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This is an updated version of my previous patchset[1].
> 
> In the earlier version, XArray was used to collect FCP address handlers.
> However, in typical system, only a few handlers are registered, and
> using XArray for this purpose was unnecessarily complex and inefficient.
> A simpler and faster approach is more appropriate here.
> 
> In this v2 patchset, the kernel stack is used initially to store up to 4
> handlers. If more than 4 handlers are registered in the system, a buffer
> is dynamically allocated from the kernel heap.
> 
> [1] https://lore.kernel.org/lkml/20250728015125.17825-1-o-takashi@sakamocchi.jp/
> 
> Takashi Sakamoto (4):
>   firewire: core: use reference counting to invoke address handlers
>     safely
>   firewire: core: call handler for exclusive regions outside RCU
>     read-side critical section
>   firewire: core: call FCP address handlers outside RCU read-side
>     critical section
>   firewire: core: reallocate buffer for FCP address handlers when more
>     than 4 are registered
> 
>  drivers/firewire/core-transaction.c | 91 +++++++++++++++++++++++++----
>  include/linux/firewire.h            |  4 ++
>  2 files changed, 85 insertions(+), 10 deletions(-)
> 
> 
> base-commit: 7061835997daba9e73c723c85bd70bc4c44aef77

Applied to for-linus branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
