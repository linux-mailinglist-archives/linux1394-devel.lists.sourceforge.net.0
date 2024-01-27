Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2457783EC11
	for <lists+linux1394-devel@lfdr.de>; Sat, 27 Jan 2024 09:38:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rTeCM-0007Ao-59;
	Sat, 27 Jan 2024 08:37:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rTeCF-0007Ab-JY
 for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jan 2024 08:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HBAy1ON+KFlap7KUmYNJGUyFHczf6v5pNQNbPjUNgjk=; b=eZTMNC9JfDKP/lvV0yx6vdeR7L
 I3+24XUCGU3HZ1BL01Wztb3cOLxodkS/hAxvw6pjdYiJRWN2Zphxkz6MZSLP9mNekxzXG8Xppe0Jq
 Ae8YOtyEQGpCgnkBskysohHM/Yb6GC8Bbk/KII3prdhAnrjnkRHH3mBLA5yZKY4hBUYI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HBAy1ON+KFlap7KUmYNJGUyFHczf6v5pNQNbPjUNgjk=; b=fe1Cc/rkKkX2HPFfKMXzE3H43N
 T/8IJNTBSna6E8VEUTfp7KJMqsRmF/ZqpHrfsmeU3R4F+D4dxUrXKdyKYK69RqOsrqTbtO8MdvUUg
 pTq9PQzNS+x49OEECYPKPTBiF/ujMhUo6RBZBL5pYjW2EafETWY/WykQfDA3o50rkqYY=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rTeCA-0006Vc-1f for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jan 2024 08:37:50 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 39FDA5C0194;
 Sat, 27 Jan 2024 03:37:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sat, 27 Jan 2024 03:37:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706344655; x=
 1706431055; bh=HBAy1ON+KFlap7KUmYNJGUyFHczf6v5pNQNbPjUNgjk=; b=h
 MyWf+g/kYDvjIerXQDV9US18+04iZiUbBXdLEvqlPMehKVTbFmJgNnorffrj5SLK
 N2a2FzYyV9w0Zrsd/We2Mv9jc0xePW+vN5cp6SN3EIoL480KOxTV+AuOkcRxyAP9
 S5xRJ95veMV/7ytWPZ8EiOk7ruHZIsSNr3uAq+PsYsVj6a5dCFJxzn3V1hg+0A2z
 KNPfpnkuIk1NSK+MQTvzo5liyKSxAocC0aNC6TvYgfH5W5LXT3vJVPbLXA5BmFvd
 2Jsgv2/8boXKAWpHTR92L2L1ieDlDYA23FvRC3ZZhqzoKOi2xhrj4GSF1+fFMOkx
 8DAyCFZ/GnOe9ZsOTsY6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1706344655; x=1706431055; bh=HBAy1ON+KFlap7KUmYNJGUyFHczf
 6v5pNQNbPjUNgjk=; b=xZashbmN/chZ+5ZAenlnOZjZ/VU4LTNcYK6IcjuSHXrG
 YMtN7NU2YRp7mfaMqgh+bN+veSm3PHtTa3x5S3StsRr05FLfLAFHnRT8yy/TUdkB
 lJlrCO94cjekZjIW+ClkyUArGNCAbiClMSdcNgXAA8zPGxEIm4CXZJInnaoD4rV5
 VLXcuTNaNyg4j8LQ+d+Agy7MNk5+KfggBRDH79/K/J+HncYI0iK6K8+nLGp/hJWQ
 2LyJzs8fu7cuEeoIBTNC05OOoKUlN4p/TYnfjab4KrDlxmF+ZaVJpQztjRrCmZ8U
 VFRSs0HsPMt1aM2JZRmu02vVd5CjXYR+WRM6U8wSgg==
X-ME-Sender: <xms:z8C0ZYeKm5sjPkvs_KO5mzGnUN5i58iVLb1nAAIakYjt9u2uKXcwUw>
 <xme:z8C0ZaNhGQ449_6ucmp8JKywBCuNEJl3ghXqPSVnoLsJuU2kgsVoknLN0rrIII6gu
 Baet95d2rPhUFXLR1I>
X-ME-Received: <xmr:z8C0ZZhcKyLdDE0Q8WN1DRLUpY1HsE_ZUkVq2Q_Ly4NabU4ARFG-6mowPoHH2fQHoBWC2eoixQ7SLX0uHUBSGHHpPF8kqQB-dbE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdelkedguddvtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjughrpeffhffvvefukfhfgggt
 uggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhn
 peejhffhgeeutefhfeeugfeggeduhfekffduhffhheekhfdtveefhfejjefftdfgjeenuc
 ffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmoh
 gttghhihdrjhhp
X-ME-Proxy: <xmx:z8C0Zd9oqvIR2eXy32OXys8xw64gxyMN6OSxH3Z_URL7DAE_AQ682g>
 <xmx:z8C0ZUvFnrjtaflZPDQ-PGojTSi7zVFi5k-5qOxRMDGv50PqAgfaGA>
 <xmx:z8C0ZUH_5azjfRmhJQQU-pjj3zvPnxaRGCx0FnpGPh3Xo-53NibtcA>
 <xmx:z8C0ZRURrOPybB79uzo8CgIykCEL9Z62P-gTvBsSCUr8TWB6Z11f9Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Jan 2024 03:37:33 -0500 (EST)
Date: Sat, 27 Jan 2024 17:37:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: send bus reset promptly on gap count error
Message-ID: <20240127083730.GA159729@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <Za90vAQlDhbLpY67@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Za90vAQlDhbLpY67@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patch. I would like to check some points
 about the change. On Tue, Jan 23, 2024 at 12:11:40AM -0800, Adam Goldman
 wrote: > If we are bus manager and the bus has inconsistent gap counts, send
 a > bus reset immediately instead of trying to read the root node's [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rTeCA-0006Vc-1f
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

Thanks for the patch. I would like to check some points about the
change.

On Tue, Jan 23, 2024 at 12:11:40AM -0800, Adam Goldman wrote:
> If we are bus manager and the bus has inconsistent gap counts, send a 
> bus reset immediately instead of trying to read the root node's config 
> ROM first. Otherwise, we could spend a lot of time trying to read the 
> config ROM but never succeeding.
> 
> This eliminates a 50+ second delay before the FireWire bus is usable 
> after a newly connected device is powered on in certain circumstances.

At first, would I request you to explain about the certain
circumstances in the patch comment? It is really helpful to understand
the change itself.

> Signed-off-by: Adam Goldman <adamg@pobox.com>
> Link: https://sourceforge.net/p/linux1394/mailman/message/58727806/
> ---
> 
> --- linux-source-6.1.orig/drivers/firewire/core-card.c	2023-09-23 02:11:13.000000000 -0700
> +++ linux-source-6.1/drivers/firewire/core-card.c	2024-01-22 04:23:06.000000000 -0800
> @@ -435,6 +435,16 @@
>  		 * config rom.  In either case, pick another root.
>  		 */
>  		new_root_id = local_id;
> +	} else if (card->gap_count == 0) {
> +		/* 
> +		 * If self IDs have inconsistent gap counts, do a
> +		 * bus reset ASAP. The config rom read might never
> +		 * complete, so don't wait for it. However, still
> +		 * send a PHY configuration packet prior to the bus
> +		 * reset, as permitted by IEEE 1394-2008 8.4.5.2.
> +		 */
> +		new_root_id = local_id;
> +		card->bm_retries = 0;
>  	} else if (!root_device_is_running) {
>  		/*
> 		 * If we haven't probed this device yet, bail out now

Next, after the condition branches, we can see below lines:

```
	/*
	 * Finally, figure out if we should do a reset or not.  If we have
	 * done less than 5 resets with the same physical topology and we
	 * have either a new root or a new gap count setting, let's do it.
	 */

	if (card->bm_retries++ < 5 &&
	    (card->gap_count != gap_count || new_root_id != root_id))
		do_reset = true;
```

When the value of "card->gap_count" is zero, it would hit the condition of
"card->gap_count != gap_count". I think the transmission of phy config
packet and scheduling of short bus reset would be done, regardless of the
change. Would I ask the main intention to the additional branch?


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
