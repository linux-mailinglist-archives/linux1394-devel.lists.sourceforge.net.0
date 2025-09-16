Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2178B8119E
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 19:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tmxv3wKk/KRABgk/IhhIAzUVHZn9z6sViSD7pLm9g+c=; b=KgLs+ATazG6sQOAkXouMcq8usN
	DtmBSsMOK+AhT3on7f/h0GBbPwYPF27vKOyrwOlJxn39Vf+SxBOx2MTd1hrMQ7XKLQHX/jPA8y5Us
	2pDixvQD8BvcM47OpNbCSOoIzZvtNQFz7Q0dRl3P0PVKnPTzd+365+97U7XfllXNjcxc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyfE2-0004Y0-Of;
	Tue, 16 Sep 2025 23:36:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyfE1-0004Xr-Az
 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Sep 2025 23:36:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v/7bsuJ2HDoW8gCF5BfNsIwx/iJmBM1UZ2htl17Nptk=; b=GDXuZ8ZjfbMEVESml1LkIPU6s+
 toaRjSCaUz77R5knYe+0Ghr+ZOqA/+RJeqEjDSlXHXckHV/bZmlEoQgPta5uaUszX0TpTELmWneza
 9tX1yIewuyxu3dPIXBl60Fd69szT3A8C0P4tLidgO/dk0uOlEfC3IMXN6rbTmblXc5/I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v/7bsuJ2HDoW8gCF5BfNsIwx/iJmBM1UZ2htl17Nptk=; b=eMzHEBo6oBH9O7uRfG+4N+9vKz
 /aRJbNhccg2IgBoFWJP8yMgiw3o07/PU4WECGXWXKwn5OuCgCJid3ns+b86yiulOxOuMzTcR1SA5i
 3s+JmbCn/2HibCoeN/K7z3ouFY5BYyI6ZrZlCJgOFFivACL4O05iAfiZv4tDCyyVPlyI=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyfE0-00037L-14 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Sep 2025 23:36:41 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 59E9A14000B2;
 Tue, 16 Sep 2025 19:36:29 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Tue, 16 Sep 2025 19:36:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758065789; x=
 1758152189; bh=v/7bsuJ2HDoW8gCF5BfNsIwx/iJmBM1UZ2htl17Nptk=; b=u
 7/bzHVmsrmurauMcO+ztmhfcci3nj/q49Eo9Op/7AyNalSeBpfGWhyTjjMSI4vAi
 m21yLgsLdnQFUwLAhPQbt4YQL5uvgCzXslM7jWh83xBgp3vGSLNe7U/wmpb0eW44
 QJqWwpNUgTga2Gr3VmWVbqgHGu+vhGdbwzBzC48vAzJIcOCIUvMN7DJ59lNYEj2a
 uZ0OtiHIw18fjTTSlVJaiSGOVIMvjxUqcIhzJdtgR6V9uCr+IGiJxuD4iBYR8vBG
 HgR/dywvmrulkA5R+LcKNCdF/LizxoNnFDWplo5ANI5AExn3dreYBZhAjpfaIsZA
 gEsQK9I8k5XkA7rxwlfXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758065789; x=1758152189; bh=v/7bsuJ2HDoW8gCF5BfNsIwx/iJmBM1UZ2h
 tl17Nptk=; b=Ru/Ed0NFJYiYU9gfdCYcytBAmhuuptMg0vQkUdeVwB6iBHnEE1V
 C1bJBz87YmEGYnkqUY2qkwe1IO+YL0LcVoYqNP+hBVwwhuP1aAyr+BYMNS7cVRH0
 2FuPYEJv6uMIDkehL3QaqBDMNaxgeuZJCZk8YWESFakluWNfm7/E9XAzUiDsReRf
 k+ReMOADvKWVZ/9y0SPRq2Tdv2bHwzqhsMNTTDFSAEV/V/dPVJPnIT48gjYtwe6J
 9bEcJ3tAQOYSS2vuKq1xD3gSoyXlWgLS6dDPc95SdvlS7kcXkbFlZBrdA2gR203q
 nxyIMOwNxFKFoUj7HFNHgTqYAJ66tfOImNA==
X-ME-Sender: <xms:ffTJaO1OK6w72gZkZ41QxWmbe3_YocVWKni1o2FNSk1yguI6TNEbmw>
 <xme:ffTJaKAGnGmjEiGidSrEpto_XnUQeMXoO3mH_QhHgQK4bDzQsf8lzZeygeqggfaek
 RpUDAWtO5d1_v5O8fQ>
X-ME-Received: <xmr:ffTJaI19ep6E0HKtCHSR5Ddi07FVSNnhuB22gTBMOQrPgQuw-ia7ZIYt80Y-bdNMaI6KP9S3K3wAFQZ782FlgKEo_869-uHbmiY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegudeltdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:ffTJaMvVhGaPHGr50Gi-UDpAVk_yYswexwt_i1fVbHg0ZeE6cPv2ng>
 <xmx:ffTJaA5hmdFjEOpBYCuEQvrnoYLd2qIB0u_CHuUkm9VczJ_7p1c6-A>
 <xmx:ffTJaFLv5txD5hPRME3K0s-OiZRdruzmEWIeFJJnuHP1ek2Km5bRrg>
 <xmx:ffTJaI4Vui2i3r0xaFmak0xZjItMufZQpa0nIt-5BIIzvX-JP078VA>
 <xmx:ffTJaEb1DiKaMvdSpgRNgtqfgRgBO5Ji_YKgHmuVReNr2GvyE3SIWizx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 19:36:28 -0400 (EDT)
Date: Wed, 17 Sep 2025 08:36:25 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/6] firewire: core: partition fw_card spinlock
Message-ID: <20250916233625.GA50598@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 16, 2025 at 08:47:41AM +0900, Takashi Sakamoto
 wrote: > Hi, > > The current implementation uses the fw_card spinlock for
 a wide range of > purposes, which goes against the theory that the [...] 
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
X-Headers-End: 1uyfE0-00037L-14
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

On Tue, Sep 16, 2025 at 08:47:41AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The current implementation uses the fw_card spinlock for a wide range of
> purposes, which goes against the theory that the type of lock should
> protect critical sections as narrowly as possible.
> 
> This patchset adds some spinlocks for specific purposes, therefore
> partitioning the existing wide-purpose lock.
> 
> Takashi Sakamoto (6):
>   firewire: core: use scoped_guard() to manage critical section to
>     update topology
>   firewire: core: maintain phy packet receivers locally in cdev layer
>   firewire: core: use spin lock specific to topology map
>   firewire: core: use spin lock specific to transaction
>   firewire: core: use spin lock specific to timer for split transaction
>   firewire: core: annotate fw_destroy_nodes with must-hold-lock
> 
>  drivers/firewire/core-card.c        |  23 +++--
>  drivers/firewire/core-cdev.c        |  27 ++++--
>  drivers/firewire/core-topology.c    |  92 ++++++++++----------
>  drivers/firewire/core-transaction.c | 128 ++++++++++++++++++----------
>  include/linux/firewire.h            |  33 ++++---
>  5 files changed, 185 insertions(+), 118 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
