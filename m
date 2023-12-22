Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6CD81CB2B
	for <lists+linux1394-devel@lfdr.de>; Fri, 22 Dec 2023 15:15:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rGgIa-00062U-Ta;
	Fri, 22 Dec 2023 14:14:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rGgIY-00062L-2v
 for linux1394-devel@lists.sourceforge.net;
 Fri, 22 Dec 2023 14:14:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oVt+LAFbFgKG82TEtbcSAhVvjHyj9SbZbARJs8bxpHc=; b=Raywy6WLB0wflgMx2BIvrFLVw+
 xMjgBUU/ob6iH9S33uohQkCbpg62t87XWgrW3aaBOjnBpcKnbauuA7nSNnpDq0kqnEydUhlh2Qcs/
 6SpDNPoAttykADyShaTZGqQ7hSnBCOkDjZfpRnvNchtg+UWm6cISZhyqr3dGbZpVdSyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oVt+LAFbFgKG82TEtbcSAhVvjHyj9SbZbARJs8bxpHc=; b=gvJdXJd2pIqd61bk5WnLHwm8/r
 QeistXi5UW15Ea8XCM/WRVvlXeYIGeLHWOAxm2IeELIYxgJJfgrsvgsaMn9gMFZIw9Pu23G3Sbl+e
 jTVq2UKN/gwYs+AD9ImGZpYkyVxbSFcnnyqMNcKDGTLD76OBCyOo9HFu1Rwqu9DZmXas=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rGgIN-0002ug-Sc for linux1394-devel@lists.sourceforge.net;
 Fri, 22 Dec 2023 14:14:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CD7395C00E0;
 Fri, 22 Dec 2023 09:14:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 22 Dec 2023 09:14:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm2; t=1703254462; x=1703340862; bh=oVt+LAFbFg
 KG82TEtbcSAhVvjHyj9SbZbARJs8bxpHc=; b=kIVkH7yDE4jU+JW9SAUuXyc9DA
 JXWW8k0mOWh2kQZfANdFqGi2dPiyn/Eikt1XMsQZ5ZO9vWOQVQagzdllFfQave9Y
 UNqdIO4vUFJ/kyrOhlbedNRZCb6k43J+Posx/VezgPMIaxCDsAPZtSe1APGaVPdg
 foEksd7fVlrju5+gnbYVZivaTCI15pooFmyRKb44qNaNk7VbFhHL8ql3Duoj+Pbp
 CxRgJ2ZbAQMCjK8DNa5/NENMlgyjW+fuIIhr/Y5J9EA8Hd/xliH4zRoU16PfZ7Sd
 EMgrtLCN3ua+BvTk2Qag1hvTXOyj8Da+4XnFX4YdzUDY6vcPmjhzV4WfZGAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703254462; x=1703340862; bh=oVt+LAFbFgKG82TEtbcSAhVvjHyj
 9SbZbARJs8bxpHc=; b=AiPCtw9sMXjAp9lCuZab5e4lTZDwZ+6WRLkagoavVBnV
 xYUShCYxhv3VyhKRO0faPvlo4Y/9P9THiSs7L6blVNuWmT/u7Dg0KXP6ZCnoFrZP
 PARaDPUCFKncfmLApupwc4nszr2JTclJZuDDcTE0jZAd6QESpTPD9PKmBmNwlLpY
 Qqosf3ap9Q+IChia6CK21Z2+zF0FCyd2nuC+jNu9+nXSBe/hB6UPtiqmSAi3V7Zg
 cF4m1rJie5MgR7FQz+QFjNDB84wv2x9Qk62asm0Q1Rsfenu/t2vBSZgPRqW2RHUa
 GkEtFWz9Zdh9sUpu1WM8JdtNQz/xkzljmkf0Vef6eQ==
X-ME-Sender: <xms:vpmFZZPgoqh_7SuCO1NToy1OrnLrwl7bGLGweBq2SfdiFK7qbvdCMg>
 <xme:vpmFZb_Ml-zkBhxBXEflLCcK4QvByvYmiHHaITxHCFTDBfQYnU1JySNRBugRi__O4
 nXmYck7ykSaH-eZl60>
X-ME-Received: <xmr:vpmFZYQfCniqiymZasnstShqWzelVx3b3QXUCeerxTFdAx7rQIHYY1ep95QY07CUxBpCJiCIIgGRQ9upsInxPo64nHNFBTfxG60>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddujedgiedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpedtvefghfevieejhfejueeileekieeiteeuhffhgeej
 feettdfhjeevhfevueejfeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdgrrhgthh
 hivhgvrdhorhhgpddufeelgehtrgdrohhrghdpshhouhhrtggvfhhorhhgvgdrnhgvthen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrg
 hkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:vpmFZVtvM_9KHGoF1fcN2LTteMJz5Eoq_DLBKRP5eNBkkIYSs0ymPA>
 <xmx:vpmFZRfwGa12bNRA_2HSzwcPFbDyfwF4LK6irfeIwVjghWcG3xfuRA>
 <xmx:vpmFZR2A2slpqMALsSASM4wn0VtU9n_Pk5QdR7qnr-lcFROM1l4k5A>
 <xmx:vpmFZRkpQnWMmKsn37NK8LMJpmnupGibR5OaTTTSTr53rn3NGRgpmw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Dec 2023 09:14:21 -0500 (EST)
Date: Fri, 22 Dec 2023 23:14:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/8] firewire: core: support legacy layout of
 configuration ROM for AV/C device
Message-ID: <20231222141418.GA625065@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221134849.603857-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Dec 21, 2023 at 10:48:41PM +0900, Takashi Sakamoto
 wrote: > Hi, > > This series of change is take 2 of my previous post[1].
 > > Current core function of Linux FireWire subsystem has support fo [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rGgIN-0002ug-Sc
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

On Thu, Dec 21, 2023 at 10:48:41PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This series of change is take 2 of my previous post[1].
> 
> Current core function of Linux FireWire subsystem has support for legacy
> layout of configuration ROM, described in annex of 1394TA document[2].
> However, in a point of device attributes (e.g. nodes in sysfs), there
> are differences between devices with the legacy and standard layout of
> configuration ROM. The differences bring some inconveniences to users[3].
> The series includes changes to solve them.
> 
> The series includes changes relevant to driver matching procedure and
> notification to user space, thus could easily bring functional regression.
> For safe, the series includes some KUnit applications to test the change.
> 
> However, backward incompatibility is inevitable due to change of modalias
> for device corresponding to unit. As long as I investigated, any unit
> drivers in kernel are not affected by the change. Additionally, less
> applications in user space are not as well. I think we can be optimistic
> to the regression.
> 
> Changes from v1 series:
> * fix evaluation of uninitialized variable in 7th patch
> 
> [1] [PATCH 0/8] firewire: core: support legacy layout of configuration ROM
>     for AV/C device
> https://lore.kernel.org/lkml/20231220041806.39816-1-o-takashi@sakamocchi.jp/
> [2] Configuration ROM for AV/C Devices 1.0 (December 12, 2000, 1394
>     Trading Association, TA Document 1999027)
> https://web.archive.org/web/20210216003030/http://1394ta.org/wp-content/uploads/2015/07/1999027.pdf
> [3] [PATCH] Fix missing sysfs vendor/model entries for some devices
> https://sourceforge.net/p/linux1394/mailman/message/55802731/
> 
> 
> Takashi Sakamoto (8):
>   firewire: core: adds constant qualifier for local helper functions
>   firewire: core: replace magic number with macro
>   firewire: test: add KUnit test for device attributes
>   firewire: test: add test of device attributes for simple AV/C device
>   firewire: test: add test of device attributes for legacy AV/C device
>   firewire: core: detect numeric model identifier for legacy layout of
>     configuration ROM
>   firewire: core: detect model name for legacy layout of configuration
>     ROM
>   firewire: core: change modalias of unit device with backward
>     incompatibility
> 
>  drivers/firewire/.kunitconfig            |   1 +
>  drivers/firewire/Kconfig                 |  16 ++
>  drivers/firewire/core-device.c           | 127 +++++++++---
>  drivers/firewire/device-attribute-test.c | 251 +++++++++++++++++++++++
>  4 files changed, 368 insertions(+), 27 deletions(-)
>  create mode 100644 drivers/firewire/device-attribute-test.c

Applied the above patches to for-next branch[1]. Thanks for your reviewing.


[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-next

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
