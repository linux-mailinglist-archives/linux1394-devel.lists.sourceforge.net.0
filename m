Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F52B49B8B
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 23:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sanJn0YCLpfqshOMF+VYI2Uy6tPgRd7evcGHkj7OH6I=; b=SyKyOkAYU+rHWZkSDq1hK1U5Pv
	Upn3dKXDokft6gDwKqvNoq0q27bmCZ+RdfQ0eim6plBNsAZDEe7tUz2XMip6F9JmWpZKNjnKoUP79
	sx3h5uO3HTrdgHkZtfmujWGqcxlXWmp4CTvHjmyEAd7fX25nyOI5YMk//kkOe+wHFCx8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvj6l-0007k4-Dq;
	Mon, 08 Sep 2025 21:09:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvj6j-0007js-U0
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 21:09:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nBkbY1qcj0HA7LBP8jJssHE5X/t4NAA4S/lftxMIcBg=; b=CjOHz+0+Ln/dcLpByG6lgEZ/Fq
 Y4fTk8UpR+xWhDoD5eK+ZxRIzvvzKJ3Nm593X2evS2Irc/GFg6SMnCeEwSUQ8Q7lDiiv+06jDShGW
 r4kKduHAyvpuhNzbc0QLfhVbMmrERl5sB1xzluREnlteBI9jgjysjOnwp1mI9+A6NV4g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nBkbY1qcj0HA7LBP8jJssHE5X/t4NAA4S/lftxMIcBg=; b=Rcu5HskZpZPAP6qB6m0U6dBANd
 OBXTLiZ2Xowgn/AHIQkhCgRmjXPf6vBKl3di/N6V2WUbv/58+pTrfoALlm6QCrpT257Gql3pzC2AW
 1acuzLDK+yPS3q1tHigq2l46pzhBO2dI6MOBnSpbgRQGicUlbsUQbj3NCuCqSOnHJ2x0=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvj6j-0000hB-3H for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 21:09:01 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 6F9751D0013C;
 Mon,  8 Sep 2025 17:08:55 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Mon, 08 Sep 2025 17:08:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757365735; x=
 1757452135; bh=nBkbY1qcj0HA7LBP8jJssHE5X/t4NAA4S/lftxMIcBg=; b=D
 y7o3lJc4kHiqlYqrFXSHjkFdXUz/8kOdQI6P4tG6vHQ/yEDfs7M4Ayp8li3tMkN9
 E4J7N0EEHD1+xd56GzXjeh9hv1sYuXZ4xzSS6qSqJ2bHCqDnAelm8SP72SO9nN0+
 QN06nFefohmmO5zXny9ctISl30eZPSy+QLGsVlfmnw/bzsQ4OzZNjh6bkCvX6l8s
 ZfUEuN75QK2zfEepK86oWUrPCB0p6DPIN0RCrfms/a5N/VutpfAV4/7FYs3rrIQI
 Q4zuw3UOrCz4shNKcQUSDU2AJ5HuTRuR7RR2E5vXuHp2UyFU51IOkeiq5sZNxkLe
 LhbvekOONnEJqY2/Uxw1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757365735; x=1757452135; bh=nBkbY1qcj0HA7LBP8jJssHE5X/t4NAA4S/l
 ftxMIcBg=; b=Xhk5h8wWnnflhORqha9eB79ydUGrcH0gSTV9x0gCoSsiC43wY92
 bVDyE5gIWb8Dq7rXArOITwfEao/KaH+HpLMZ9/Bec6ClBGkze6Fvz3ljMGpyKJFw
 6fKeJty/BWiFOMG8zMXkhCgxat7alroFxNXds6UFbmpJvy4khtU1WPTyGjXroWyB
 FDo6kht8tAxVcOTGMfpDZSEZL9XDusqVN5+GEMYZnK4Dv+VQX3bAuazCmKb6AoEW
 ZLLZ7a3NhyqfoDhOYDJQNqJQXqzhmwIH19YpAHgC6dEZHGSQx1oKL51LVGz+gAv/
 UkB5h1fw7Ipd/L9UI7f0BJvmvJPxPQkl4Qg==
X-ME-Sender: <xms:5kW_aBy_BjD2UmDvN-oqHKxX99-8-iFVlGzpShttmL0l_Uq8l7ei-A>
 <xme:5kW_aKMEKeI2F3yz49mBonvC-Ifjs3nD2zc6bJGVEVkWp-fzZ5gihU83cXRE4LRKM
 NEoFW9Wglsz_cz7JCU>
X-ME-Received: <xmr:5kW_aNRWfWMGQ9lJwDNPigv1lgRE9VjNVUeIBfWAXJmtOwDHtE-9A44HcMXcblxbiiCUSmTUv_vTuyq6oQrbU7rVyg1_edjOTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddukeehjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:50W_aAYjZbfGjcrabn95ktUa-YLYHfTN3HL3YT2hZpcvzsOxU1EIkg>
 <xmx:50W_aC1F4SL98sUbB_Ud6FgYtxaHf_aV9A_3HkQMiSo763-VP89N_Q>
 <xmx:50W_aIXqCj7LLRIPW6sDkGgdHWIVzJaIMBS4RaE8QCXK2Tl_C1T48A>
 <xmx:50W_aEXcv6ol5cbSwJOZ7xtispDfXYhAiexpn-XZPYPydQM1UUr6JA>
 <xmx:50W_aC0ojIc53-wY2fSwEJhbG9JmI6tqHjtRejxHWcn1qETZHKxtqjAA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 8 Sep 2025 17:08:54 -0400 (EDT)
Date: Tue, 9 Sep 2025 06:08:51 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 00/11] firewire: code refactoring mainly for bm_work
Message-ID: <20250908210851.GA586497@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 08, 2025 at 10:20:57AM +0900, Takashi Sakamoto
 wrote: > Hi, > > The core function in this subsystem have bm_work work item.
 The > corresponding function has many lines with comments. It is [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uvj6j-0000hB-3H
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

On Mon, Sep 08, 2025 at 10:20:57AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The core function in this subsystem have bm_work work item. The
> corresponding function has many lines with comments. It is a sign
> that it is time to be refactored, in my experience.
> 
> This series includes the first take for the purpose, as well as the
> other code improvements of 1394 OHCI PCI driver and the other core
> functions.
> 
> Takashi Sakamoto (11):
>   firewire: ohci: use kcalloc() variant for array allocation
>   firewire: core: utilize cleanup function to release workqueue in error
>     path
>   firewire: ohci: use return value from fw_node_get()
>   firewire: core: add helper functions to access to fw_device data in
>     fw_node structure
>   firewire: core: use cleanup function in bm_work
>   firewire: ohci: localize transaction data and rcode per condition
>     branch
>   firewire: core: code refactoring to evaluate transaction result to
>     CSR_BUS_MANAGER_ID
>   firewire: core: refer fw_card member to initiate bus reset under
>     acquiring lock
>   firewire: core: code refactoring to detect both IEEE 1394:1995 IRM and
>     Canon MV5i
>   firewire: core: code refactoring to investigate root node for bus
>     manager
>   firewire: core: code refactoring whether root node is cycle master
>     capable
> 
>  drivers/firewire/core-card.c   | 239 +++++++++++++++++----------------
>  drivers/firewire/core-device.c |  18 +--
>  drivers/firewire/core.h        |  14 +-
>  drivers/firewire/ohci.c        |   7 +-
>  4 files changed, 143 insertions(+), 135 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
