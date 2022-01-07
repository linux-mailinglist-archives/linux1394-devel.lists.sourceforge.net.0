Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ED2487618
	for <lists+linux1394-devel@lfdr.de>; Fri,  7 Jan 2022 12:01:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n5n0A-0007ch-Ex; Fri, 07 Jan 2022 11:01:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1n5n07-0007cH-NY
 for linux1394-devel@lists.sourceforge.net; Fri, 07 Jan 2022 11:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0uOllEHmyWHQCFH2isEqbtuxwyowPioZhHuiykjOEIk=; b=La/ZmZNKavdH4J4a26ecZwvcv4
 pnPrPIGaw+aXUleAfj0GZ6u+xYR1n4bnSBawaPcPVRjI4MnD+JX32eU1+d4UncDEr9ihsbBBMMOE1
 P3+VKL5BFIqB18B135hdxXosXyNP2594vby7okyQIA8Jf44Flq366iCb/wqIuz5FeBcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0uOllEHmyWHQCFH2isEqbtuxwyowPioZhHuiykjOEIk=; b=KBwrM3Avog6/jzV+damjVwC791
 mvi6JDLUHKH+ejX0o7UtqdVWVt+sRmr+qe17KcTvgO495CA+YZJkaOhtT1JysWK/jcbm2ROXBxhxP
 uXLUG5q6qRr2mfQzPbh2WVAY+sBB5+sOZ8zvtwY+bqUZJ0rzPGsiGYlwWdaPKq8Nhgz8=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n5mzz-005178-SI
 for linux1394-devel@lists.sourceforge.net; Fri, 07 Jan 2022 11:01:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id BDCD03202F0C;
 Fri,  7 Jan 2022 06:01:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 07 Jan 2022 06:01:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=0uOllEHmyWHQCFH2isEqbtuxwyo
 wPioZhHuiykjOEIk=; b=oMk56Cmie07L+rT4TxLJkhvX67TCiHfSIpPOZsmgqM0
 lcU/R3xd6kQZ3ihEzHkmQN/N2Kz1mfKQ1fsGcWbpHEI+SNtur3qkouUBI3DKMJUe
 FYcfoaFIrXHdNtAYJhEv0dBic5c5S9/wQp1AnPomA+eloOeLtn2nKKF7lU1r3+pl
 WCejF65asseX1eo5VsLDFHuj7KCZNpSZdyX57dP4qXnPEhsC0qkeczFwIGZD0rHK
 r0QuOMXwA5UGqxTNSJzx59hTgDh77MktCH8I7IP5Y76Mkc+O09n5kLIkPwIZ92TQ
 VDYtstbgWNYLA1VZ7M2W4yAq0qhzyDUBN1QZ78G+f/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0uOllE
 HmyWHQCFH2isEqbtuxwyowPioZhHuiykjOEIk=; b=Mxf7K8GPJYli7nIf/Pr3l4
 8qV9SOb7o9jQPC1sUr9zISHSIYMoQR3Y6FNPwIqsE6ELTJDrnLxfvshh/kRkuMNm
 EWZecUhfRxdfBAzxmWKIWTu2PijBFO9mYtQRD4VssOP7WqbesM8iSJTMZs7GSCbt
 JsKbK5Mui80CY1PCJFAnki8h+eHYJdQRoTWnnacd8bliE/YpORR2oYzXMtpHF6Pq
 yHZJoHslXq4cAIEeE8EOvLw6QGnF7clJGP8FWEaaOfTDjQK84yH2Ut2DO0wBmm6c
 Lf3ekjA2KDHqkS12MR493UyHDUlhtcucT4NO1AStD6BtbqWlep9XXz/gbFiEzo1Q
 ==
X-ME-Sender: <xms:gx3YYVD9eDFiP_6zdS9uxZIVGlZF-_8tMrCPNXXF7t7q2-I5U47Peg>
 <xme:gx3YYTjXz_FMKmezWmi70fyeT0aTNM4ioQlIQlep3ZCz-q6FPh8_duAIbEZ6S1pd8
 9ci8ufUK3zvJcE3OGM>
X-ME-Received: <xmr:gx3YYQlL259wO42xcnBZ1QuI6xqkPnuigNVeav5e7e4H-8HQvr3oCXv_t_zo1Pa67Ux6mbUZ9IVCNq0XpXr3mLbSdGwuFhluLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrudeguddgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtro
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephffhvdejve
 ffkeeifffhuedufeekkefgtddvteeggeehgeeljeduhfdvhfejvdeknecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:gx3YYfx0-FT6XCvoJqlZCLrjnttznhMWTYyZeVjsjOAbcvyf6aTe1A>
 <xmx:gx3YYaT7dwMP2C0z_1w3C8vldotqcpTEngXNZ3utMgqh9-gZg2Tzcw>
 <xmx:gx3YYSYZQvoeReTd-p-DM6jCxXE1R1q3yT1l5CHw2dzTaonLIFVvpw>
 <xmx:hR3YYYc9SnK7LvtO-CPqe-pD8Qef2HiOTOtWi_SCUiWNzxHe0DQ82Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 7 Jan 2022 06:01:22 -0500 (EST)
Date: Fri, 7 Jan 2022 20:01:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de, alsa-devel@alsa-project.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 marcan@marcan.st
Subject: Re: [PATCH 0/3] firewire: assist unit driver to compute packet
 timestamp
Message-ID: <YdgdfrcvhJrUXwYF@workstation>
Mail-Followup-To: stefanr@s5r6.in-berlin.de, alsa-devel@alsa-project.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 marcan@marcan.st
References: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
 <YcGycqUrptkWYeOV@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YcGycqUrptkWYeOV@workstation>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Stefan, Wishing you a happy new year. We are in the last
 week for release of v5.16 kernel, and soon merge window for v5.17 kernel
 will be opened if thing goes well. I wish any action for the review process
 to merge these patches into upst [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n5mzz-005178-SI
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Stefan,

Wishing you a happy new year.

We are in the last week for release of v5.16 kernel, and soon merge
window for v5.17 kernel will be opened if thing goes well. I wish any
action for the review process to merge these patches into upstream.


Thanks

Takashi Sakamoto

On Tue, Dec 21, 2021 at 07:54:42PM +0900, Takashi Sakamoto wrote:
> Hi Stefan,
> 
> Thank you for your long effort to maintain Linux FireWire subsystem. I'd
> like to use the timestamp function for my integration in ALSA firewire
> stack planned at next version of Linux kernel. I'm glad if getting to
> your help for upstreaming.
> 
> On Thu, Dec 02, 2021 at 08:34:54PM +0900, Takashi Sakamoto wrote:
> > Hi,
> > 
> > In 1394 OHCI specification, each descriptor of IR/IT/AR/AT DMA context
> > has timeStamp field. The value of timeStamp field express the time in
> > which the controller accept packet. The resolution of value is isochronous
> > cycle count (8,000 Hz) with second up to 7.
> > 
> > I have a plan to use the value of timeStamp field for ALSA firewire stack
> > so that userspace ALSA PCM/Rawmidi applications can get converted timestamp
> > (ktime) for PCM frame/MIDI message. The timestamp can ideally express
> > finer granularity than the time to invoke IRQ handler (and co).
> > 
> > Current implementation of Linux FireWire subsystem delivers the value of
> > timeStamp field to unit driver for IR/IT/AT DMA context, but not for AR
> > DMA context. Additionally, the way to refer to Isochronous Cycle Timer
> > Register in MMIO region of 1394 OHCI controller is transaction to local
> > node. It includes overhead of transaction and it's preferable to add
> > less-overhead way available in any type of IRQ context.
> > 
> > This patchset adds two functions exposed in kernel space:
> > 
> >  * fw_card_read_cycle_time()
> >     * allow unit driver to access to CYCLE_TIME register in MMIO region
> >       without initiate transaction
> >  * fw_request_get_timestamp()
> >     * allow unit driver to get timestamp of request packet inner request
> >       handler
> > 
> > I note that Hector Martin found kernel null pointer dereference during
> > process to remove PCI card and has posted a patch:
> > 
> >  * https://lore.kernel.org/lkml/20211027113130.8802-1-marcan@marcan.st/
> > 
> > His patch is included in the series with my comment for relevant commit
> > 20802224298c ("firewire: core: add forgotten dummy driver methods, remove
> > unused ones"). The patch is required since unit driver can refer to dummy
> > driver between removal callback of PCI subsystem and removal callback of
> > FireWire subsystem.
> > 
> > Hector Martin (1):
> >   firewire: Add dummy read_csr/write_csr functions
> > 
> > Takashi Sakamoto (2):
> >   firewire: add kernel API to access CYCLE_TIME register
> >   firewire: add kernel API to access packet structure in request
> >     structure for AR context
> > 
> >  drivers/firewire/core-card.c        | 39 +++++++++++++++++++++++++++++
> >  drivers/firewire/core-cdev.c        |  6 +++--
> >  drivers/firewire/core-transaction.c | 18 +++++++++++++
> >  include/linux/firewire.h            |  3 +++
> >  4 files changed, 64 insertions(+), 2 deletions(-)
> > 
> > -- 
> > 2.32.0
> 
> 
> Sincerely yours
> 
> Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
