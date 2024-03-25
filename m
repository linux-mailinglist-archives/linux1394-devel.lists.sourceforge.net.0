Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C8E88847F
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 Mar 2024 01:42:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1roYPM-0002UB-2Z;
	Mon, 25 Mar 2024 00:41:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1roYPK-0002U2-Rn
 for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 00:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dh+dJEY2gJkF1hs/hYpFYfuFKg28LMybI2iLz5LxJGE=; b=dcq3xle0jOK1zTsN/ySATTugmn
 Rs06+hzqtWKUuTepP0mJVM/X9JMh4rK7oD4NELzqfP7SwxHzPwuA2E8nkgMd8GR3GIvg4lt51zN0F
 7/ld+q56CSAyRsV5G50crS9Vea3aS4Qso6v7aV1RzUrLuC5l2rjjKQe6m0CcSgnnAeeU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dh+dJEY2gJkF1hs/hYpFYfuFKg28LMybI2iLz5LxJGE=; b=FOh8jT4FggYf7p5f3Ma4L9lw+S
 oGy9YE4KYTlsBSO48mamIzkKz6muETubsR13Uo0HK+urGMvJGWfbEcwOrjCAeNEj5XM+QMoh48kmE
 Zw2fwAcU9jWQOMfjSEqI6RHnyfbqIPkAq0Af37cNgI1oX1PAbAKYq0nkKXOmPiajhAak=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roYPI-0001ed-9K for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 00:41:46 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.nyi.internal (Postfix) with ESMTP id CF9C75C004D;
 Sun, 24 Mar 2024 20:41:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute7.internal (MEProxy); Sun, 24 Mar 2024 20:41:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711327298; x=
 1711413698; bh=Dh+dJEY2gJkF1hs/hYpFYfuFKg28LMybI2iLz5LxJGE=; b=K
 TkaaqjIGBzU26M4F/P0PKnLJlKxDm/gMiENw+SrBVHuPZBN9mFg3jhLt2CTGIOKx
 dc9sZQkhgKsxzNHtQe5YvU6ry2fc4Mn/5zzCr0/weXkkIOO/aJJWLj00z7YPT83X
 +EwygA45GHyViS0xWX/P2tfgkeKgAiMYCYkqvqkw8YQEfeTkenHnnhuhKxTphrBN
 MqVmS8abJ/kkHYREQCMyoP7Isrc4/wox1b/1qNKRTlkd78cImzPG0snR5e2wFAVB
 3O815ZZ90mRSYP9jMtCnSDw0jDhARufD0fYebWojU8oBv8BRFwWwCycxHSF+5nCn
 4BPpkARPOkZf9TN0/C80Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711327298; x=1711413698; bh=Dh+dJEY2gJkF1hs/hYpFYfuFKg28
 LMybI2iLz5LxJGE=; b=Qo4Q5kCd0yAKtC5UZTJrHDhuWA001qerYR1P4tzHFoS6
 cEKo8iwioLuRSm4Ey7hP8knfY4JXOxO36JUBiNj6o9HSYVyPApo3Em4qhlqPoaVh
 kLhdZNgMONYAv2jwsgAyb9zChCimxdBCLSuNXrduByQO0c/bx11X7zaXiyb7Vii6
 zsUKFiYKfIJKHUzJavUXNLSxtCo/RDRz8CrftNdX4TV8lIN14SitYK8HSfCkIQTD
 QQp8s6BjK/q9PRSiWf8XByw6ybCT28D8xWX0Hmxz3OSvUAhFl1G6g7ufdDEmBVhq
 oe9AgsrjjbxzWx+fJxi9z7ppYaHCwCETLFxUxeMsDA==
X-ME-Sender: <xms:QsgAZr39FC7aElUGw604XOdu4epMAaI-kUN6qnuVl0cUk-p42JaxjA>
 <xme:QsgAZqHzGZMLzJYvxii1seljXIuE4_kAYw0Gxc5wepDQbARUPJSZoVFYz__IeHAOE
 ghkdreUp0QtujwmD0U>
X-ME-Received: <xmr:QsgAZr65uyDheMdP617wkbR4r3k3VCsm1Xd0qdTSHMnEhaBLcg0uvhau8c1I7vhK80iUv4C3c0eEQQbrXSE2KMKIpfJh4-DtmuI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtkedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:QsgAZg022tybLCCK14m06uRBbMM9BVOAcuGGVnQyJuJMz7_eANd_HA>
 <xmx:QsgAZuF1uGttxdkhcD1_f-7ypIwr11Cj3e2W3PL3QbR3f3yPHMJ7vw>
 <xmx:QsgAZh_zxOHvJ8QVALS2GQ09REcYa4UeZXZcvwsiXWHM_oSd3OuQMQ>
 <xmx:QsgAZrnveojPZWsAipMaoPuF0_wVr4fgj5H49tVht6e2g2PJkmcInw>
 <xmx:QsgAZqD9hrdHY8oydnffxe4lZmn4UkcwFt73R8MhvLpHy41aIOc2pw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 20:41:37 -0400 (EDT)
Date: Mon, 25 Mar 2024 09:41:34 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: option to log bus reset initiation
Message-ID: <20240325004134.GA21329@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <Zfqo43xhFluOgO01@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zfqo43xhFluOgO01@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Adam, On Wed, Mar 20, 2024 at 02:14:11AM -0700,
 Adam Goldman
 wrote: > Add a debug parameter to firewire-core, analogous to the one in
 > firewire-ohci. When this is set to 1, log when we schedule, delay, or [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1roYPI-0001ed-9K
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

Hi Adam,

On Wed, Mar 20, 2024 at 02:14:11AM -0700, Adam Goldman wrote:
> Add a debug parameter to firewire-core, analogous to the one in 
> firewire-ohci. When this is set to 1, log when we schedule, delay, or 
> initiate a bus reset. Since FireWire bus resets can originate from any 
> node on the bus, specific logging of the resets we initiate provides 
> additional insight.
> 
> Signed-off-by: Adam Goldman <adamg@pobox.com>

Thanks for the patch. I applied it to for-next[1].

Now we have two debug parameters per module for the slightly-similar
purpose. In my opinion, it is a pretty cumbersome to enable them when
checking bus-reset behaviour. I think it is time to investigate the other
way.

Linux Kernel Tracepoints[2] is one of options. Roughly describing, the
tracepoints mechanism allows users to deliver structured data from kernel
space to user space via ring-buffer when enabling it by either sysfs or
kernel command-line parameters. Linux kernel also has a command-line
parameter to redirect the human-readable formatted data to kernel log[3].
I think it is suitable in the case.

It requires many work to replace the existent debug parameter of
firewire-ohci, while it is a good start to work just for bus-reset debug.
The data structure layout should be pre-defined in each subsystem, thus we
need to decide it. In my opinion, it would be like:

```
struct bus_reset_event {
    enum reason {
        Initiate,
	Schedule,
	Postpone,
	Detect,
    },
    // We can put any other data if prefering.
}
```

Would I ask your opinion about my idea?


[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-next
[2] https://docs.kernel.org/trace/tracepoints.html
[3] 'tp_printk' in kernel/trace/trace.c, 'trace_event' in kernel/trace/trace_event.c

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
