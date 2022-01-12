Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6B648BDC3
	for <lists+linux1394-devel@lfdr.de>; Wed, 12 Jan 2022 04:51:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n7Ufd-0003De-Sn; Wed, 12 Jan 2022 03:51:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1n7Ufc-0003DW-Ec
 for linux1394-devel@lists.sourceforge.net; Wed, 12 Jan 2022 03:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPPCjW0++zs5j1BPECt8fbcKsS3R/TgbbewmfZx6kS0=; b=PdXJEkckBQGsIgXWfo97W8pyZs
 yb8nkjXP8maAuMMiShGNF5E/+rvKvbHfQln2uKIYBgbLnSsYDj3zrytsfKTcOXZ66yHckV79r/7Y+
 MAn1Oz1lSDss8z99BtFT2f9QCQ+jjTwM7P69V6go4Q9VCQ7x/869mfSZikb0vpLnxMuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPPCjW0++zs5j1BPECt8fbcKsS3R/TgbbewmfZx6kS0=; b=b7VeXQ9e4asW/dj4ERpdIspIqS
 znXdyQTjnV2AGiSPutWlz5tq4fZ+DIXB2lLHs0OLKu46/GKgP+S/Gi6+E5nUGr15DpTC9K/Gq95lg
 /IKV5gITtTctM92yhpY2i9bW/hsoZn1yPI7S1+fD2EmjPKOvrJdqEE33FS3fz9Sk7RhM=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7Ufc-0001Cy-93
 for linux1394-devel@lists.sourceforge.net; Wed, 12 Jan 2022 03:51:33 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id BA76E320167D;
 Tue, 11 Jan 2022 22:51:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 11 Jan 2022 22:51:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=cPPCjW0++zs5j1BPECt8fbcKsS3
 R/TgbbewmfZx6kS0=; b=Mycbv/xmkNCGIvmdvQRqd5qmGXjmN22OACHXD3vEihP
 +wZ9PiGK7MtO/eKtnqwHZQH7s3HsbgS4Hq7F79wABVSaFTDICaMOcgZtxoakP7Yr
 7IYxz+TmJPNj5fnzaVCl/qv6x9g1jJ2AwzSDMsqK6elihGLO1HYV5sfItMzgBPi7
 kZVXaxChxsx5YcKKa5VieU8evfVtSGC+/xqiSul3sBgIxPdXnkvW1kGOOaGhHvIP
 N42x3WTsjT5TcwpbPSiR/be5lB6aIShtDIS9pcnRd4JdpaE1Art4smCFz6sMwuNc
 mG0cqcN5isN3PhQv3bjyqBxa4C1zpE4UumFxwPgPKwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cPPCjW
 0++zs5j1BPECt8fbcKsS3R/TgbbewmfZx6kS0=; b=kmP4fLlO7ppe2GRHsMlvON
 qfHmAQENdYCE+z6g9W9LIH7rg1ZCN67Qx5zAUqtwY8+ozh+2K6kGHqQIvZLNEfXo
 9bKh5+LP97KwSDH9VzYWLGT0i/uYpFXb66WYJul+3K0CvS9/mI6vVdqtymLDQHrR
 AuJ8jq6YWC3ic4a/wX70gl00dwqKfcfXTRgQ8gWRsiRtBZ+T/C4FTyi02YKYAzn2
 ErJvvxreRAjCMj55CaCrxyJhZcNLqtfjZzKhFNSrXM6N6uSIovRU8r4lMeQ3p3Jk
 hYyslVdn0IaKzoeIkf66UbMC0P/kuyeh+qa3eV7iOwe8VXYqFcEyyUEn5F9l6G8A
 ==
X-ME-Sender: <xms:O1DeYTI9JtqiTyLBk3hklhpMyh1A-8T314X4NJUfChZYb-Pwnv2LqQ>
 <xme:O1DeYXIWUUvJd4g8oUFebDJrhsdYZBho3Ac22tCqfCL2W9z6BzmYQiWrzINQ_F9tv
 BA-3zapAQVPDJzTrHI>
X-ME-Received: <xmr:O1DeYbtSKXC4tSgdfW8Vzb02NBfq8EmKh2UQH4Ad7OZRCGsMbGDqLHaItSvKe8QwIkf53vxa0PEYrUoh0_jZSIGZ1Zj9XqFmhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrudehgedgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepjeegieefue
 evueefieeggeejledvgfejgeffjefgvdekleehgfdtfeetjeelkeejnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:O1DeYcanM5X5wgDAWQGKg709O0DgC6iL2S_wP6CkE1_nSrh5rBAfNA>
 <xmx:O1DeYaYXhoq_-EX_RbkYJya82uhHoHkGwC3OjWk7r8VTlQ9904_jRQ>
 <xmx:O1DeYQDSRbYnQ5gQRqW2UYGdWXC8tOpv6rP8lj19Q3CpjIgFtduxqg>
 <xmx:PFDeYaF3FhyFtbVWrwImjfHw8nRRsk9yjqSuJ8lI2vAigi6JH7wI0g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Jan 2022 22:51:21 -0500 (EST)
Date: Wed, 12 Jan 2022 12:51:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de, alsa-devel@alsa-project.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 marcan@marcan.st
Subject: Re: [PATCH 0/3] firewire: assist unit driver to compute packet
 timestamp
Message-ID: <Yd5QNs/YnvzGOy0g@workstation>
Mail-Followup-To: stefanr@s5r6.in-berlin.de, alsa-devel@alsa-project.org,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 marcan@marcan.st
References: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
 <YcGycqUrptkWYeOV@workstation> <YdgdfrcvhJrUXwYF@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YdgdfrcvhJrUXwYF@workstation>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Stefan, I'm sorry to post messages several times for the
 patchset if you are still busy. But I'm still waiting for any reaction. I
 note that Linus have announced merge window for v5.17 kernel. *
 https://lore.kernel.org/lkml/CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com/T/#u
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [64.147.123.24 listed in wl.mailspike.net]
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
X-Headers-End: 1n7Ufc-0001Cy-93
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

I'm sorry to post messages several times for the patchset if you are
still busy. But I'm still waiting for any reaction.

I note that Linus have announced merge window for v5.17 kernel.
 * https://lore.kernel.org/lkml/CAHk-=wgUkBrUVhjixy4wvrUhPbW-DTgtQubJWVOoLW=O0wRKMA@mail.gmail.com/T/#u

I'm glad if seeing your action for pull request as a response to the
window.


Kind Regards

Takashi Sakamoto

On Fri, Jan 07, 2022 at 08:01:18PM +0900, Takashi Sakamoto wrote:
> Hi Stefan,
> 
> Wishing you a happy new year.
> 
> We are in the last week for release of v5.16 kernel, and soon merge
> window for v5.17 kernel will be opened if thing goes well. I wish any
> action for the review process to merge these patches into upstream.
> 
> 
> Thanks
> 
> Takashi Sakamoto
> 
> On Tue, Dec 21, 2021 at 07:54:42PM +0900, Takashi Sakamoto wrote:
> > Hi Stefan,
> > 
> > Thank you for your long effort to maintain Linux FireWire subsystem. I'd
> > like to use the timestamp function for my integration in ALSA firewire
> > stack planned at next version of Linux kernel. I'm glad if getting to
> > your help for upstreaming.
> > 
> > On Thu, Dec 02, 2021 at 08:34:54PM +0900, Takashi Sakamoto wrote:
> > > Hi,
> > > 
> > > In 1394 OHCI specification, each descriptor of IR/IT/AR/AT DMA context
> > > has timeStamp field. The value of timeStamp field express the time in
> > > which the controller accept packet. The resolution of value is isochronous
> > > cycle count (8,000 Hz) with second up to 7.
> > > 
> > > I have a plan to use the value of timeStamp field for ALSA firewire stack
> > > so that userspace ALSA PCM/Rawmidi applications can get converted timestamp
> > > (ktime) for PCM frame/MIDI message. The timestamp can ideally express
> > > finer granularity than the time to invoke IRQ handler (and co).
> > > 
> > > Current implementation of Linux FireWire subsystem delivers the value of
> > > timeStamp field to unit driver for IR/IT/AT DMA context, but not for AR
> > > DMA context. Additionally, the way to refer to Isochronous Cycle Timer
> > > Register in MMIO region of 1394 OHCI controller is transaction to local
> > > node. It includes overhead of transaction and it's preferable to add
> > > less-overhead way available in any type of IRQ context.
> > > 
> > > This patchset adds two functions exposed in kernel space:
> > > 
> > >  * fw_card_read_cycle_time()
> > >     * allow unit driver to access to CYCLE_TIME register in MMIO region
> > >       without initiate transaction
> > >  * fw_request_get_timestamp()
> > >     * allow unit driver to get timestamp of request packet inner request
> > >       handler
> > > 
> > > I note that Hector Martin found kernel null pointer dereference during
> > > process to remove PCI card and has posted a patch:
> > > 
> > >  * https://lore.kernel.org/lkml/20211027113130.8802-1-marcan@marcan.st/
> > > 
> > > His patch is included in the series with my comment for relevant commit
> > > 20802224298c ("firewire: core: add forgotten dummy driver methods, remove
> > > unused ones"). The patch is required since unit driver can refer to dummy
> > > driver between removal callback of PCI subsystem and removal callback of
> > > FireWire subsystem.
> > > 
> > > Hector Martin (1):
> > >   firewire: Add dummy read_csr/write_csr functions
> > > 
> > > Takashi Sakamoto (2):
> > >   firewire: add kernel API to access CYCLE_TIME register
> > >   firewire: add kernel API to access packet structure in request
> > >     structure for AR context
> > > 
> > >  drivers/firewire/core-card.c        | 39 +++++++++++++++++++++++++++++
> > >  drivers/firewire/core-cdev.c        |  6 +++--
> > >  drivers/firewire/core-transaction.c | 18 +++++++++++++
> > >  include/linux/firewire.h            |  3 +++
> > >  4 files changed, 64 insertions(+), 2 deletions(-)
> > > 
> > > -- 
> > > 2.32.0
> > 
> > 
> > Sincerely yours
> > 
> > Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
