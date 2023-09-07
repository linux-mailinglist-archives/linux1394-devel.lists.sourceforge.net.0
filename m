Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52019797180
	for <lists+linux1394-devel@lfdr.de>; Thu,  7 Sep 2023 12:36:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1qeCMn-0003YT-Of;
	Thu, 07 Sep 2023 10:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1qeCMm-0003YL-0X
 for linux1394-devel@lists.sourceforge.net;
 Thu, 07 Sep 2023 10:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E61v5F+OnpaiU4fxshVV4wXKb0uGpSwJ4z5TdXTl2B8=; b=kGfRySviBKIazIYzcP2mDd9IzJ
 kWnqg2Q2Q9rQbuwbBbgOOB8TMbBcIBST7Joyl+idhdFtFC5mF0LW9rnPsKrjhri0G4BVDFXDp2BLF
 78EAwsEaGWxEKqfObmneCucD4JxToqxhE4CUQtnKKqiLQCMDuwfnOrugTA8tIysnPh6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E61v5F+OnpaiU4fxshVV4wXKb0uGpSwJ4z5TdXTl2B8=; b=HMYih2qPGLypLkSjuc4/I55AG9
 J28I2LFnRK9K2kdpNYSac3fYAGcQfEqrJyMaQqankaDY9ABtVkWYXjeNFcMr11UD8YDO8FeTbEUn3
 8mQrzORVrk2tumWfT0+PAfhqmOmzMTXTdNVJxbidUZrwHrL9LQmuGRVjQS7Qt/RdS5Vc=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qeCMg-0004Fq-0l for linux1394-devel@lists.sourceforge.net;
 Thu, 07 Sep 2023 10:36:02 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 5A47D5C00CC;
 Thu,  7 Sep 2023 06:16:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 07 Sep 2023 06:16:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1694081767; x=
 1694168167; bh=E61v5F+OnpaiU4fxshVV4wXKb0uGpSwJ4z5TdXTl2B8=; b=V
 9Tdu0mqkTUCpeIdAOTke/Nm0JkmgrVHbYny+MVLwHVcc7SXZLmys+e+mNE0L2T26
 /mnWawPZQLRUvb84EBfUsgExlMrVaQH2+Tl9QTKbAd1qQjiNqqxedlUDf0wGDpFh
 ZGCumzx6qu8/qAY7UM0JlrAwqVpvWbWV2tar3KZSpATcjDvwNFsaTYoUFsPUj838
 5Dwvg6/5fstIN/jBowEOwB9P1vX+P/lrtuB56qmPxapGGWgsNGtjScBmg7GmrLVj
 onStIVZ4h2jPY9rUXIzbM1X/k5hQaKgGsQURnzMRR+C5AJ9Q2XfId0hJO2kTSgCq
 ENGNTOYFM3sUajD+T2nBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1694081767; x=1694168167; bh=E61v5F+OnpaiU
 4fxshVV4wXKb0uGpSwJ4z5TdXTl2B8=; b=vw5fbmpli2yenuXkithQ2bTAVYvVu
 jEukvn7mzwnPCEE2z+stsG9Ge7XrJYgW7Wkep8yYDO3GIQH+1Pjkynt1mp1aN0Mi
 ylRVzuQXMwTrQrCGM4Ksg69j8q2H7wT4p+hmdOd+B4vEbcRH4y4wpjL2Gaoumb0M
 wsZRNyU5/5JNe8BZfX6jmF7qiUuWqr8eMVFe5tQpRiuPJdUsBstDlf2UzawNuCbs
 XUcBi6wTDtq0Ln0kWE70nQgk/mqdPf2bohFENKvvvgPMH3SJmqewWMQeKjLExGDA
 SPFwGlShAfKGQ3JiXVRhqAOdmu5nuFbAC3QRL0CORmgpQS8W5hau9qFDw==
X-ME-Sender: <xms:5qL5ZGC1VEbswvhTXElk8r8_bVvG-HpQmhKurTlx9lHrJcqOyFlpnA>
 <xme:5qL5ZAiWe8mTmgK-irbfLf3H1pPX6TyK-qDXYe0Ixe1yvhJEh2E73FW1ryUlaaCj-
 eLUrl2gT65S8dHc5vY>
X-ME-Received: <xmr:5qL5ZJlpKgmldxEMjRwhrqvov6ilQlTphD5MYpyLCXJIrCGrm6fQsGk55byV6BX-Z2ho-q2032_PYUVA9EH2lYM2tSAgaxrBnjc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudehhedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:5qL5ZEzY3U03QYdlLINNaTVEEh8XP5DP38tjfb1AAoqn29YBlg8gPA>
 <xmx:5qL5ZLQkHQIFD_YaiM3OXIy-PQKUZizJEeLSIr7UnyND_95_BBCHGQ>
 <xmx:5qL5ZPb0OIS0tOZCAtBU5iFnXM2BFKuh0kbg-PC3kS4ohFjRmcETng>
 <xmx:56L5ZCIhQ2W3ownx00Wz7ouB19tHuTA9XrfaLesqi9iCtt13VFAv-Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 7 Sep 2023 06:16:05 -0400 (EDT)
Date: Thu, 7 Sep 2023 19:16:01 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Jan Engelhardt <jengelh@inai.de>
Subject: Re: [PATCH] firewire: allow deactivating the IEEE1394 menuconfig
 section at once
Message-ID: <20230907101601.GA33589@workstation.local>
Mail-Followup-To: Jan Engelhardt <jengelh@inai.de>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20230906081216.22849-1-jengelh@inai.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230906081216.22849-1-jengelh@inai.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Sep 06, 2023 at 10:12:16AM +0200, Jan Engelhardt
 wrote: > Presently, one needs to enter "FireWire (IEEE 1394) subsystem --->", 
 > then deselect all options individually. Speed up that process b [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
X-Headers-End: 1qeCMg-0004Fq-0l
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

On Wed, Sep 06, 2023 at 10:12:16AM +0200, Jan Engelhardt wrote:
> Presently, one needs to enter "FireWire (IEEE 1394) subsystem --->",
> then deselect all options individually. Speed up that process by
> making the "--->" line be togglable in its own right.
> 
> Signed-off-by: Jan Engelhardt <jengelh@inai.de>
> ---
>  drivers/firewire/Kconfig | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)

We are at the second half of merge window for v6.6 kernel, while the patch
looks good to me. I applied it to for-next branch and will send it to Linus
within a few days, after it passes check by for-next integration.

> diff --git a/drivers/firewire/Kconfig b/drivers/firewire/Kconfig
> index 0a6596b027db..be1a9e685782 100644
> --- a/drivers/firewire/Kconfig
> +++ b/drivers/firewire/Kconfig
> @@ -1,8 +1,18 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> -menu "IEEE 1394 (FireWire) support"
> +menuconfig FIREWIRE_SUPPORT
> +	bool "IEEE 1394 (FireWire) support"
> +	default y
>  	depends on PCI || COMPILE_TEST
>  	# firewire-core does not depend on PCI but is
>  	# not useful without PCI controller driver
> +	help
> +	  Support for FireWire.
> +
> +	  The answer to this question will not directly affect the
> +	  kernel: saying N will just cause the configurator to skip all
> +	  the questions about FireWire.
> +
> +if FIREWIRE_SUPPORT
>  
>  config FIREWIRE
>  	tristate "FireWire driver stack"
> @@ -96,4 +106,4 @@ config FIREWIRE_NOSY
>  
>  	  If unsure, say N.
>  
> -endmenu
> +endif # FIREWIRE_SUPPORT
> -- 
> 2.42.0


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
