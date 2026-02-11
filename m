Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JJYNK8TjGl1gAAAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Feb 2026 06:29:19 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1A8121592
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Feb 2026 06:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z9BhR2OFyz24UlFmTlNfxWPlUFq25rU3xdtYDCG2/Yg=; b=aF23TSCcV+Q/BnaDMwcLde+h/U
	4uDx+Bc+qsC8x5Rh4GrB9PEAZfaEq9ScK38jfDWj536+YLJT9utVVtfnRqHoCSPya951IMO+CWJST
	Qq5YVIMkLQwDriRAjT/sTJyQgTU5Wq+jbB1GghxsHJOJ6lQ08pI2i4YjbuzcTPou5a7Q=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vq2md-0006M0-Gh;
	Wed, 11 Feb 2026 05:29:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vq2mb-0006Lr-Fd
 for linux1394-devel@lists.sourceforge.net;
 Wed, 11 Feb 2026 05:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G1+3OfqilYqpZhvwLHHP96i+MEfztzDD2SNO+N/sZEw=; b=D4dUi0/Jf0lMmJEnrJdAcpLUTC
 too1j6lXw+MwRKZ+zOPLIXX7/92sX3izb/cZdLvqc7yC3joLG6lZA0GkBEfxQPSuY3gD6DvZdcJ+N
 dt/CZpvs6fKU/nDmoBFOEQohQXKvAT3FLo3f+S+vONmt+8Tz6iv02Xre2N3xSO7OFshI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G1+3OfqilYqpZhvwLHHP96i+MEfztzDD2SNO+N/sZEw=; b=k
 X9nKD2+feMbzI0RafLLmxm4b2iZigl/LaCJZx0IETBxygWEykMMlrZGQogS+YwahmJl50w7dl4WK+
 luP6JIVxA8SpCyTMQdVQ7B3DAl76JhCXbpB6TtY807PTcNmg16QO8ijieGPSnZrGoXMbOM9ibEFEf
 MPrm2PJafX+oeG80=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vq2ma-0006vd-7G for linux1394-devel@lists.sourceforge.net;
 Wed, 11 Feb 2026 05:29:01 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id 87B3CEC0330;
 Wed, 11 Feb 2026 00:28:49 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 11 Feb 2026 00:28:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1770787729; x=1770874129; bh=G1+3OfqilYqpZhvwLHHP9
 6i+MEfztzDD2SNO+N/sZEw=; b=TvUet5vFZobmbLStKO6YA6KFqBxrDHPUXy5Ja
 f3+syfWr2+4JoKtNy2TNWPqt70yuWwZvHj0Uyy86uzMElxMaiRAOQ7y1QDkOtIYF
 1rBzvk4MVKf/OGttz+Vi2mwDJ5ZTB5K0GFms1GAkjyc2d7uUtPJo+Ca75S1Uk54C
 jWsvHahtBDt3Mgo+8ZdtljtNtYrvztnoRoF2sVUSMNaeS5JESjw7gMw8vKhrtExO
 MHh57bD1AKQ/YqyVfqJ4zzH6xpvAm7Brqugj3b7VfRWZOfygTb6QlBNhX9B+0I8K
 /ll1Jqty+yBkWg7ru80sFkKyuuxN+pDreBLTW/iFJ4oxhBR6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770787729; x=
 1770874129; bh=G1+3OfqilYqpZhvwLHHP96i+MEfztzDD2SNO+N/sZEw=; b=g
 6KdctyqAYf/Ggl4HDFSMGU/HiBZ+M9L/XGHLcvWZrQHVxxnxY3XFyLhcr7zfUKv0
 1FuS8wzgo3qbdcYnOJXZeBbyplxcGRKxgMGaDwOqdtERnUKatst+Fm/imriXfAvF
 O3VhlMlO3k+ASIITrtrbmmHDzAy1DssPI7f1NRPN3qzjKhtUSkDcLnuGmsFxwyBF
 pNvtY4TPRU3wG45w9rVxSvzDg45rqFiU8bV8T0hiItDiE6xyhDNixzBFo5kM68Ua
 VADwmWZL1AmkZ0XSfhcvzQMALZsqF4zenPfNvL6bjjgAuoBVK6lk7yc/1QrDpjxb
 T52EbmJIKvw0FGXGqqaOg==
X-ME-Sender: <xms:kROMacfYgBwjF73Ns2GoakAReevng74pSFLrNaKKrarQQK4Bc0nzow>
 <xme:kROMaZI1Q97WGA5DelnY-PEGGa5-9y75CbCh_9JuvkHUeJ07xz4cGBotylf6skie8
 8n3VZ0z1bDTdP9Zg3q9UzeRuFDlLDT6SYOERiHZAHPhpNNYVftcT2NJ>
X-ME-Received: <xmr:kROMachxXxHsipXl-i2kNij-y_tPXtVLxlKlgwUuNGLwTglGsGbQ9kPadj6VLOzLVgRTOd6xVSl-jT_gFSCmt7Qdj8-7cAbB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvtddujeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepiedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtoheplhhinhhugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtph
 htthhopehjvghnshdrfihikhhlrghnuggvrheslhhinhgrrhhordhorhhgpdhrtghpthht
 ohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:kROMaXQmC3ndl7UVWLn5hrTsNNhBezdJhHK-J-vuh7EZe3RPXzYDdg>
 <xmx:kROMaWVzf4R80jgPrfLDgt1T3sHOlnVbM3yLBaTI9ns58LmlJDK_7Q>
 <xmx:kROMaTROvHGVLMxwmCTfPAls0y8qNfuKan_35SgomiWyG66NW-iEBA>
 <xmx:kROMaYnYFBPDFAgQCy8ZHjV11dfeAgpTJrY8r3PMoSR2wfAN5Cjx8A>
 <xmx:kROMaf4jA2Gywmivjeb_sShFrVVUcrE6PKls24FASuWE2T_0vFdNvidT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Feb 2026 00:28:47 -0500 (EST)
Date: Wed, 11 Feb 2026 14:28:45 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for 7.0-rc1
Message-ID: <20260211052845.GA155338@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-sound@vger.kernel.org, jens.wiklander@linaro.org,
 jgg@nvidia.com
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, (C.C.ed to linux-sound, Jens Wiklander, and Jason
 Gunthorpe) Please pull firewire changes for 7.0. It includes the following
 changes: - Refactor page allocation dedicated to 1394 OHCI IR/IT/AR DMA
 contexts
 - Allocate variable-sized buffer for isochronous context header - Including
 a small change in sound subsystem 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.151 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vq2ma-0006vd-7G
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
Cc: jgg@nvidia.com, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 jens.wiklander@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:jgg@nvidia.com,m:linux1394-devel@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:jens.wiklander@linaro.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 1B1A8121592
X-Rspamd-Action: no action

Hi Linus,
(C.C.ed to linux-sound, Jens Wiklander, and Jason Gunthorpe)

Please pull firewire changes for 7.0. It includes the following changes:

 - Refactor page allocation dedicated to 1394 OHCI IR/IT/AR DMA contexts
 - Allocate variable-sized buffer for isochronous context header
   - Including a small change in sound subsystem

This subsystem has been a long-standing, single user of dma_alloc_pages().
Recently, TEE subsystem added usage in a commit
ab09dd6d9201 ("tee: add tee_shm_alloc_dma_mem()"), and it still remains.
I think the kernel API can be avoided in direct calls and encapsulated for
the convenience of DMA mapping layer developers.


Thanks

Takashi Sakamoto
(on a national holiday in Japan)

---

The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-7.0

for you to fetch changes up to 6b617317e5bc95e9962a712314ae0c4b7a4d5cc3:

  ALSA: firewire: remove PCM buffer size constraint from isoc context header (2026-01-18 17:18:48 +0900)

----------------------------------------------------------------
firewire updates for v7.0

This update includes the following changes.

 - Refactor page allocation dedicated to 1394 OHCI IR/IT/AR DMA contexts

   Although 1394 OHCI specification does not impose any restriction on
   the memory size dedicated to these DMA contexts, 1394 OHCI PCI driver
   allocates pages for convenience when mapping them into either kernel
   space or userspace VMA. The driver previously used dma_alloc_pages()
   for both page allocation and mapping creation, even though this kernel
   API is rarely used. Following discussions questioning the page-oriented
   kernel API in the DMA layer, the driver has been refactored to avoid
   using this API. In addition, the use of private members in the
   allocated pages has been removed following long-standing concern.

 - Allocate variable-sized buffer for isochronous context header

   1394 OHCI PCI driver previously allocated a single page for isochronous
   context header. As a result, the buffer size for the header was fixed
   to PAGE_SIZE, which imposed a limitation on IEC 61883-1/6 packet
   streaming engine. Consequently, the ALSA PCM devices provided by
   drivers for audio and music units in IEEE 1394 bus were constrained in
   the maximum size of buffer period (64 ms in most cases). This limitation
   is resolved by dynamically allocating the header buffer with an
   arbitrary size.

----------------------------------------------------------------
Takashi Sakamoto (18):
      firewire: core: move private function declaration from public header to internal header
      firewire: core: use mutex instead of spinlock for client isochronous context
      firewire: core: code refactoring with cleanup function for isoc pages
      firewire: core: use common kernel API to allocate and release a batch of pages
      firewire: core: stop using page private to store DMA mapping address
      firewire: ohci: use MAX macro to guarantee minimum count of pages for AR contexts
      firewire: ohci: split page allocation from dma mapping
      firewire: ohci: stop using page private to store DMA mapping address
      firewire: ohci: fix index of pages for dma address to 1394 OHCI IT context
      firewire: core: add function variants for isochronous context creation
      firewire: ohci: refactor isoc single-channel state using a union
      firewire: ohci: code refactoring to use union for isoc multiple channel state
      firewire: ohci: use cleanup helper for isoc context header allocation
      firewire: core: add flags member for isochronous context structure
      firewire: ohci: allocate isoc context header by kvmalloc()
      firewire: core: provide isoc header buffer size outside card driver
      firewire: core: add fw_iso_context_create() variant with header storage size
      ALSA: firewire: remove PCM buffer size constraint from isoc context header

 drivers/firewire/core-card.c  |   4 +-
 drivers/firewire/core-cdev.c  |  71 +++++--------
 drivers/firewire/core-iso.c   | 102 +++++++++---------
 drivers/firewire/core.h       |  14 ++-
 drivers/firewire/ohci.c       | 234 ++++++++++++++++++++++++------------------
 include/linux/firewire.h      |  36 +++++--
 sound/firewire/amdtp-stream.c |  31 ++----
 7 files changed, 266 insertions(+), 226 deletions(-)


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
