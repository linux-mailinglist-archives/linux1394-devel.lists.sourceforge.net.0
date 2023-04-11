Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 860D66DCE5C
	for <lists+linux1394-devel@lfdr.de>; Tue, 11 Apr 2023 02:06:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pm1Wd-0003L9-Ue;
	Tue, 11 Apr 2023 00:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pm1WL-0003Kd-WA
 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Apr 2023 00:06:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cz6BsumEIt+mTcwd5ko3MSJ+L+18kKloKqkmGXShAw4=; b=agwZKC2BYHRa8MWJ/dPU3bdxwH
 DVALKXBDhQ6XJsIbf57wWjSbsyHkoAo42z90UXNm0Y8tNMaaSL0LbyxtKhsyRZXciCK/WaALyqpFQ
 kbrdOTNO+OnIHYQQ3n/tiHzH5lIDC06aiYC4hcbRrqzd4saDU5zNBZDPy9gL+i4QPIzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cz6BsumEIt+mTcwd5ko3MSJ+L+18kKloKqkmGXShAw4=; b=Pa988DuZ/H6Fzet3Z7dS4opn8G
 sf268I99akYfvtM0VxTIPrOOsOQ87Do6Oc9mTnxw3A2AXzTwtb9xKVoKCYZx/8sq0Gydf3CItRY80
 9cKcPX+nw5uC+wSihwcGs5hEq7VW4yJoJ8imi/ktrOw9k/9iYOU24ueAXBE04LPUB4Q8=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pm1WH-0003AR-S2 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Apr 2023 00:05:59 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 4B2183200495;
 Mon, 10 Apr 2023 20:05:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 10 Apr 2023 20:05:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1681171549; x=
 1681257949; bh=Cz6BsumEIt+mTcwd5ko3MSJ+L+18kKloKqkmGXShAw4=; b=Z
 KVwQL/vfz5ieR9j/izxkEZuH3iBT5NzmSIYZCDvSa5KsYJXt7jFzooJd5cptarWY
 j23yx18RAZdBr66th9uyIcYTrnxy9Pie8xzqUwwa/Q7B7fmIqHZaZr5tEI1sDUMN
 swIggmG4Cj0vJyur7Biitay3gwgY4C9WtvF2MseOMHXSuSaR8k2Mvn5H06UtNMZN
 kAB3rbWJm0bt08uwFN8Ch58oDavC41vHcbaiPR1BsZD3DR+F+QK06XlP3j1em6Zn
 wedcbXM4OhYXZVG374zryyBZkI5qOVQQAsaLG8+oV15aCnW8MrPMyedoVyuB3hWg
 +hgQZ7Cr138221DcfedEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1681171549; x=1681257949; bh=Cz6BsumEIt+mT
 cwd5ko3MSJ+L+18kKloKqkmGXShAw4=; b=t10OaKqdX6CE7EYILpyGFrg+jFqRc
 9/GQceecu2zXzkbqq5XJrcYTZy8jLlIbLYdkLu1sGpG9zvLW29bTvk6Z6+LxzwjY
 +A9CGeYoS9Thu+TAr+wrLawHZ92eZBhDwiOUDThfmk4xNen4XBSsVv6Fn9Juzz6E
 iIHTKK3e2fCxtrwUiQasQnbAdYbuGN2dX8U7lL3/Kd+HUofqpKZH4kQpxHkr3Mz3
 u1981wH/4IqgBz1qqO7DMAXVetko97ZAmxSxJT3QOKKRZiciSWKJGhWhDkICSwXY
 0rHUU+Z+hKctgke9FxzpJ35Zn6nmgtTxXINXlNh6dY1K5kIM0V8I5lwHw==
X-ME-Sender: <xms:XKQ0ZHynqOwhXI-9cOGEcCTBhadDdCtYDREVwdqXJVF2a18p76sb-A>
 <xme:XKQ0ZPTTjoB0VJWBK_vt28-8zrBwwaIh28q5VrZyQePuYzuVVxmbKZibL_HoIffNd
 6_7ZuFnh7rFCjEJg5I>
X-ME-Received: <xmr:XKQ0ZBXPjQO_juPEWRgAhrpOFdQLNco81VMM1OWZ8Cm_qbgezk-zqCYqIHK2Wv0qar6Wyx7sqaNmijtT439DsCUmLbU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdekfedgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:XaQ0ZBh2rU2kPL1ikh3tEzHAhaEKY2MMTyr-prD0_860N3JUbRrxIQ>
 <xmx:XaQ0ZJCcWNWofTis3-SZVAVhUUYDSFKtQbp1hebE8nVtmf-zJkknJg>
 <xmx:XaQ0ZKKlCim2dDa_PfIZXduzkTQflcjpTUnfGpMhzpFfHgBS4WtP9g>
 <xmx:XaQ0ZINdUVsdsRYmKh1RIufPfp743WXjGNEEbCE8NMrcv7vi4GSDxQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 10 Apr 2023 20:05:47 -0400 (EDT)
Date: Tue, 11 Apr 2023 09:05:43 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v3] firewire: init_ohci1394_dma: use correct function
 names in comments
Message-ID: <20230411000543.GA254125@workstation>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net,
 Andrew Morton <akpm@linux-foundation.org>
References: <20230410011306.26268-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230410011306.26268-1-rdunlap@infradead.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 09, 2023 at 06:13:06PM -0700, Randy Dunlap wrote:
 > Prevent kernel-doc complaints by using the correct function names in >
 kernel-doc comments: > > drivers/firewire/init_ohci1394_dma.c:258 [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pm1WH-0003AR-S2
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
Cc: Andrew Morton <akpm@linux-foundation.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sun, Apr 09, 2023 at 06:13:06PM -0700, Randy Dunlap wrote:
> Prevent kernel-doc complaints by using the correct function names in
> kernel-doc comments:
> 
> drivers/firewire/init_ohci1394_dma.c:258: warning: expecting prototype for debug_init_ohci1394_dma(). Prototype was for init_ohci1394_dma_on_all_controllers() instead
> drivers/firewire/init_ohci1394_dma.c:289: warning: expecting prototype for setup_init_ohci1394_early(). Prototype was for setup_ohci1394_dma() instead
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Cc: linux1394-devel@lists.sourceforge.net
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
> v2: rebase/resend, add note to Andrew
> v3: add Takashi-san
> 
>  drivers/firewire/init_ohci1394_dma.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Thank you to remind it to me.

Acked-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 
By the way, I got enough access permission to linux1394.git repository
and I'm preparing it for maintenance work (not done yet).

* https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/

After finishing the preparation (e.g. joining to linux-next integration),
I'll apply your patch and tell it to you, within the week.

> diff -- a/drivers/firewire/init_ohci1394_dma.c b/drivers/firewire/init_ohci1394_dma.c
> --- a/drivers/firewire/init_ohci1394_dma.c
> +++ b/drivers/firewire/init_ohci1394_dma.c
> @@ -251,7 +251,7 @@ static inline void __init init_ohci1394_
>  }
>  
>  /**
> - * debug_init_ohci1394_dma - scan for OHCI1394 controllers and init DMA on them
> + * init_ohci1394_dma_on_all_controllers - scan for OHCI1394 controllers and init DMA on them
>   * Scans the whole PCI space for OHCI1394 controllers and inits DMA on them
>   */
>  void __init init_ohci1394_dma_on_all_controllers(void)
> @@ -283,7 +283,7 @@ void __init init_ohci1394_dma_on_all_con
>  }
>  
>  /**
> - * setup_init_ohci1394_early - enables early OHCI1394 DMA initialization
> + * setup_ohci1394_dma - enables early OHCI1394 DMA initialization
>   */
>  static int __init setup_ohci1394_dma(char *opt)
>  {

Kind regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
