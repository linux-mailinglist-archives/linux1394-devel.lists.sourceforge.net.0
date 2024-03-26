Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0640688C25A
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Mar 2024 13:39:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rp658-0007Do-Mm;
	Tue, 26 Mar 2024 12:39:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rp656-0007Dc-JB
 for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SpN1i+9IU2YyhmBo6ufdJzLACq9EamCprJ4iEIQKtrI=; b=TQLSOxTF9iDyXsnMN2fHsEc2tf
 0D8VS5OtnLsETJN1kCDPHk/1w2bRmTkIgY7hKlP6dBidpfr9BgxydIeODlik7Ek/nPaRXC7CuCZCp
 NnRR+vuF2BXYab2mDO5ly90sr+e+41x3QBRrFnw2Ad67cLpQR9qm/qYSlqv3lcFv43X0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SpN1i+9IU2YyhmBo6ufdJzLACq9EamCprJ4iEIQKtrI=; b=VV5Zx+8o9AsLOeolKYd6bPYmLu
 nWZQzmYBw7RvFSZkbOu3lLtipJeITms+j/+0gXiX5cSFCnToqr6xK1CYkWK10oBbCYPW2jN9ECHmW
 QwW5+Zei63u9++3Q/x42a17Ju5RL4S2qTGTpi8Oik3fouoHCe11Vv0Daqoi2i4gbIW+I=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rp655-0004dT-Bm for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:39:08 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.west.internal (Postfix) with ESMTP id B8A3E1C000B8;
 Tue, 26 Mar 2024 08:38:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 26 Mar 2024 08:38:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711456736; x=
 1711543136; bh=SpN1i+9IU2YyhmBo6ufdJzLACq9EamCprJ4iEIQKtrI=; b=E
 1hUty5az9b1XwLJYZVo+vl6MYqo/f3dzKyBovCvm1QOa0ZvTJ40tvcyfvT2QYzMW
 2pGxLrX6vxNlg2zNPf5ZRy6WTVE0XChQgYKdbRj6MklSKvA1HRZiceVAGAaiTnCJ
 GIYeiw1rnuOx8XIDjsQcEQ0yoFy0gCeQuCER+dY6Kr6ImPIsMIu+OYSeVUcpt2so
 KIyDwjoufIy10Yu+Uev70OMi4A/hRjMNnk7svOmB2zje60YlrjSLQxpkGsEyMLCG
 04L/X9m8HT3RhyNgTKASbI5rDY+nv9s9P3Dy3hJ9ol2gnAs6n9MgEkssA3cIrYhV
 tTNfJgB1NKKw34bOYEKNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711456736; x=1711543136; bh=SpN1i+9IU2YyhmBo6ufdJzLACq9E
 amCprJ4iEIQKtrI=; b=RkZ3pIBzdXiu38ljJxqXCxCpmCscnBZO5XWEXaN8XIuo
 ODBnOmql2DchhALur7xClxP/UnJcbMwimrKblUMyrdutVlPO4AgRfPvpDiW0yqC9
 gPwXNuQAFn0hIW7JFymDp2b7DJO9q5Rg8KwuwZMxN9EffLsXjdk5TrsAxI+NexcB
 vxsBVbyGCmYb4O3JtEqYG3wIkTjc9W8w8y7N/NkanxHloqpnkn6lNfJWHW8lWr2A
 5qv43O7il8Srbslub7CVmQ1bKUvlGAaievO0Zojt0jLfX2XfwwEf9quyyKzEfv/L
 zkhHq/0WGKA3GdftQYkyXRJC2ARfvovxULZzFT9HLg==
X-ME-Sender: <xms:4MECZpDpw8cJwRBmV-ZdBNqrix5JQdTrBWx52QEttnTifhLF6m3qdw>
 <xme:4MECZnju94q9RTr_IRKCBGFKz1xTrP7u8pxDbQtk9_qDPTqfVc1VzZqQ9SKjL65WT
 XwumpV2FCrqKDl14rk>
X-ME-Received: <xmr:4MECZkmx0MlMTpkeUiKsYCsvasUfIz7Z-8kJVuX3Qiac3p1woVhrtHZIFz-SPe-mmkraiXQkDC9CPWiMWqOprp2jgKaeA7NQj9I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddufedggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepudehgeeuveetuedvkeekvdfgffelieeivdelhfet
 tedtveettefgffegjeefleeknecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4MECZjx-Um8aHTaZk_W-1HGPLcXlrUZwBq46T7_a9aIogXhKzB49hg>
 <xmx:4MECZuRrHSfmpLukLH5bnlDx6nK4L0gA8jyg6w3R3wwbOC-vBOWeJQ>
 <xmx:4MECZmZkjMXgYSBf6Grm3TfU8dBUn844mgHJvGosvXt1alqu8RGdDg>
 <xmx:4MECZvT0n7PFJDAjTkKV0xwI-JdzAvMn0DOZZo0Ju9WxIL9czxqs0w>
 <xmx:4MECZkOu98iuUFVAY3E6R9hvIdbakumiq7G7UVHHyd0OrQctcX1slWwByUM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 Mar 2024 08:38:54 -0400 (EDT)
Date: Tue, 26 Mar 2024 21:38:52 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: option to log bus reset initiation
Message-ID: <20240326123852.GA140364@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <Zfqo43xhFluOgO01@iguana.24-8.net>
 <20240325004134.GA21329@workstation.local>
 <ZgK9GNLURNg63zRU@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZgK9GNLURNg63zRU@iguana.24-8.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Mar 26, 2024 at 05:18:32AM -0700, Adam Goldman
 wrote: > Hi Takashi, > > On Mon, Mar 25, 2024 at 09:41:34AM +0900, Takashi
 Sakamoto wrote: > > Now we have two debug parameters per module for th [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rp655-0004dT-Bm
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

On Tue, Mar 26, 2024 at 05:18:32AM -0700, Adam Goldman wrote:
> Hi Takashi,
> 
> On Mon, Mar 25, 2024 at 09:41:34AM +0900, Takashi Sakamoto wrote:
> > Now we have two debug parameters per module for the slightly-similar
> > purpose. In my opinion, it is a pretty cumbersome to enable them when
> > checking bus-reset behaviour. I think it is time to investigate the other
> > way.
> > 
> > Linux Kernel Tracepoints[2] is one of options. Roughly describing, the
> > tracepoints mechanism allows users to deliver structured data from kernel
> > space to user space via ring-buffer when enabling it by either sysfs or
> > kernel command-line parameters. Linux kernel also has a command-line
> > parameter to redirect the human-readable formatted data to kernel log[3].
> > I think it is suitable in the case.
> > 
> > It requires many work to replace the existent debug parameter of
> > firewire-ohci, while it is a good start to work just for bus-reset debug.
> > The data structure layout should be pre-defined in each subsystem, thus we
> > need to decide it. In my opinion, it would be like:
> > 
> > ```
> > struct bus_reset_event {
> >     enum reason {
> >         Initiate,
> > 	Schedule,
> > 	Postpone,
> > 	Detect,
> >     },
> >     // We can put any other data if prefering.
> > }
> > ```
> 
> Maybe these should be four separate trace events?
> 
> > Would I ask your opinion about my idea?
> 
> It seems that tracepoints are the modern way to make debugging logs, so 
> if we want to modernize the FireWire driver, we should replace the 
> existent logging with tracepoints.

Thanks for your positive comment.

I pushed my work-in-progress patches to the following specific topic
branch::
https://github.com/takaswie/linux-firewire-dkms/tree/topic/backport-to-v6.8/tracepoints

You can see some patches onto your commits:

* 145da78e firewire: ohci: obsolete OHCI_PARAM_DEBUG_BUSRESETS from debug parameter with tracepoints event
* 3bdad35d firewire: core: obsolete debug parameter with tracepoints event
* 30f489af firewire: ohci: support bus_reset tracepoints event
* 4937d9c8 firewire: core: support bus_reset tracepoints event
* 0da26087 firewire: core: add support for Linux kernel tracepoints
* 961cba18 firewire: core: option to log bus reset initiation
* b3124560 firewire: ohci: mask bus reset interrupts between ISR and bottom half

In the above, I added 'bus_reset' events in 'firewire' tracepoints
subsystem. The structure is something like:

```
struct bus_reset {
    enum fw_trace_bus_reset_issue issue;
    bool short_reset;
};
```

The issue enumerations are in 'drivers/firewire/core.h':

```
enum fw_trace_bus_reset_issue {
	FW_TRACE_BUS_RESET_ISSUE_INITIATE = 0,
	FW_TRACE_BUS_RESET_ISSUE_SCHEDULE,
	FW_TRACE_BUS_RESET_ISSUE_POSTPONE,
	FW_TRACE_BUS_RESET_ISSUE_DETECT,
};
```

You can see the above event is trigerred by two kernel modules:

* firewire-core
* firewire-ohci

When merging the above changes and build/load the kernel modules, we can
see 'firewire:bus_reset' event in Linux Kernel tracepoints system, like:

```
$ ls /sys/kernel/debug/tracing/events/firewire/bus_reset
```

I currently consider about a pair of events for OHCI interrupts and PHY
operation, instead of the above event. I'm happy if receiving your
opinion about it or the other ideas.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
