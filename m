Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6678D0CBC1
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fP7nfHl+eyYHFmULtqA1hW+57DiXAfS2v2vFdWVj3FQ=; b=jkOdKK+2B8sh/A+6WWfsrhY/5h
	deLhBWv/Tldsd0qg17pKfOXQf5R2h1VuDawXSpTQbrlFeRnvQ7T3pKxw2MDoFAz59y7f5vfUFcEwd
	YRdqpGFWYlCXrftFdy5MduFQZaWE/BiXldRcpJj6h/eGdjaeCF0f7pgMgjSi9mscb3S8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwr-0004Ag-4e;
	Sat, 10 Jan 2026 01:39:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwn-0004AU-Up
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DpMxMdc5+QujeW1FhviD+A0qA6OzixLGxxxR7lWhfu0=; b=C0STAyRWyVQlmcggynnP5SER7I
 X6BZO5XLZbnDFHEoLb+wFbq8BBooZLmqEPbTzWlGQc0fojeEPKLChO8KVGYN+8SqLzc8rl+HHs031
 HpFHJaAwRhIzd0NeWgZmjAKcq5+yh6qUmmfPJKGDs48qBTJx1zFmF49ZjCrAcv5Tb+9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DpMxMdc5+QujeW1FhviD+A0qA6OzixLGxxxR7lWhfu0=; b=e
 ItR/TkM4+qA1g8nbHZhWVkVNAis05FbgRTY7VrrMXdJqzw/2yUx1Be7sWIY5GJWC4yAcMMDBh3syh
 SifCPVLCqf/t38A5Vvcr6H6s4JIIav6SURrGLQIL2A3A70vvaJy++W3vaEvQcz3vJIFB4ybbmGwLz
 /yoEt8MaABeI/CFk=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwm-0000fE-R6 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:21 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 2B0C8EC0128;
 Fri,  9 Jan 2026 20:39:15 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Fri, 09 Jan 2026 20:39:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1768009155; x=1768095555; bh=DpMxMdc5+Q
 ujeW1FhviD+A0qA6OzixLGxxxR7lWhfu0=; b=ofGzxHKIVKrORyz8CeoxY1ewDt
 Zk32dSRUKTQGm/jBsmdopK54DTim/CvaCfXBgnElEzrUKjnjIn4SSWQ42kVBk7Pf
 o8o+Cl0prrlnQCcXvZTj7ZrlS+cuzz/+CmwFevwuF/ez1+OXIaCfuAoDw6Pi9iZG
 hsb08HRHKYjD3C9NH+O7GyxyFTzFizFnm98ryetPazCNRnDffqhEkcZ5zmUwZYH/
 aHpz2X0QyTYitiLD8F8z+iE7ZI/vxdQT2LrD3lelyjFQ7P4df9Kc/YIzRO9ZTEZ+
 QIiEwYJ2Y0x3gv1dmciViJ16Dv9ckcj1gTtTv+EUWkrt2vfb0zq+3J/wfzlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768009155; x=1768095555; bh=DpMxMdc5+QujeW1FhviD+A0qA6OzixLGxxx
 R7lWhfu0=; b=ufHm+nlHUiL5oQBjCgs2mI9QPe6D/HnhgEIBdts5iNpazppb2sw
 PBt3PVojEUmv+mvTChlyJlbMLGQvuwylFAsF1B/kem1FNczrsnw1i+1EktJuZNEv
 8IrmTbnXXtNRPfyCdtDgPDcVMd7D5zqoEQBIWUCRQZQBtuuwLbvCwlC4UACr6pMO
 HyzgWx8vZYk85MB1951zAp4sTz54i8ggAf9Yem2wQ6bjBk3+qnQwB8NlshhkpBnO
 Y8epy98DjSDstL4Bs0uc0MHk40lI8w0yVdBCTNCRnWjXG0kwt0KGBGzEDFkwDhwZ
 O7HiFkiipuIqG6O48jzX8pG2gXQ9QAPsJUQ==
X-ME-Sender: <xms:wq1haQ4irPzIuGUVAgGLPdQHxqRPEOfhx_Du_SB6Cd6Lg0nCfYZxmQ>
 <xme:wq1haZqXla2pEfUvUvhofxYfkRNUKOKULe7oEpVjOzX_NylMm1AZXmff7t5Mf3E6S
 FagizxJsULG5c2odakAofeV1R45gK0E6WYXyZ5wZOJpjY2wjXoAXPg>
X-ME-Received: <xmr:wq1haShkPwdb2iZc922yWD7atyxRv-kQhSQYjLBGNsRIQwHGdCBGQsJgfXzvu0kvN3ZNrVD4xMx7tLLdzjpXD_V7MSyKHw5pd-y5k_oBYOeE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:w61haTIWaxkNcnBfqfHgSa1D60Wvla-pXReV0irf5Bq3EcfRyFZoxQ>
 <xmx:w61haSBpdEjyDYVDEdZaAtMrInifYYTTqNg_Sm-Gtph9wjQp_VVsVw>
 <xmx:w61haThDsnyDWw4WrEJgCk7D-Ntu4C6ZATf7qr1kaApQihJLc1ADkw>
 <xmx:w61haan81DUOcuoFZpP_Hh8EqdFp9qnR9aBH3M93q4_W6UQwNAp9qw>
 <xmx:w61haSXsfS_s2L13dUbjJAiy4fcHQVnbg8sNosFxSRRClAeIYCZUptzn>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:13 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/8] firewire: core/ohci: code refactoring for pages dedicated
 to DMA
Date: Sat, 10 Jan 2026 10:39:03 +0900
Message-ID: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset is to refactor current codes handling pages
 dedicated to DMA. There are two cases to acquires pages dedicated to DMA;
 isochronous contexts and AR contexts. The reason of page acquisition is the
 need to map them into VMA. In the former case, they are mapped into [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.149 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1veNwm-0000fE-R6
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

Hi,

This patchset is to refactor current codes handling pages dedicated to
DMA.

There are two cases to acquires pages dedicated to DMA; isochronous
contexts and AR contexts. The reason of page acquisition is the need to map
them into VMA. In the former case, they are mapped into userspace VMA. In
the latter case, they are mapped into kernel VMA with continuous address
to access to packet content across the page boundaries, especially between
the end and the beginning of pages. The allocated pages are
discontiguous, and their cache coherency is managed by DMA streaming
APIs.

1394 OHCI has no restriction about the size and alignment of memory
registered for DMA, while the registered DMA address should be within
32 bit. The DMA mapped addresses can be discontiguous between descriptor,
thus the above subsystem design is due to the convenience of system side.

I think the recent convention of driver programming relies on DMA-coherent
buffers, while this code refactoring keeps the uses of DMA streaming
APIs as is. Also, the acquisition per page is kept as is, even if there
are some ways to allocate memories wider than the page size. They would be
future works since it requires to change how to handle the packet content
across the pages.


Takashi Sakamoto (8):
  firewire: core: move private function declaration from public header
    to internal header
  firewire: core: use mutex instead of spinlock for client isochronous
    context
  firewire: core: code refactoring with cleanup function for isoc pages
  firewire: core: use common kernel API to allocate and release a batch
    of pages
  firewire: core: stop using page private to store DMA mapping address
  firewire: ohci: use MAX macro to guarantee minimum count of pages for
    AR contexts
  firewire: ohci: split page allocation from dma mapping
  firewire: ohci: stop using page private to store DMA mapping address

 drivers/firewire/core-cdev.c |  41 ++++++------
 drivers/firewire/core-iso.c  |  86 +++++++++++++-----------
 drivers/firewire/core.h      |   1 +
 drivers/firewire/ohci.c      | 124 ++++++++++++++++++++---------------
 include/linux/firewire.h     |   3 +-
 5 files changed, 141 insertions(+), 114 deletions(-)


base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
