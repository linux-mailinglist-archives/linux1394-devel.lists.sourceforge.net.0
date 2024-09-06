Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F2D96F87D
	for <lists+linux1394-devel@lfdr.de>; Fri,  6 Sep 2024 17:42:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1smb6f-0003kK-VH;
	Fri, 06 Sep 2024 15:42:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1smb6c-0003kA-LH
 for linux1394-devel@lists.sourceforge.net;
 Fri, 06 Sep 2024 15:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zn9EwZR+f+c1AkwKaGYP2GwIG4dZrbiiDbyQo5Bg3NU=; b=jDnnWJc1GPoA0XiIPRvlb/C/x+
 3ic7aHpJaq7ayKD9dlixKrbw3v0OFz2KjGmntMzMOzZdj2sz4mJPQWCCLhm5hqEIvktH5BjrFWqtf
 NxYnSbIeBTAx7MJJxaLu6QC29+WyD4bxtoEDX710PFZGkbc7Y2eGHGhrWsO3hMbilJxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zn9EwZR+f+c1AkwKaGYP2GwIG4dZrbiiDbyQo5Bg3NU=; b=LtYfdLCFIpSTm/c+xZmtsyawmh
 ZVGRFJrzxjaQ3Q9Dm2/Lx7G7qwx1QaptH06hKbsmKxaBe6d4yMoHpN4s2ZfjzuiWpGz5Ds3IMvB0p
 pI2lUZcHqfVOUgQ8Ti49B9n2TyA9KBvef2v+xV+OMW8va26m3CN786TUytsm15NlxXbg=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1smb6a-0005jQ-MG for linux1394-devel@lists.sourceforge.net;
 Fri, 06 Sep 2024 15:42:37 +0000
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 080A511400CF;
 Fri,  6 Sep 2024 11:42:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-08.internal (MEProxy); Fri, 06 Sep 2024 11:42:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725637351; x=
 1725723751; bh=Zn9EwZR+f+c1AkwKaGYP2GwIG4dZrbiiDbyQo5Bg3NU=; b=q
 Up7S0jnKo3KkLjK+bcYoZC2saLL8OSQyzTiYgD7fKAPOJMSyGu70cmhFpxFD3LMu
 ae/lsMIG+ECCQltnKxWqAhNKD9WWObOpWPxZNa9oVLFHnvs3CZY7rwL3rRNR7YB4
 mPsnWC1QPAfISok+6/u5mL03AlA+tWPPH8KNoDulFjpyrO15elbOfvZGjmOASSko
 c3SedzkFTz8QzFIbnESd7V6TklAUdIQozHTSVTJEdHs8NkNW/eeDoSB111b3cm9B
 8Tie5Xqd6hsNqvZYqYOwFvTDH4lAqlx0L2gKkOARgQU3/cVHxrypZLYUI7wj/8cA
 h9CNIXWGXl95PTZAoXegQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725637351; x=1725723751; bh=Zn9EwZR+f+c1AkwKaGYP2GwIG4dZ
 rbiiDbyQo5Bg3NU=; b=B5zWlN+kthmHXHrqVRyQ1Vd3HbgAx6g1FjTSWkBU5mrX
 /crJLt31VPitgSwJeokbs0CBhTfAD027wN/L9Jp1uIS8cpzA4m0/NqdHaOylgccu
 NKVO4KEd8qgPXQt6TH0zHf00KYF2QFAt9Kb9srjPplFQT5TbjqJW9BQVI4dJnVuR
 97/DDlGtJgcofxrgDFkYI7rUl6sSJSOoG4XfinNmquK8VJV/rPkXHNIBBWt0EuC5
 7eCmQh56oo4UtUhD3ETXdt8Edba0Iz0ycyYekPY9FPeg9JQSsJf3KHTbIuDNm6i0
 LdcOKcCzbwsHNWaNFqGSrqNB0mi+u0PkcrhXjWfQ9Q==
X-ME-Sender: <xms:5iLbZsXx9g8AGn4H_sSr18q5uOBA4DyPIgVr9Wz8uPxOlu1hdfCtrw>
 <xme:5iLbZgkL7qgNytRKxwVqt5B6o6JyrYT3I_eWIEpT1Sqa34S5-A7T5Aj9PModOFr-5
 8fhiwWhGhKtVjn41uU>
X-ME-Received: <xmr:5iLbZgYh8bxIkjUfNVdkRyGDWIBG5Dt9ijVdplXzA8BAIe4ClYGCZmmjiUUGA-QxJvZx1WoI0SEM4CEHCmUHpNkCFR9uX2arWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeiuddgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhho
 rhhgvgdrnhgvthdprhgtphhtthhopehtihifrghisehsuhhsvgdruggvpdhrtghpthhtoh
 eplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:5iLbZrXfwQAFvatz3Q-ENTiQdbGp7X2FFunnCr8oyPv2Jr1rIbz--g>
 <xmx:5iLbZmmiqO52PJErXomz2hZMBkRtN9Ccu16mrzkyxOQ2SuuZTH7f_w>
 <xmx:5iLbZgcZamdOwG_ospY13nixJj5m97bNEgCBqjx9xPAuQZPHtBxGOw>
 <xmx:5iLbZoGDuvFy7nXCihc-fWSbROEUr0k806svi-E63V7FVCz2-YpeRg>
 <xmx:5iLbZoj44xZyve97Iep-h3kF4FJrokhB2pdDXhbf9Me80u7nAG5lZNTG>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 6 Sep 2024 11:42:29 -0400 (EDT)
Date: Sat, 7 Sep 2024 00:42:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: use WARN_ON_ONCE() to avoid superfluous
 dumps
Message-ID: <20240906154226.GA6012@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org
References: <20240905131029.6433-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240905131029.6433-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 05, 2024 at 10:10:29PM +0900, Takashi Sakamoto
 wrote: > It is enough to notify programming mistakes to programmers just
 once. > > Suggested-by: Takashi Iwai <tiwai@suse.de> > Signed-off-by [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1smb6a-0005jQ-MG
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
Cc: Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Thu, Sep 05, 2024 at 10:10:29PM +0900, Takashi Sakamoto wrote:
> It is enough to notify programming mistakes to programmers just once.
> 
> Suggested-by: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-iso.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
> index af76fa1823f1..a249974a0f87 100644
> --- a/drivers/firewire/core-iso.c
> +++ b/drivers/firewire/core-iso.c
> @@ -220,7 +220,7 @@ int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
>  	might_sleep();
>  
>  	// Avoid dead lock due to programming mistake.
> -	if (WARN_ON(current_work() == &ctx->work))
> +	if (WARN_ON_ONCE(current_work() == &ctx->work))
>  		return 0;
>  
>  	disable_work_sync(&ctx->work);
> @@ -244,7 +244,7 @@ int fw_iso_context_stop(struct fw_iso_context *ctx)
>  	might_sleep();
>  
>  	// Avoid dead lock due to programming mistake.
> -	if (WARN_ON(current_work() == &ctx->work))
> +	if (WARN_ON_ONCE(current_work() == &ctx->work))
>  		return 0;
>  
>  	err = ctx->card->driver->stop_iso(ctx);

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
