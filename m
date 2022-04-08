Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B0A4F8BEC
	for <lists+linux1394-devel@lfdr.de>; Fri,  8 Apr 2022 04:15:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nce9u-0003vB-VB; Fri, 08 Apr 2022 02:15:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nce9s-0003v3-Te
 for linux1394-devel@lists.sourceforge.net; Fri, 08 Apr 2022 02:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nvkFaMbev4/kVyqnJNPqVSo+frUbKlNHC+DpOIWGrBw=; b=jc0hy+OlVJGaoFGKGW3MJb9i4r
 gZEezyoRuzxzB4TxWDVHdl3ta/T1rP9IWHfLatCGBjkrq3BJ/xf14TdCvlAVqYSscok40JODBO5ki
 tucASQygPRb3+wc0PoWeFhKzadbYyPicKzC3p/CRLB5rZ0F20AAr+MVnKs15+SGiskUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nvkFaMbev4/kVyqnJNPqVSo+frUbKlNHC+DpOIWGrBw=; b=Ip52+lMp05sta7aN4Y+2eD1Xzi
 CqCyQdw/TBj0lvYoH4zu/DTHNYh8jSu/s0670dBmnKxAbTq/FeTJXRp9qVgYoZIoaiEcSSsd78tJU
 cAo+jd9pPaLiWlLN6RE5yAAvmH44nEDJd4arkO6rf7J34eTmdajghj5e7m0M4G6g9ekk=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nce9p-009E8U-2D
 for linux1394-devel@lists.sourceforge.net; Fri, 08 Apr 2022 02:15:31 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 585305C013B;
 Thu,  7 Apr 2022 22:15:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 07 Apr 2022 22:15:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; bh=nvkFaMbev4/kVyqnJNPqVSo+frUbKl
 NHC+DpOIWGrBw=; b=Png8i7qUPf5HmJFJ58DmULMRRGYoAmB73A3ZOYEqFUm1fU
 43PFXFKD9iepd1G5yZsz9+lMRJAQS+DLN/POwV1J7BJcjFkwz59ZIw9mRnGUwlZf
 Ctmdp0B0Mlqd+9uY+KT/Tyo2fQstOHWVit5j3YtALZkV35WE9UFuUFLCQxj3FZyz
 K6CAF8zwT+X7sLrJIUXQnsl9qILn2iBGw0VHpdRKJC1Gz0qtaCQgra4rauaBPeWN
 RHnLssQtAL378A+ibP0ZN1Hb1LTsKjEVApYDLUggi6QxyFkvw+q59/c37vStoKf1
 pnyPBufUAUHiDOTySi/VebnjcCrd/hiXROBSZnOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=nvkFaMbev4/kVyqnJ
 NPqVSo+frUbKlNHC+DpOIWGrBw=; b=DKeAQHx6rcKdL75fyOgCawkzYIYKN2p7X
 10oUueW8uqnBWhrF8gXHfytM87wfwhpkeFUtGtnyb5e+TC9Hu8YyaXi3fvT3mcMG
 PmGAS52g2HN5SXbpqfujsnWEk/Cqb9RY6ekbGCUdxtj2VmQTt+T82wp1b3PpD7u8
 0BhFuD9x3xOuwBICffODz7F4IeiqBsc3EaJpbFleXZSH3Uv5Xvr+2Q7jh5WTtwzc
 xJ3xq/Cabyat4SD0cFcnZlNVjKorCobwz/tU4XP3I8pGD5xCb2GL5HjpqMsCmn8G
 8uF2Log6rcbW5V6kUKC9Zhdp7pZXEIbOGwGYstIUaNDN7qfia2kcw==
X-ME-Sender: <xms:uJpPYh8IWikMqZyG5HWZtkDitNp0CcOBambTyoc2IfoLIh51tZFDvQ>
 <xme:uJpPYltrKyW_iaTQLV6ED03-o7gDHimQJp_2sEQqVqiJOqDTojJOM3PUvUBsrMVK5
 lvEavz7BkcxHnU_uMo>
X-ME-Received: <xmr:uJpPYvDPNK87LZse2QcaukTasHMe3vzByBwzctUwzUux3SAUDeP8qFvTMlraX1dd3O2Xqk0NUoTuPSnHoRwTGmhC0-2rjuX0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejledghedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeejgeeifeeuveeufeeigeegjeelvdfgjeegffejgfdv
 keelhefgtdefteejleekjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:uJpPYleVcSI-JrzdC8B_p9WH-4t8mOl-WHN8W6f8_D-INaZlG6mLmQ>
 <xmx:uJpPYmOEABEsKmR-ozhl4WgiKx0aY4VDcuBkuDB6c_XzwHTJ-GjVhw>
 <xmx:uJpPYnnsUxqgkqg5OoZr_nU0HWUhokxzXEiET0sakS6f-VyjGlyjKg>
 <xmx:uZpPYjoI1r7BEHTKCRp2wfHZeTfX9d3uhXAHL7rZSUsdqmo8xAuLtQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 7 Apr 2022 22:15:19 -0400 (EDT)
Date: Fri, 8 Apr 2022 11:15:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH v3 0/3] firewire: assist unit driver to compute packet
 time stamp
Message-ID: <Yk+atHM5c9EI3584@workstation>
Mail-Followup-To: Takashi Iwai <tiwai@suse.de>, clemens@ladisch.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20220405072221.226217-1-o-takashi@sakamocchi.jp>
 <s5hczhv5wjc.wl-tiwai@suse.de> <Yk4r7VcotHz0iMOU@workstation>
 <s5htub52zz1.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5htub52zz1.wl-tiwai@suse.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 07, 2022 at 08:02:10AM +0200, Takashi Iwai wrote:
 > On Thu, 07 Apr 2022 02:10:21 +0200, > Takashi Sakamoto wrote: > > > > On
 Tue, Apr 05, 2022 at 06:23:35PM +0200, Takashi Iwai wrote: > > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nce9p-009E8U-2D
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Apr 07, 2022 at 08:02:10AM +0200, Takashi Iwai wrote:
> On Thu, 07 Apr 2022 02:10:21 +0200,
> Takashi Sakamoto wrote:
> > 
> > On Tue, Apr 05, 2022 at 06:23:35PM +0200, Takashi Iwai wrote:
> > > On Tue, 05 Apr 2022 09:22:18 +0200,
> > > Takashi Sakamoto wrote:
> > > > 
> > > > Hi,
> > > > 
> > > > Current implementation of Linux FireWire subsystem doesn't allow unit
> > > > driver to operate content of packet in IR context according to
> > > > time stamp. Additionally it doesn't allow unit driver to read current value
> > > > of CYCLE_TIME register in OHCI 1394 controller. It brings disadvantages to
> > > > drivers in Linux sound subsystem in regards of handling time for sampled
> > > > data such as PCM frames and MIDI messages.
> > > > 
> > > > This rerolled patchset is first step to improve the situation.
> > > > 
> > > > Changes in v3:
> > > >  * Rebase v2 patchset to v5.18-rc1
> > > > Changes in v2:
> > > >  * Rebase v1 patchset to v5.16 release
> > > >  * https://lore.kernel.org/lkml/20220212022131.199855-1-o-takashi@sakamocchi.jp/
> > > > V1:
> > > >  * https://lore.kernel.org/lkml/20211202113457.24011-1-o-takashi@sakamocchi.jp/
> > > > 
> > > > Hector Martin (1):
> > > >   firewire: Add dummy read_csr/write_csr functions
> > > > 
> > > > Takashi Sakamoto (2):
> > > >   firewire: add kernel API to access CYCLE_TIME register
> > > >   firewire: add kernel API to access packet structure in request
> > > >     structure for AR context
> > > 
> > > Thanks, applied all three patches now to for-next branch.
> > 
> > Although thanks for your applying them into your tree, I apologize to
> > trouble you if you overlook that the included changes is just for Linux
> > FireWire subsystem. It's my fault to send them only to Linux sound
> > subsystem, but the changes are required to my work in sound drivers... 
> > 
> > If you are willing to include patches to Linux FireWire subsystem for
> > your pull-request to Linus, I can prepare respined patches for it since
> > I have the list of patches posted to LKML as bug fixes for Linux FireWire
> > subsystem.
> > 
> > I need any help to solve current situation of Linux FireWire subsystem
> > that bug fixes and new changes are hardly merged. Of course, IEEE 1394 bus
> > is already outdated and legacy, but I know that some users still work
> > with it. If your path is available for it, it's the easiest and the most
> > convenient way for upstreaming, I think.
> 
> Ah OK, it's fine for me in either way.  I can keep up those changes in
> my tree, or go through others.  I leave the decision Firewire
> subsystem people.  Just let me know.

That's great. I think we can see few objections.

In this weekend, I'll send two respined patchset. One is for bug fixes for
your for-linus and living stables. Another is for your linux-next.

Thanks for your kindness.


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
