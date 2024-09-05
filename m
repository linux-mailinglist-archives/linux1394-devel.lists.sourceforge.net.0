Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0216596D1CB
	for <lists+linux1394-devel@lfdr.de>; Thu,  5 Sep 2024 10:18:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sm7hL-0003gh-RO;
	Thu, 05 Sep 2024 08:18:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sm7hI-0003ex-9j
 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 08:18:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WtwEAKrZrYNRLzgPZ4AVqDwICtzLdQID0hX5HloQEWA=; b=jX1zQfUki8Bl7W+OTSCOoLTdeT
 2BI/NbwVtlqp6l+/D9ZbzdlUJ0kr8q9emZdQ+bd/UGMvL7ba3OgVIBwq25lxv3ZumLDH8PM3Yoj2u
 +D1qpIKrV3wfqCK2/mNMV/zr7x2QX5is9/YJdKSpQnFEsEcPHTTiGUjQNAwJn/+z8dIQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WtwEAKrZrYNRLzgPZ4AVqDwICtzLdQID0hX5HloQEWA=; b=TRi2Xr0vJl3tkobf4VeJWbk4c5
 XDnYo3mXag0K+NnjUkxRS3VcpN2hKUfa7AR8wTb9olGIX1omZanQAraDYk/yI4oCMbewnaKevOiHw
 SJe6/RCQQ3TKWShss8AvCv10mJWJG6X9JtK4xO+zTqPlBv8fgCSURsnwafg7T4NPm+zo=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sm7hH-0004D1-R7 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 08:18:32 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 3847D1140148;
 Thu,  5 Sep 2024 04:18:21 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Thu, 05 Sep 2024 04:18:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725524301; x=
 1725610701; bh=WtwEAKrZrYNRLzgPZ4AVqDwICtzLdQID0hX5HloQEWA=; b=d
 ll2UKheBld8xZn7xfP5XDo30Ak91d0zncH6xgyS6EcJk1sWZBUHh4DokZRcR/Igy
 7tylCoEN3JzM9CWEyHLRW/CuQt3aSApMXci47yLYkSEOyZsT7RUxU/MEdyvXnkMw
 MKQvMmd0ZeikRz7UOqJmx3HcrMzPN2dzyCnAqPjn0LAqAxqrgUdjqyB9bOLQWHDB
 2dXYZKOq6QmdG/IJn3sjK7cd03jRbruV5my85FKV4aKzrjPW3GYG6FGL+RZyB/y+
 t9TLS2P2t6B+RSP/htVqcn4gEqDMqhUSBvmImjb2X35VO1m8MPt58dfn2vH3ds61
 nyWWH8/88j88gR7iD4jvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725524301; x=1725610701; bh=WtwEAKrZrYNRLzgPZ4AVqDwICtzL
 dQID0hX5HloQEWA=; b=Z8BONe1tT4yBkhN2aUY2c4mI2fQdAPdHb/xDOne4EMGD
 SBOs6ZhitVGIlTM/p67+hYIhws9v55oW0uZ9/1e9R1GexCSa5POKBmn5OIcrlDfi
 kKUOrB4HE/MEgZmBcuWR2qMFU39UX+hTs9wanEmp68c3Brsf54cp7Tm10iT1+7vJ
 irjZpbTJDybY6d2CABgTofum8KUPdTdnZhcJ5tgaNjaLHZUIqCa+e1rMqXMQvdto
 4AjqZefMOgQkcW4T3GNW6+T4afYLbKIJofF+//UMrNla3rUNCZ7vZch9zY1HaFNB
 W1EwRa0yVN1T2f4+W+5Yxvl98OZbKQ7+fJRKqN1CTQ==
X-ME-Sender: <xms:TWnZZumR37ykvPpir5EHJJmOk126_GJQg5GyWeX0LRLBdXRAm94vVg>
 <xme:TWnZZl2SCiHw1PoHuL44iOElqGFmcr7-otr01jImQKwZpaOgR7KGJSM3hG5ABy20k
 EpV2mfnvZcOcAWOR48>
X-ME-Received: <xmr:TWnZZso3HByT3ORO2aWsPehBW1_ZZSq3E4szd5o4MjZ5s9yg8oWzjOySIxjQJ9zWZNnOMJhL4_ZONOdnobjQdhUgtjl291g2MBo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehledgtddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepueeiueevleefvedttefg
 vdeutdekveduheevffdvhfeluefhgfdtgeeutedtudejnecuffhomhgrihhnpehkvghrnh
 gvlhdrohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjphdpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohep
 vggumhhunhgurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhope
 grphgrihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtoheplhhi
 nhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplh
 hinhhugidqmhgvughirgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehl
 ihhnuhigqdhsohhunhgusehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplh
 hinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgv
 thdprhgtphhtthhopehnvghtuggvvhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:TWnZZimpPjErUb-PX7e37cNm4G2_5vHHy5fvyCWjHbx4NXjmHP6nrQ>
 <xmx:TWnZZs2guP9gekben1zbRpXN8leD9-48kUsmzENVuKM66e-RnSa1WQ>
 <xmx:TWnZZptB90Wh407iaVDtp_tzH9BKaPdf_7pPo-4VgEgMD-DgfNOp9w>
 <xmx:TWnZZoXCuUbGB3vrG6SrQ9rvXqUNT6PZ1O1EbsKfYvhgQSMIejTV3Q>
 <xmx:TWnZZtltYZ3GNZzUZFZINzsr1jCQaeYMYXPSK8ALWPnmJXpkuPtz9fTh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Sep 2024 04:18:19 -0400 (EDT)
Date: Thu, 5 Sep 2024 17:18:17 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Edmund Raile <edmund.raile@protonmail.com>
Subject: Re: firewire: use sleepable workqueue to handle 1394 OHCI IT/IR
 context events: test 1
Message-ID: <20240905081817.GC486563@workstation.local>
Mail-Followup-To: Edmund Raile <edmund.raile@protonmail.com>,
 apais@linux.microsoft.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-sound@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, netdev@vger.kernel.org
References: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
 <20240904204531.154290-1-edmund.raile@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904204531.154290-1-edmund.raile@protonmail.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for your test. On Wed, Sep 04, 2024 at 08:45:51PM
 +0000, Edmund Raile wrote: > Hello Sakamoto-San, I very much appreciate the
 idea and effort to take on the tasklet conversion in small steps instead
 of all-at-once! [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sm7hH-0004D1-R7
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for your test.

On Wed, Sep 04, 2024 at 08:45:51PM +0000, Edmund Raile wrote:
> Hello Sakamoto-San, I very much appreciate the idea and effort to take on the tasklet conversion in small steps instead of all-at-once!
> 
> I also thank you for the CC, I'd like to be the testing canary for the coal mine of firewire ALSA with RME FireFace!
> The ALSA mailing list is a bit overwhelming and I'll likely unsubscribe so a direct CC for anything I can test is a good idea.
> 
> Trying to apply patch 1 of 5 to mainline, your kernel tree appears to be out of sync with mainline!
> It was missing b171e20 from 2009 and a7ecbe9 from 2022!
> I hope nothing else important is missing!
 
Yes. The series of changes is prepared for the next merge window to
v6.12 kernel. It is on the top of for-next branch in linux1394 tree.
You can see some patches on v6.12-rc2 tag.

https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-next

> Since in fw_card_initialize, ret is tested to be 0 we'd need an else instead, is this correct?
> 
> I edited these functions of patch 1, now everything applies just fine:
> 
> @@ -571,11 +571,28 @@ void fw_card_initialize(struct fw_card *card,
>  }
>  EXPORT_SYMBOL(fw_card_initialize);
>  
> -int fw_card_add(struct fw_card *card,
> -		u32 max_receive, u32 link_speed, u64 guid)
> +int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
> +		unsigned int supported_isoc_contexts)
>  {
> +	struct workqueue_struct *isoc_wq;
>  	int ret;
>  
> +	// This workqueue should be:
> +	//  * != WQ_BH			Sleepable.
> +	//  * == WQ_UNBOUND		Any core can process data for isoc context. The
> +	//				implementation of unit protocol could consumes the core
> +	//				longer somehow.
> +	//  * != WQ_MEM_RECLAIM		Not used for any backend of block device.
> +	//  * == WQ_HIGHPRI		High priority to process semi-realtime timestamped data.
> +	//  * == WQ_SYSFS		Parameters are available via sysfs.
> +	//  * max_active == n_it + n_ir	A hardIRQ could notify events for multiple isochronous
> +	//				contexts if they are scheduled to the same cycle.
> +	isoc_wq = alloc_workqueue("firewire-isoc-card%u",
> +				  WQ_UNBOUND | WQ_HIGHPRI | WQ_SYSFS,
> +				  supported_isoc_contexts, card->index);
> +	if (!isoc_wq)
> +		return -ENOMEM;
> +
>  	card->max_receive = max_receive;
>  	card->link_speed = link_speed;
>  	card->guid = guid;
> @@ -584,9 +601,13 @@ int fw_card_add(struct fw_card *card,
>  
>  	generate_config_rom(card, tmp_config_rom);
>  	ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
>  	if (ret == 0)
>  		list_add_tail(&card->link, &card_list);
> +	else
> +		destroy_workqueue(isoc_wq);
> +
> +	card->isoc_wq = isoc_wq;
> 
>  	mutex_unlock(&card_mutex);
> 
>  	return ret;
> @@ -709,7 +729,9 @@ void fw_core_remove_card(struct fw_card *card)
>  {
>  	struct fw_card_driver dummy_driver = dummy_driver_template;
>  	unsigned long flags;
>  
> +	might_sleep();
> +
>  	card->driver->update_phy_reg(card, 4,
>  				     PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
>  	fw_schedule_bus_reset(card, false, true);
> @@ -719,6 +741,7 @@ void fw_core_remove_card(struct fw_card *card)
>  	dummy_driver.free_iso_context	= card->driver->free_iso_context;
>  	dummy_driver.stop_iso		= card->driver->stop_iso;
>  	card->driver = &dummy_driver;
> +	drain_workqueue(card->isoc_wq);
>  
>  	spin_lock_irqsave(&card->lock, flags);
>  	fw_destroy_nodes(card);
> 
> Building a kernel with the patch produced 6.11.0-rc6-1-mainline-00019-g67784a74e258-dirty.
> Testing it with TI XIO2213B and RME Fireface 800 so far > 1 hour reveals no issues at all.
> ALSA streaming works fine:
>   mpv --audio-device=alsa/sysdefault:CARD=Fireface800 Spor-Ignition.flac
> 
> Though I haven't the faintest clue how to measure CPU usage impact of the patch, it looks like it would be neglible.
> 
> As of finishing this, I noticed you released [2] https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/T/
> I'll get around to testing that one too, but tomorrow at the earliest.
> 
> Kind regards,
> Edmund Raile.
> 
> Signed-off-by: Edmund Raile <edmund.raile@protonmail.com>
> Tested-by: Edmund Raile <edmund.raile@protonmail.com>

If using v6.11 kernel, it is convenient to use my remote repository to
backport changes for v6.12. But let you be careful to the history of
changes anyway.

* https://github.com/takaswie/linux-firewire-dkms/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
