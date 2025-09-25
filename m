Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD11B9FADF
	for <lists+linux1394-devel@lfdr.de>; Thu, 25 Sep 2025 15:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Fu497WN2KPN/EowaSY5fZjavHhQDC1VKO/4gWsmbNw=; b=GYw9gB8HPnff5xtH+dFiUftfWY
	xCQ2zXH9qLVXjKA6J4B7CtWgx8yOABuRtd1sZsUBpTESr+dYJ8W1bBYTKbR9FiINvuLb8H55W94sm
	/vu76F6uDOs6G2FzaCLYBumYyva/1wbZYOkI2fhSJW5fTRKfYUCp3ao82jA6J0FLCA9s=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1mQ9-00056L-24;
	Thu, 25 Sep 2025 13:54:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1mQ7-00056D-Og
 for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Sep 2025 13:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AiRHqq7wL/NJSbdSEbfd7e9YXRXtuAk83mydyQfwhT4=; b=PnQj3nRGylm5w0nqhlZOUXYL1a
 i1JXKUnI7S4IAbpr/29OZTAXSa/9wQP/Z4t1wLC9uNXq/Q0TVJkarbeq6hgCmYg32yqiUqRFR/xTq
 iIpZbRcSlEKxizKdqAK2W+LbGZ+Ye/gz9HwsVqesn4tu/Mz1sZMSPVC1Fq98Ryizekd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AiRHqq7wL/NJSbdSEbfd7e9YXRXtuAk83mydyQfwhT4=; b=E0GeVH/QS+z5wPCg8e04BbLgHO
 Z7DCeYEOJ0VFr/UMxi+0SbwOeCH4lqHti7H+1ZCajNbgWb67W/QXruxKmPRVVec0fOq61YT0eVZtK
 ZQY00leoUNIVviW/6kWq0/fN86DSanBG0CzFwM42LuTz7IW9YlBq+IPXAZh+PNFFr9yg=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1mQ7-0000Yo-6t for linux1394-devel@lists.sourceforge.net;
 Thu, 25 Sep 2025 13:54:03 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 8ECE2EC0216;
 Thu, 25 Sep 2025 09:53:52 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Thu, 25 Sep 2025 09:53:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758808432; x=
 1758894832; bh=AiRHqq7wL/NJSbdSEbfd7e9YXRXtuAk83mydyQfwhT4=; b=Y
 X1qmtg/R+7Q3U/12dID8sAW/ycgODBw8/OM1ERAzFt32ABBdFd4EINx1uZ1zlooY
 O6HIAgCDRkpN+eLvie1HMrFd4iClAX4pe6408RPosi2wGdnTWV/jGoBz8E6YknLk
 wZ8XV2v/S3a0TEmD+Xhq4T6uGh3htalgtleV8ZgWuV0b6OCoVr8nCFYg2Jt9fJDu
 XOwwQKcSYChMjAMuiUPrg3xtqxn7vaatLDq4BmmjDVwy+RfiSCWEqQoKbVv2iM3C
 tUJXGyqzsrso7eOPUgGIWgI0vBoMYIYSdW8vieYIRYSJDv/BHwf1hFC6met+rKAt
 +I76lqun65CUiJwdVBOPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758808432; x=1758894832; bh=AiRHqq7wL/NJSbdSEbfd7e9YXRXtuAk83my
 dyQfwhT4=; b=TE4pco7y/1NeyYOsXLY4dSTFn7auzq+mKeDx884sby6XgftsuB/
 MjgeOSk76lxnjl9GOdvlqmuqe3AeZU+WSoxyAsdFhMgpmqXMas50Ane3tKTagZ5K
 tuHM4GElwv3SmliRdFF4KLaiDNVcnyz7bgFM24Au9oavM1igr22E+S2CDQgkj7ES
 PXIl1a6L2iPYWktGWhPCwSdhcqN2b0kXYaRi/hkSdbgHtynVrfgR+lFAajLcBawm
 Y2LFu5kKBMT+bQB7JVVx/YB95shJdoX7OW62HOkLvpZd2NrVp27sG+PUHw/aJ1xl
 YOqt334g7DVXN74hTQJ76gaLdqvf+mHPaqQ==
X-ME-Sender: <xms:cEnVaKMpRkndViu3-fKQpSsG7PWJTI_QCGZoWwfweBLMttIFjL2KPA>
 <xme:cEnVaG51ZiAj5yKQVAW6nDtA_Zw9s1XnCcuRwNBIFphXtazsKtnl2fHEfbZIctC3G
 Dksn8SD0UA3MyAObUn74KZrxsjiDA_sGFNKD8Kw13rNXw8Xw638i8do>
X-ME-Received: <xmr:cEnVaI1RT2gpYS0UIF71X7bwNnf6tFH3AijBmk3skh5RvZSozBXtxlrRwEvruFlkpZpTxFjWs4FsdmTwpzEuW6k7GzHh9K5NDNU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeiieeiiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekff
 ehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:cEnVaHZSnr5smPm7vezn-IrOlndJe1tNWO3zOvBZGRBIYGCVRnnsbA>
 <xmx:cEnVaADT25uaRImMgeNRKsQxTJKj0Q88Z2SYYArkJPLLgvE_pK8xPA>
 <xmx:cEnVaJ_O_BGSlDM1T1FWsgI5jsE-sSFMd6t93QSympC-HGgY4hT5Dw>
 <xmx:cEnVaA_cWFsUIK2oSWpuCgHs3YahbjQD9aZOnCKPYW-77jWzRtT-iw>
 <xmx:cEnVaJivElb0FhmgCYiQkA1Xd8NARUHhh1g4Si8JCL5z_1a_u0kWMmhQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Sep 2025 09:53:51 -0400 (EDT)
Date: Thu, 25 Sep 2025 22:53:49 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2 0/2] firewire: core: revert "serialize topology
 building and bus manager work"
Message-ID: <20250925135349.GB329042@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250924124212.231080-1-o-takashi@sakamocchi.jp>
 <20250924131823.262136-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250924131823.262136-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 24, 2025 at 10:18:21PM +0900, Takashi Sakamoto
 wrote: > Hi,
 > > The patchset that serialized bm_work() and fw_core_handle_bus_reset()
 > was merged without sufficient consideration of the r [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1v1mQ7-0000Yo-6t
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

On Wed, Sep 24, 2025 at 10:18:21PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The patchset that serialized bm_work() and fw_core_handle_bus_reset()
> was merged without sufficient consideration of the race condition during
> fw_card removal.
> 
> This patchset reverts some commits and restores the acquisition of the
> fw_card spin lock.
> 
> [1] https://lore.kernel.org/lkml/20250917000347.52369-1-o-takashi@sakamocchi.jp/
> 
> Changes from v1:
> * Fulfill cover-letter title
> 
> Takashi Sakamoto (2):
>   Revert "firewire: core: shrink critical section of fw_card spinlock in
>     bm_work"
>   Revert "firewire: core: disable bus management work temporarily during
>     updating topology"
> 
>  drivers/firewire/core-card.c     | 38 +++++++++++++++++++++++++-------
>  drivers/firewire/core-topology.c |  8 -------
>  2 files changed, 30 insertions(+), 16 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
