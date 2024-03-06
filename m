Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B66258737F5
	for <lists+linux1394-devel@lfdr.de>; Wed,  6 Mar 2024 14:41:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rhrWE-00088f-MO;
	Wed, 06 Mar 2024 13:41:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rhrWD-00088V-5v
 for linux1394-devel@lists.sourceforge.net;
 Wed, 06 Mar 2024 13:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8eGGmM1KR7AcuGh7NIqABGQLQZZwfZwqFbPI2nbC2o0=; b=G+BVXI51aN6utM0cz2ektc+lxj
 6eN3wM3m2XUxgc3A/HcUGC1jzn8gDcnbuF6SQdtPNnzlt+jWPadXgosow+j54GSv4cSPP9n53kUfi
 Je9+PHYQjeTytqe8Py3gE3LLI/GRRo1rV39hyZ6UUtCic1jy+nA972TekvyTa5hpDLAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8eGGmM1KR7AcuGh7NIqABGQLQZZwfZwqFbPI2nbC2o0=; b=S8YxxCClUc2AUOkzC9xpWhC/ld
 ROsE5yD0lTT6FucEtYJQisp1txScitODykRwrL1kNsgboJGoIskaxAiy0CUEJoOTm+vNODB+dhP9m
 mgBaHPxrTCbCKoGze9/M/yVt8wCUY0sME0mOBrMk3FV3GvJ7ytmlaD8DyXVy8wSbwDP0=;
Received: from wfout8-smtp.messagingengine.com ([64.147.123.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rhrW2-0002JU-T0 for linux1394-devel@lists.sourceforge.net;
 Wed, 06 Mar 2024 13:41:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 0CC0E1C000B5;
 Wed,  6 Mar 2024 08:41:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 06 Mar 2024 08:41:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1709732461; x=
 1709818861; bh=8eGGmM1KR7AcuGh7NIqABGQLQZZwfZwqFbPI2nbC2o0=; b=p
 QqyyCqlax0VekC+Sgn3UonHyKUxzjko/W+1I49gCNsNSOSpFGuGt+jX6m5ghUE8n
 eQvLK3o2Z529+WIfSAE4pO9+YabIUhYNRZIBKm/4BVvQkQCFEUMCPvl/S1nyvZ3h
 Ud95cHEkOVbPKBvvHNm3tFgd7jAKjZ2L4ngTRUkERfHwmWnvZHBtimAtKXTvLszT
 xSpLFosx9nW5MqDTVSm6oY6mD0OG6Fv2eiQ313czSC47S/75KnjXa08FhLI0EGZ2
 9n5JiZ38jyvo3Jt0QoRxds4SWlleXfaUN5a72h/SQaKQMOXsWfhjE1F5EvsmJ5ID
 +A/ZuM4zifYaDpbUhGGdg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1709732461; x=1709818861; bh=8eGGmM1KR7AcuGh7NIqABGQLQZZw
 fZwqFbPI2nbC2o0=; b=WUeFs0LGk+h67KdusPFYnAPyCP/I7PhiyPqAPsH+uhPo
 kXkK/66ApjN8jCvAGWG8ioQlOkQM1z3bei0M6Pb/SgzpKThnZLZzZZdT502pzgmw
 fHMMwb/KKUo8t7dCMFTe+2CfaLUCLN7pevgsboQlZqJu5R+KV/Qlsz8QmuV0coXq
 0cdGUpd8AOsI2EaRQa1UtnwggfAWtDMBvfmPdz0LiS/RYr4efYHaXKtCd34sZ0kh
 v9uDY6SiIFc0Ml0cdxCmWzSddsnSOtfOVZnsQmDyANIt0/vtZwkay+ePV4xpLw75
 e69DvuS9T010AV4lIR5HPmOnGhiq51j5hjQN+cSDaw==
X-ME-Sender: <xms:bXLoZVdyXPRFp6RCD3IpYeGYkEDNjxMGxnaL8c_cqI-afWySLOVjpA>
 <xme:bXLoZTP1QDxaj1SNudq65pPpEcknU5WOSdvneihzIGikGs9Vzjya0b5wfvuqGMA0b
 kV9dh9SyTSKo4JYbgo>
X-ME-Received: <xmr:bXLoZeiQWEDkGssYHYRPHzV82RcF9qv1Lkh4oWKufrYDp6veHKTDAfHinzSf9ARummzJDsb9CVqH_TvJoyaMiKBary6LXfZX7S8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledriedugdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieei
 tedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:bXLoZe-OqQKS3RKwvDSkU0HPNW5z0GbGAdce_AePAnn1xV_vahYBZA>
 <xmx:bXLoZRtaNLvV9E2QKz8xAdXAsX5dSAmUG3tVOU-DWKo3x-SDbEzNYg>
 <xmx:bXLoZdE7Cbqz4ejL_s30yiKUlnFQwaDsxwy15-koxLygLEogs3Ai0w>
 <xmx:bXLoZZLqNBEWe0WpFndDAjlIi2zzGoYf5loRyz4cs3g_IHmIPV5w7bNw4Do>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 6 Mar 2024 08:41:00 -0500 (EST)
Date: Wed, 6 Mar 2024 22:40:56 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Edmund Raile <edmund.raile@proton.me>
Subject: Re: [PATCH v2] firewire: ohci: prevent leak of left-over IRQ on unbind
Message-ID: <20240306134056.GA124318@workstation.local>
Mail-Followup-To: Edmund Raile <edmund.raile@proton.me>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20240229101236.8074-1-edmund.raile@proton.me>
 <20240229144723.13047-2-edmund.raile@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229144723.13047-2-edmund.raile@proton.me>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Feb 29, 2024 at 02:47:59PM +0000, Edmund Raile
 wrote: > > Commit 5a95f1ded28691e6 ("firewire: ohci: use devres for requested
 IRQ") > also removed the call to free_irq() in pci_remove(), leadin [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rhrW2-0002JU-T0
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

On Thu, Feb 29, 2024 at 02:47:59PM +0000, Edmund Raile wrote:
> 
> Commit 5a95f1ded28691e6 ("firewire: ohci: use devres for requested IRQ")
> also removed the call to free_irq() in pci_remove(), leading to a
> leftover irq of devm_request_irq() at pci_disable_msi() in pci_remove()
> when unbinding the driver from the device
> 
> remove_proc_entry: removing non-empty directory 'irq/136', leaking at
> least 'firewire_ohci'
> Call Trace:
>  ? remove_proc_entry+0x19c/0x1c0
>  ? __warn+0x81/0x130
>  ? remove_proc_entry+0x19c/0x1c0
>  ? report_bug+0x171/0x1a0
>  ? console_unlock+0x78/0x120
>  ? handle_bug+0x3c/0x80
>  ? exc_invalid_op+0x17/0x70
>  ? asm_exc_invalid_op+0x1a/0x20
>  ? remove_proc_entry+0x19c/0x1c0
>  unregister_irq_proc+0xf4/0x120
>  free_desc+0x3d/0xe0
>  ? kfree+0x29f/0x2f0
>  irq_free_descs+0x47/0x70
>  msi_domain_free_locked.part.0+0x19d/0x1d0
>  msi_domain_free_irqs_all_locked+0x81/0xc0
>  pci_free_msi_irqs+0x12/0x40
>  pci_disable_msi+0x4c/0x60
>  pci_remove+0x9d/0xc0 [firewire_ohci
>      01b483699bebf9cb07a3d69df0aa2bee71db1b26]
>  pci_device_remove+0x37/0xa0
>  device_release_driver_internal+0x19f/0x200
>  unbind_store+0xa1/0xb0
> 
> remove irq with devm_free_irq() before pci_disable_msi()
> also remove it in fail_msi: of pci_probe() as this would lead to
> an identical leak
> 
> Fixes: 5a95f1ded28691e6 ("firewire: ohci: use devres for requested IRQ")
> 
> Signed-off-by: Edmund Raile <edmund.raile@proton.me>

Applied to for-linus branch. I'll send it for v6.8-final.

I think the pairs of 'pci_alloc_irq_vectors()' and 'request_irq()',
'free_irq()' and 'pci_free_irq_vectors()' would be fine here, but the
replacement of legacy API is not welcome in the last week of kernel
development, so I postpone the work to the future.

Thanks


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
