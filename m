Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECA98441D9
	for <lists+linux1394-devel@lfdr.de>; Wed, 31 Jan 2024 15:27:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rVBYr-0006iN-Uj;
	Wed, 31 Jan 2024 14:27:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rVBYp-0006iF-Hh
 for linux1394-devel@lists.sourceforge.net;
 Wed, 31 Jan 2024 14:27:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O+NOsGtmDMjm+YGmeRLPyQMTyQEv9RjEJlAly7V/omo=; b=Idn5pzxQaCNxi6lURxJ1LZyMvr
 jJXR81ApNgo+0gI9XhG/Thr7ZfSuwBuE00sEtY85d+7sY4FSEFbrDdzNSgaUIfht/KIPPw8LIRWjN
 jMEGp6jeARGM34bvdv/SsWgdWluavaxImCsf4qwtCTU/ABmvtMRxklDCwP1VyT8c6sQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O+NOsGtmDMjm+YGmeRLPyQMTyQEv9RjEJlAly7V/omo=; b=JXeSpaPmq/A0O+CmACoTipy32a
 hw6wBVQUnaZ/6JZYXaT5mSdzRr0mLyoaZc7SzEwUcNd70opfABV6xJ/v6C4C/i9hdWc6S8p8gzlUi
 YiCQ43EEFg28B6vlcCPplpl8gAyPJ00pb6nJt8KtvGaoQ8Qv0HjG0hcWUFb4HZ6QFQLM=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVBYn-0004Ej-Kw for linux1394-devel@lists.sourceforge.net;
 Wed, 31 Jan 2024 14:27:32 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id CDD3A5C010F;
 Wed, 31 Jan 2024 09:27:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 31 Jan 2024 09:27:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706711238; x=
 1706797638; bh=O+NOsGtmDMjm+YGmeRLPyQMTyQEv9RjEJlAly7V/omo=; b=i
 lDBt27VITmov4TnCLNeF+Q+liICFqSOPNH4KByxzBlBzo7WE+7mB5RuiZnrrxYSf
 XskEPucSm7f2+K1NF2EgIgNvvkaQslwVTIdx/G52ZKUTGg3v4B/oUzl5TO4oVkQE
 QFj1CngVcqapm2MbImyjQoq2J2Vfc70VloUB8cXHB3yuAqBLaYDHAYhPtiRSak+C
 sXPNIdljyR+qlM0C/FI+D263g+zzwnNg5VMJVm5GCyff7fDrvuK0Y9XA8tOGHoHE
 iXVo1vSuFa4o5PKObxbE/dSm/qKRS3rMFOoahbcC5JhJuOS5nXGgQtZQi4KAo+Bv
 OzlzEVKmWajGl86XXmqRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706711238; x=1706797638; bh=O+NOsGtmDMjm+YGmeRLPyQMTyQEv
 9RjEJlAly7V/omo=; b=kvDy04bXRRwVouqHqjt6RjPVo2QR3WDh49y3lKsATCks
 QMEkWOno7r9m127K97nReiGi1b0HaSDt9b9m5tQysNkrbcI/LBDoxukIGIZy8nEo
 rcnM6CprbQ9xvFPeKNeURkfZMKytD/CBq5BbphewZawNUgmX3zNfNcnst18/nuhO
 5sHagj+mdkJXUGLreOpJFQwvf3HbNxcYE0UQZ221P6IxVmsI2TpALA1lFUo7jKB/
 SuMAVUMf8hfIsSG8sEhGhG/r5r7/EiVFr6wJf7tJmW2n4HFzG06dyDHeZQEXTI7l
 bdBt2RDvT6siAmvnOb6XRZyL/dlltPcn/ssU3z74cQ==
X-ME-Sender: <xms:xli6ZfjconLkX5ov8eROM7NSRnzcsk7TVI6P7TSjCcCIe-pJNHTyxg>
 <xme:xli6ZcABdS4d5SOrSL96Bv0bXX1AgTZrHFgHq1PjUQKzhD_nakVs9bS9eJMG77Y7j
 CB3BsF74INNazZy_bE>
X-ME-Received: <xmr:xli6ZfGWxPtQnb1604TcpuKU9FYstxiHaVBMg3MO-2f-KPtzdM2aX3-pO3od0M3LuMgkNlsTX5Rht1AIWOnrUMCRcKN5y7_oGnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtledgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepfffhvfevuffkfhggtggu
 jgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceooh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhep
 jefhhfegueethfefuefggeegudfhkeffudfhhfehkefhtdevfefhjeejffdtgfejnecuff
 homhgrihhnpehsohhurhgtvghfohhrghgvrdhnvghtnecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotg
 gthhhirdhjph
X-ME-Proxy: <xmx:xli6ZcQ2YDuymIa3kJIzGIHS_DJ3YFQewm1Xn1VHlcfOMjHnrTuGMA>
 <xmx:xli6ZcwtH2rfbvYzbhp3amVTiHT-89w4iPo2o2WqH2T_XQN-Px4-JA>
 <xmx:xli6ZS5kYtPVvXRD1ivPeXPlxVZ5GgAqmzsY3X55pb0QhHD9bTj08w>
 <xmx:xli6ZZrWFSsmtyP05WF39kDQdNMev5YNTUT284RDZDPzTpli2K7CSA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 31 Jan 2024 09:27:17 -0500 (EST)
Date: Wed, 31 Jan 2024 23:27:14 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: send bus reset promptly on gap count error
Message-ID: <20240131142714.GA60028@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <Za90vAQlDhbLpY67@iguana.24-8.net>
 <20240127083730.GA159729@workstation.local>
 <ZbTlaCCbpxQoqo0i@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZbTlaCCbpxQoqo0i@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I'm sorry to be late for reply. On Sat, Jan 27, 2024 at
 03:13:45AM -0800, Adam Goldman wrote: > Hi, > > On Sat, Jan 27,
 2024 at 05:37:30PM
 +0900, Takashi Sakamoto wrote: > > On Tue, Jan 23, 2024 at 12:11:40AM -0800,
 Adam Goldman wro [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVBYn-0004Ej-Kw
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

I'm sorry to be late for reply.

On Sat, Jan 27, 2024 at 03:13:45AM -0800, Adam Goldman wrote:
> Hi,
> 
> On Sat, Jan 27, 2024 at 05:37:30PM +0900, Takashi Sakamoto wrote:
> > On Tue, Jan 23, 2024 at 12:11:40AM -0800, Adam Goldman wrote:
> > > If we are bus manager and the bus has inconsistent gap counts, send a 
> > > bus reset immediately instead of trying to read the root node's config 
> > > ROM first. Otherwise, we could spend a lot of time trying to read the 
> > > config ROM but never succeeding.
> > > 
> > > This eliminates a 50+ second delay before the FireWire bus is usable 
> > > after a newly connected device is powered on in certain circumstances.
> > 
> > At first, would I request you to explain about the certain
> > circumstances in the patch comment? It is really helpful to understand
> > the change itself.
> 
> The delay occurs if a gap count inconsistency occurs, we are not the 
> root node, and we become bus manager. One scenario that causes this is 
> with a TI XIO2213B OHCI, the first time a Sony DSR-25 is powered on 
> after being connected to the FireWire cable.
> 
> > > Link: https://sourceforge.net/p/linux1394/mailman/message/58727806/
> 
> This link has a longer description and kernel logs.
 
Of course, I've already read your post in the last week. Yes, you did
enough investigation. However, in the review process, you need to post
patches with sufficient description.
 
> > > --- linux-source-6.1.orig/drivers/firewire/core-card.c	2023-09-23 02:11:13.000000000 -0700
> > > +++ linux-source-6.1/drivers/firewire/core-card.c	2024-01-22 04:23:06.000000000 -0800
> > > @@ -435,6 +435,16 @@
> > >  		 * config rom.  In either case, pick another root.
> > >  		 */
> > >  		new_root_id = local_id;
> > > +	} else if (card->gap_count == 0) {
> > > +		/* 
> > > +		 * If self IDs have inconsistent gap counts, do a
> > > +		 * bus reset ASAP. The config rom read might never
> > > +		 * complete, so don't wait for it. However, still
> > > +		 * send a PHY configuration packet prior to the bus
> > > +		 * reset, as permitted by IEEE 1394-2008 8.4.5.2.
> > > +		 */
> > > +		new_root_id = local_id;
> > > +		card->bm_retries = 0;
> > >  	} else if (!root_device_is_running) {
> > >  		/*
> > > 		 * If we haven't probed this device yet, bail out now
> > 
> > Next, after the condition branches, we can see below lines:
> > 
> > ```
> > 	/*
> > 	 * Finally, figure out if we should do a reset or not.  If we have
> > 	 * done less than 5 resets with the same physical topology and we
> > 	 * have either a new root or a new gap count setting, let's do it.
> > 	 */
> > 
> > 	if (card->bm_retries++ < 5 &&
> > 	    (card->gap_count != gap_count || new_root_id != root_id))
> > 		do_reset = true;
> > ```
> > 
> > When the value of "card->gap_count" is zero, it would hit the condition of
> > "card->gap_count != gap_count". I think the transmission of phy config
> > packet and scheduling of short bus reset would be done, regardless of the
> > change. Would I ask the main intention to the additional branch?
> 
> Without the additional branch, the !root_device_is_running branch will 
> be taken (because the root node's config ROM hasn't been read yet), and 
> bm_work will go to sleep. Eventually we will give up trying to read the 
> config ROM, the root_device==NULL branch will be taken, and the bus 
> reset will be done. The additional branch eliminates waiting for the 
> config ROM read when gap_count is zero.
> 
> Here is the full sequence of events:
> 
> 1. Bus reset occurs due to newly active device.
> 
> 2. Self identification process completes. We are not root node. Gap 
> counts are inconsistent.
> 
> 3. build_tree() notices the gap count error and sets gap_count to 0:
> 
> > 		/*
> > 		 * If PHYs report different gap counts, set an invalid count
> > 		 * which will force a gap count reconfiguration and a reset.
> > 		 */
> > 		if (SELF_ID_GAP_COUNT(q) != gap_count)
> > 			gap_count = 0;
> 
> 4. bm_work() starts and makes us bus manager:
> 
> > 		rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
> > 				irm_id, generation, SCODE_100,
> > 				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
> > 				transaction_data, 8);
> 
> 5. read_config_rom() starts reading the root node's config ROM.
> 
> 6. bm_work() wants to know if the root node is cycle master capable. If 
> the root node is cycle master capable, we will leave it as the root 
> node. Otherwise, we will make ourself the root node. To determine if the 
> root node is cycle master capable, we must wait until its config ROM has 
> been read:
> 
> > 	} else if (!root_device_is_running) {
> > 		/*
> > 		 * If we haven't probed this device yet, bail out now
> > 		 * and let's try again once that's done.
> > 		 */
> > 		spin_unlock_irq(&card->lock);
> > 		goto out;
> 
> 7a. Without the patch: read_config_rom() reads the first few quadlets 
> from the config ROM. Due to the gap count inconsistency, eventually one 
> of the reads times out. When read_config_rom() fails, fw_device_init() 
> calls it again until MAX_RETRIES is reached. This takes 50+ seconds.
> 
> 8a. bm_work() sees that we have given up trying to read the config ROM. 
> It makes us the root node and does a bus reset:
> 
> > 	if (root_device == NULL) {
> > 		/*
> > 		 * Either link_on is false, or we failed to read the
> > 		 * config rom.  In either case, pick another root.
> > 		 */
> > 		new_root_id = local_id;
> > ...
> > 	if (card->bm_retries++ < 5 &&
> > 	    (card->gap_count != gap_count || new_root_id != root_id))
> > 		do_reset = true;
> 
> 7b. With the patch: Because of the gap count inconsistency, bm_work() 
> does not wait for the config ROM to be read. It makes us the root node 
> and does a bus reset immediately:
> 
> > 	} else if (card->gap_count == 0) {
> > 		/*
> > 		 * If self IDs have inconsistent gap counts, do a
> > 		 * bus reset ASAP. The config rom read might never
> > 		 * complete, so don't wait for it. However, still
> > 		 * send a PHY configuration packet prior to the
> > 		 * bus reset, as permitted by 1394-2008 8.4.5.2.
> > 		 */
> > 		new_root_id = local_id;
> > 		card->bm_retries = 0;
> > ...
> > 	if (card->bm_retries++ < 5 &&
> > 	    (card->gap_count != gap_count || new_root_id != root_id))
> > 		do_reset = true;

Thanks for the detail.

The mismatch of gap count can be detected in the firstworkqueue context
(bus_reset_work()) in 'driver/firewire/ohci.c', so I investigated more
quick way to reset the bus, however your change looks better than it.

I'd like to apply your patch for v6.9 kernel, while the patch
description is not suffice, as I address. I'm sorry to ask you more
work, but would I ask you to repost your patch with any detail
description? The description should include enough information for
developers inner/outer this subsystem to understand its background
and intention.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
