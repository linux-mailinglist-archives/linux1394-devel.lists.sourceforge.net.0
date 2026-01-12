Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDA9D1064F
	for <lists+linux1394-devel@lfdr.de>; Mon, 12 Jan 2026 03:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GDTXImy1YN6w8oTtFCBML4l5/5Uj0aXgFu9nXjouTy8=; b=MshQwIzaZbz6xnSLHTeuT4bEWg
	V0Uf7TjWqLu2QDFQ3/ctrRSQQkVA4/uernz3vBCUJkI0R6K1nEWo2J1OESy466CsxOQZN2K/QyQuj
	LGURq91nmLS2zlfn1aUjftgNeK84kOxhWVLZFU44kKAMshNgg4lkXKSWhaUJJ5SjK8rE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vf85T-00037Q-BU;
	Mon, 12 Jan 2026 02:55:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vf85R-00037A-8D
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Jan 2026 02:55:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jJJxuKZz5NiSj1XjjEu24jUB2R/7xqltlSlp1txsE0w=; b=X8gau2cNZa6HvG96RdGJ2NABzW
 uuBJJYhqMvMKpwdB/BdYz8OQWFRt0ANucDY4KQm326KRSVliPOQ65rcKQxZ1oWRQM+A4Z55sDcXgw
 hNV+oMcg22sA92dxFNSFbghoPu/Q/J8ruVVWpIYBK8J5Law8fJF9QJTptwrYTEpy+/X8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jJJxuKZz5NiSj1XjjEu24jUB2R/7xqltlSlp1txsE0w=; b=UfXfRERK/R2X/QkIAeWl7FQNi5
 lbS4CRy3CBshuPFM5DfbuyKTP8a+58gkOCbAVRP7/QzAAyVfsF5VxeMKBZsrGoQ31BnXQcOcs+JBM
 z2Y94E2Tdt0pXeO8i5+/lPSTFH59pOFkraja+Qe9BJILJrT4oUPkytagrNgqLbzzXOXY=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vf85Q-0005K4-Iw for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Jan 2026 02:55:21 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id DEB8D14000C3;
 Sun, 11 Jan 2026 21:55:09 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Sun, 11 Jan 2026 21:55:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768186509; x=
 1768272909; bh=jJJxuKZz5NiSj1XjjEu24jUB2R/7xqltlSlp1txsE0w=; b=g
 63iZ1ULD8uD6hwAmmJQnPiJxYdXERCcA0FolP+y820enSLXC3GIuxtBtbG4o03Wj
 xWqfR/UTjuFeK9qsZ6cISQGQsQDVgNLWn9EQVNzzflw3szyC/9R5h0wx6uyUxYPZ
 cSfkT95BG+s0N1/JUrToPBtO5KFGT7BhfuxnfTYRL89rNGU4faEaNz2XvWHiOlFU
 XzLvwjzolqX5EcKWlrPF746TrSR3ECGV3gFHTLdbxtxkyXDQ+r2ztUym5DyyTHMo
 5vUwMxwTCK2aSdp2XlBBXJ1tziYGpUmSPltLqC1MAWVUJG/aQBMB1qLyO85+YTL5
 7odh8RkkCjxB19GVUaDqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768186509; x=1768272909; bh=jJJxuKZz5NiSj1XjjEu24jUB2R/7xqltlSl
 p1txsE0w=; b=DW1Z3fG8b9MSsaSF8i5KQ6zCnQXheY7gbG6DzV5SaDKQHoQda/2
 lHl3NDycs5UAbD01jU9D9Wxqupwd4oCycgE04QvImVg41ZUns+hc7uuthcBGzMN3
 hSOjKi+F85Ni7qPfMTNLf/HRY5d5gszQdxMgvclrS60GVOnjJJddMeIZeHrSfki4
 muGj6Bm/uz9K191cmDUPo+deEoJAcBTddDZcxepDnNPEwITXeSATxCBwQVK6QK26
 Ysm/0Il9O232e8+kBclRcppqGNpt8M1ARfamcTrF7fQGUcHQxT5i/7nl+ZAOfkAY
 qmIK4YBpFm9moBkLKQx3I3EkBZhw4OAPeaw==
X-ME-Sender: <xms:jWJkaXvd8TG4qCqfNAr6VCZaF-2zYLkdKzdFNo0KDC26IW2nMnkCeg>
 <xme:jWJkaQNTJlEj30Da2WJyGLNkJL_zxMbsNZhrlbKcrnmVopqDJoMZ9sQs5u_hKkoWI
 1qIzWNlHgUXe3U4s3HEucfv0lBtTtVExEDrMFVTYcnU5PkFCiZiv4k>
X-ME-Received: <xmr:jWJkad2FC4cB8t3meP4SSePV_9dg1wTrnWQRQoI6ayvybWvQu38SCu2MfNftv938--3tm3ij4Yxg14q0qijDyQCTKY5J54cUl44>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduudeifedtucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:jWJkaUMOevJvrz54jx4rpcjTO22BG853KwiMEqg8iEGcJGb89G9uhQ>
 <xmx:jWJkaV1OX5TyuTNyg0zKYDbGLpdONPGxEf0nm92itOjnyELfIZV2nw>
 <xmx:jWJkaTGs5hPBephVQb5CayvwYS2mtAXcXv1sVBWQPlrRL5A9-EPLBA>
 <xmx:jWJkaa5kAWGZmiCk2Y2wXxv-r27d50VAhAloIpcqmeHn-ickGjbNpQ>
 <xmx:jWJkaZ5FnyHq1ZfTNylAYxroO0zqirasb9lR3wPZZSpNCKtVm-_ilSC7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Jan 2026 21:55:08 -0500 (EST)
Date: Mon, 12 Jan 2026 11:55:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/8] firewire: core/ohci: code refactoring for pages
 dedicated to DMA
Message-ID: <20260112025506.GA245601@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, jgg@nvidia.com
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jan 10, 2026 at 10:39:03AM +0900, Takashi Sakamoto
 wrote: > Hi, > > This patchset is to refactor current codes handling pages
 dedicated to > DMA. > > There are two cases to acquires pages dedi [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vf85Q-0005K4-Iw
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Jan 10, 2026 at 10:39:03AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This patchset is to refactor current codes handling pages dedicated to
> DMA.
> 
> There are two cases to acquires pages dedicated to DMA; isochronous
> contexts and AR contexts. The reason of page acquisition is the need to map
> them into VMA. In the former case, they are mapped into userspace VMA. In
> the latter case, they are mapped into kernel VMA with continuous address
> to access to packet content across the page boundaries, especially between
> the end and the beginning of pages. The allocated pages are
> discontiguous, and their cache coherency is managed by DMA streaming
> APIs.
> 
> 1394 OHCI has no restriction about the size and alignment of memory
> registered for DMA, while the registered DMA address should be within
> 32 bit. The DMA mapped addresses can be discontiguous between descriptor,
> thus the above subsystem design is due to the convenience of system side.
> 
> I think the recent convention of driver programming relies on DMA-coherent
> buffers, while this code refactoring keeps the uses of DMA streaming
> APIs as is. Also, the acquisition per page is kept as is, even if there
> are some ways to allocate memories wider than the page size. They would be
> future works since it requires to change how to handle the packet content
> across the pages.
> 
> 
> Takashi Sakamoto (8):
>   firewire: core: move private function declaration from public header
>     to internal header
>   firewire: core: use mutex instead of spinlock for client isochronous
>     context
>   firewire: core: code refactoring with cleanup function for isoc pages
>   firewire: core: use common kernel API to allocate and release a batch
>     of pages
>   firewire: core: stop using page private to store DMA mapping address
>   firewire: ohci: use MAX macro to guarantee minimum count of pages for
>     AR contexts
>   firewire: ohci: split page allocation from dma mapping
>   firewire: ohci: stop using page private to store DMA mapping address
> 
>  drivers/firewire/core-cdev.c |  41 ++++++------
>  drivers/firewire/core-iso.c  |  86 +++++++++++++-----------
>  drivers/firewire/core.h      |   1 +
>  drivers/firewire/ohci.c      | 124 ++++++++++++++++++++---------------
>  include/linux/firewire.h     |   3 +-
>  5 files changed, 141 insertions(+), 114 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
