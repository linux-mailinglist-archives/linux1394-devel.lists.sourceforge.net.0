Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6BD926CA3
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Jul 2024 02:07:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sPA0N-0001GX-CJ;
	Thu, 04 Jul 2024 00:07:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sPA0L-0001GO-8N
 for linux1394-devel@lists.sourceforge.net;
 Thu, 04 Jul 2024 00:07:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sw9VuEVMWaWe2X2HOhdWK8vj1JPd5Bh8ayDVDAlK70E=; b=FnY3NMtUiMzlQTdxg7NZpqsX9w
 MT+IPKLQiq/r6SclNDV0oOVebr8mleCNAUQwYhuzVroceQ5iUV5Tk1doFZ9Yb+p/ppMyqgaAqFopP
 KoJyH8CVWDmDynTj3ZOTYh1omvgV8RCtEZsMM9bmR+91UwQ6oYDKHxL11varJs8ot/7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sw9VuEVMWaWe2X2HOhdWK8vj1JPd5Bh8ayDVDAlK70E=; b=MKONPnQ5LIEEzJqsRY54N5TmX6
 UiksJ8LVlEExUlk04cUge/q8STni74XJ9IoN4nkRF2hffbOu8RFsKKtWg+jnLPMtimP6QTLUtj3Bu
 WXsg8QhYGq8SyXHK9v30Rz7Pr+W3/pVvVhb1mX97sbEUhaNMHGJMSOJqZMUMhzJm27/Y=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sPA0K-0000TF-Ll for linux1394-devel@lists.sourceforge.net;
 Thu, 04 Jul 2024 00:07:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 43208114009A;
 Wed,  3 Jul 2024 20:07:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 03 Jul 2024 20:07:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1720051625; x=
 1720138025; bh=sw9VuEVMWaWe2X2HOhdWK8vj1JPd5Bh8ayDVDAlK70E=; b=H
 txxS1jz3UZCsJsds+T95rneYb+gLU00eEjd55MMut9E5CDv1g0x1aYBjTSIlAdy1
 /lfUqCC4zTG4/T9oJ5h12vrT0p3Pf4iIZr0J6qTx8nQXsR3Z/UJxws006LXSc620
 9eKXk7+jCChgFDVESFXHaETOVTyjcxzVbiVxQS7Y+HLI9zclwmCB0u9WNmkYBvFa
 gjgFqDO5HSTZsip/FPFACYHc5eUzADGGc8g99J3xVkF+MJyGUCvsCFCZehSw5+Jb
 oYxLYB09COq4o5Zgg3xr9S9qpqKpUlnOO3+SBSxrZ4GTz+BLrrvr+xMjR/dlMaOI
 IlLGvbVjJF127KaSQfkDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720051625; x=1720138025; bh=sw9VuEVMWaWe2X2HOhdWK8vj1JPd
 5Bh8ayDVDAlK70E=; b=i1AAVg1mXGzg/YrKVKHe//CLgIGnxgjHlpO37ru+efmZ
 8MboowEYVYoNxCIhQjDskTCauuSBmpZHg+BJxR/zperDaVfEpDEM3IA6ls/jHSMz
 kdnrH7RXT6Oz/A1uWEdKgGeaA9wc/IOwk3MSzLOFHQBCM/6mUZVWkgPcPlvC9IkL
 MUOmODo/3GesdUbPAANNicHYV3OaeQQcbuZM51knQulmHiYgQjpzn1OEsdSSr753
 dQA/8RpWyj/I2WjVpVNM+JvCeB+7WXEl9+cxjSzV72nF8d28rkCiRBUb10McuixG
 xohb4e0jxDXYBMNH7GPhG27HnB6hyuUOpz6FGycLtw==
X-ME-Sender: <xms:qeeFZiI5Q0muT2r1PhGpnUPPlfrkR2M5OyHRGvC_J9NEN0Z9BxCTuw>
 <xme:qeeFZqL7QQaEo487Nl5nYIWXrLB_qHjxVYOYL_Bj9gjQNC9zzHJLw2RPQrg5oJ_-D
 Se8xznuYoYoPI1VPVA>
X-ME-Received: <xmr:qeeFZisI5F7wsZTgQqYk4KM9jHf_FDUSDWcIGOtlXezm5egbPwUtUJYlcQFfdqDZqkeHsKtutHEGL9ftv00NkOeDuoiU-zikqYo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudekgddvlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhud
 ekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:qeeFZnaI9VxY-bMDNwRTigUgktCf7YYfS4tH_dzXNI9SrlZ-ALa4sA>
 <xmx:qeeFZpbiMIqZ89Ss24BX3Qsarzm0uCHy8ZIew1_R-gaISQJAfPu7fQ>
 <xmx:qeeFZjDakTl08opagEmRx9kKnESPE0V5ZzGXNAWVK4SKBVzQ-Hos0g>
 <xmx:qeeFZvaX_sMGpgxZ16aNadp0QKif6_ku7swoiO0KPIFTrJ6FUG6MFg>
 <xmx:qeeFZolsgdPZrrxmKjsDKUhNCSlYwRQLarN6QYsbFiut87toYG62dbid>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 3 Jul 2024 20:07:04 -0400 (EDT)
Date: Thu, 4 Jul 2024 09:07:01 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 5/5] firewire: ohci: add tracepoints event for data of
 Self-ID DMA
Message-ID: <20240704000701.GA1447446@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
 <20240702222034.1378764-6-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240702222034.1378764-6-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Jul 03, 2024 at 07:20:34AM +0900,
 Takashi Sakamoto
 wrote: > In 1394 OHCI, the SelfIDComplete event occurs when the hardware
 has > finished transmitting all of the self ID packets received duri [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sPA0K-0000TF-Ll
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Jul 03, 2024 at 07:20:34AM +0900, Takashi Sakamoto wrote:
> In 1394 OHCI, the SelfIDComplete event occurs when the hardware has
> finished transmitting all of the self ID packets received during the bus
> initialization process to the host memory by DMA.
> 
> This commit adds a tracepoints event for this event to trace the timing
> and packet data of Self-ID DMA. It is the part of following tracepoints
> events helpful to debug some events at bus reset; e.g. the issue addressed
> at a commit d0b06dc48fb1 ("firewire: core: use long bus reset on gap count
> error")[1]:
> 
> * firewire_ohci:irqs
> * firewire_ohci:self_id_complete
> * firewire:bus_reset_handle
> * firewire:self_id_sequence
> 
> They would be also helpful in the problem about invocation timing of
> hardIRQ/softIRQ contexts. We can often see this kind of problem with -rt
> kernel[2].

Oops, I misunderstood. The handling of Self-ID DMA buffer is in hardIRQ
and process (workqueue) contexts, thus the above issue is not the
invocation timing of hardIRQ/softIRQ contexts. Let me correct it at the
applied commit comment.

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d0b06dc48fb1
> [2] https://lore.kernel.org/linux-rt-users/YAwPoaUZ1gTD5y+k@hmbx/
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c              | 11 +++++-
>  include/trace/events/firewire_ohci.h | 54 ++++++++++++++++++++++++++++
>  2 files changed, 64 insertions(+), 1 deletion(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
