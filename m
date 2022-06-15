Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F054BF64
	for <lists+linux1394-devel@lfdr.de>; Wed, 15 Jun 2022 03:46:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1I6o-0001la-GC; Wed, 15 Jun 2022 01:46:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1I6g-0001l9-R3
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 01:46:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qXAlvhaK46hv0TIdkAPi1AoeYyTIvpjOQn5HCdOpeoo=; b=Bfb5vOhUn6yjvwSrtpZJhddITB
 lzkIDMByb8fNJ5z6hNTXNk/ymol0oT0JrZJcuEmJuI5+pbgc+6wFy8OumXZxTxMXXG6DkbCj4rUXQ
 w1PmVo6LttM17lz8b9jh8XGknHE9jCnebZ2a43MQEUwoVmtFKAkJhmEyOjO0COzYZCuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qXAlvhaK46hv0TIdkAPi1AoeYyTIvpjOQn5HCdOpeoo=; b=SYE38NQhbx/xT7Xtmx9ZfAr7bn
 UhcZJ2e42yr8hSjCkmO7zflzDjjslOVp6oMLM8COVVGcFZPjZfnaEKFMxYswjoY4aKCuEoTAUr8LK
 hsFGWFuc3S+1tkweP5nBTzEylc+p4Ri7amPR2f1rrgcgUdIIzi5CPiWcVbfzw4LKmiJw=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1I6X-001wDe-BT
 for linux1394-devel@lists.sourceforge.net; Wed, 15 Jun 2022 01:45:58 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 7355632009A3;
 Tue, 14 Jun 2022 21:27:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 14 Jun 2022 21:27:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1655256457; x=1655342857; bh=qX
 AlvhaK46hv0TIdkAPi1AoeYyTIvpjOQn5HCdOpeoo=; b=UfN+ywYTJHUQZGGwAW
 DLMzXNL68rWDh+SlI8LldIA51C+Ab80XlVqVHNwa3Qx2CbDESHCVlTo+sy0ZRS5g
 IxE7qJP2SYcvgNTJIPnXZ/FhjapbhHZNO+wED9Fa2TtSfDyAWxQWbCz8kPGn9srM
 1s+0OCSjPeomTx8x9kZxzzpP0d5tgL+doUKTYiShtK5j25C9Jn3F5FHykrwCMDKx
 ClYpiW5xtME15gY1rjk1seNkINxhAKsvYnTx6QQo/aQ0ChjjH/jFac2m69dIc7xb
 /dVjwZddKHD8pJs/yCNbD8y7NkE6Kniifv99z8107jzNkesfCLM9MzS88Q7XItBV
 tSCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1655256457; x=1655342857; bh=qXAlvhaK46hv0TIdkAPi1AoeYyTI
 vpjOQn5HCdOpeoo=; b=CjvdDfOvUja1MxXMsyx1W6nAREnctZ9pfN4W+aKF5aRM
 OoXc+1CLyeSqGaTX5ptRShC46uM+mm/qfW94q1IknXhb/hSTS/ti6DViTqesnBW/
 Ydku9YsXY+OOjYXMHt+s7mzzLA0iL0uhldPgTuE0Zy0bfCjBuKZZ7ZgcDuJsiK1J
 mScza8GtrxCN56TpaePsY9IqQyoIal+1KmXK0yCFduC8jAe4paPnhzm2FI3nfj44
 EFQf3f0cbOsW6Q3RmvRTxqHluC+XneLyLg3l4zr6R3QWTyDxlqzyuo5IWvrM1/hl
 Jbn82SIkcR08r/1fjSc3T6k/Oz9uk0P68IeC14wlZQ==
X-ME-Sender: <xms:iTWpYrarb0q0k9jeWHmZeQwNnIYXPffptKTq8eq-N4kFZWznzPgbGQ>
 <xme:iTWpYqa8j23A71y955rCm5VGUw83nkOfOC12Blb4TZQTBOHakp8N8V6_Hht8kMRTE
 hxWQHcsJeEl0vg_BeI>
X-ME-Received: <xmr:iTWpYt_OGJ7oabjn13J82LtCw2endWvztBBotL2dwwKl7MvgqbLMk7ZcnVMX5Bue3-8rGcqPq6zSyVknpmtH7LcKBBb-Mtq_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvtddggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iTWpYhrb4_YOt2qmPdCxgTVZVAutmeRnf_5FOxDW1HKlG6DqQ-EFng>
 <xmx:iTWpYmpqGZqYg_iivdUvhu2Ivf4ME1YNXtRD1HzcMiyzgXiceE9OGw>
 <xmx:iTWpYnQnDPlYyk7Ea7XiVDMxY1P9UpovUDGOmfeYMMMgIV0InX9UTA>
 <xmx:iTWpYpWHfkxIf93PcAAlHI6VLnEXK4JMY2VVqb7Tle74yAg60I3BkA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 Jun 2022 21:27:35 -0400 (EDT)
Date: Wed, 15 Jun 2022 10:27:33 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] firewire: cdev: fix potential leak of kernel stack due
 to uninitialized value
Message-ID: <Yqk1hXsJ3DMtfEJS@workstation>
Mail-Followup-To: Takashi Iwai <tiwai@suse.de>, stefanr@s5r6.in-berlin.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20220512112037.103142-1-o-takashi@sakamocchi.jp>
 <Yqh/bDB+Bvwcjjrh@workstation> <87o7yvpf4t.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o7yvpf4t.wl-tiwai@suse.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 14, 2022 at 03:07:46PM +0200, Takashi Iwai wrote:
 > On Tue, 14 Jun 2022 14:30:36 +0200, > Takashi Sakamoto wrote: > > > > Hi
 Iwai-san, > > > > I have a moderate request to you for the patc [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1o1I6X-001wDe-BT
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, Jun 14, 2022 at 03:07:46PM +0200, Takashi Iwai wrote:
> On Tue, 14 Jun 2022 14:30:36 +0200,
> Takashi Sakamoto wrote:
> > 
> > Hi Iwai-san,
> > 
> > I have a moderate request to you for the patch which fixes an issue
> > included in v5.19-rc1. If it's applicable and I can borrow your help
> > again, I'd like you to send the patch to mainline via your tree.
> 
> Do you have the lore URL I can get a patch from?
 
Here it is:

https://lore.kernel.org/alsa-devel/20220512112037.103142-1-o-takashi@sakamocchi.jp/

> > If possible, it's preferable to apply additional three patches I
> > respined[1], but it could be optional since not so critical.
> > 
> > [1] https://lore.kernel.org/alsa-devel/20220512111756.103008-1-o-takashi@sakamocchi.jp/
> 
> I can merge those, but now looking at the patches, I'm afraid that the
> patch 2 ("firewire: use struct_size over open coded arithmetic") is
> wrong; struct_size() takes the number of elements, and the element
> type is u32, hence you're allocating 4 times large data with that
> patch.

Indeed, I overlooked it. The length should be quadlet count instead of
byte count in the case. I'll post revised patches later. Thanks for your
review.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
