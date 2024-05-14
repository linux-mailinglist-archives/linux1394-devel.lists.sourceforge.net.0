Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FC68C4EB7
	for <lists+linux1394-devel@lfdr.de>; Tue, 14 May 2024 12:04:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s6p1L-00010F-OP;
	Tue, 14 May 2024 10:04:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s6p1J-0000zy-TP
 for linux1394-devel@lists.sourceforge.net;
 Tue, 14 May 2024 10:04:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BVpwueAcvJAsCC2GVmhfSyVrFXijg21zaPEOzVgT+Pk=; b=kVBUhYz7F4R2kpyRL+Vm+j6WZ+
 nCikX9LQ9ulQUfTx9NJgEtyhGi9rRIp8FDlvQJZmENTnYg8X/Vla8oQ6pwrrjwYzrHAFudT85ZQ/C
 w3gPRfbsRNzKIf9AmUiOzV/9t/6/ru3zVbZer4xgT9tAk6vbi/Oc3yelxQMd77J7/+pQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BVpwueAcvJAsCC2GVmhfSyVrFXijg21zaPEOzVgT+Pk=; b=W
 T00NCEm+3buvjF8nptA/3Tr5kivKZNd/RbCzEZoJuPp1VSmgYf1UpZKq4dgfxZxvdRN0Alx80dtcx
 byYxvKuWtUhBshRscSzIcy2KGfDvP7I+0+ko/2xP7U6uYG9jRYzAqHH4mbeWMKCLhKquJYb7kBMq+
 CQyCdQEJXg+64q4I=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s6p1J-0004s3-8C for linux1394-devel@lists.sourceforge.net;
 Tue, 14 May 2024 10:04:30 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id D2C8A1140183;
 Tue, 14 May 2024 06:04:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 14 May 2024 06:04:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1715681062; x=1715767462; bh=BVpwueAcvJAsCC2GVmhfS
 yVrFXijg21zaPEOzVgT+Pk=; b=bxMfk41bTjA8GQ/X4aLL9gKfd71TkusavooNK
 DaajTMkPECc048g8xqaKkwqDOMqxJ9xC19Y7Sra+hzPnlAXwVwMcLcN+/eNElknJ
 vkv08yfWxmdAG2VLQeD6L97n3BZMy0LvbYRbxDATmNsP6y+4H96Uo7lUHZakLY4a
 xni8IslkUonEWfogpydPlQa0k+44YUS/fhvadxAZ/R4OAF1f3TkoDfX5nVHTXyf5
 jKHd4bgaX7mN1dLki764JGfiJGcLyK5pFQw6ItIfha0+7RfEhTWdn0zUPXpzRTeN
 X7jZ8BVl7YLPrJOEVkgAsg5ci2F4HdRs/tci6oXGbDEopuV5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1715681062; x=1715767462; bh=BVpwueAcvJAsCC2GVmhfSyVrFXijg21zaPE
 OzVgT+Pk=; b=dyWZne+pFA0d8/PaQ14J+HpZ4LcWmxCQchZfXWsigEPT/kWh9Pb
 WwsWAyAVYQgdXHK9C157SebIDNPGT5w4g7Nwtc7zTkFXZZ5c1wSmOquHLJWczomD
 us14kw7SRB9jZRnWg32CviWtR3Abb4p05d8zuySNbWVnr/pqUAYRuM+9YjAJEvxa
 CqCGz45W77RrEIplDklwU0Di7iJHFj+tydmAwWZfOmmglAymcktc7Qm6XDb2y09X
 lHUKl0GuPhMYwD1QDhAJ6vmC19bNiHUfdYmSHO8GnxFLQzux6USEMxMTv6jwObG4
 vd/FPSIcfqudKwjGloMDbG1DnVsQmHZ+4pg==
X-ME-Sender: <xms:JjdDZmr8GJsVby9sK-lHkWQBo8Fp86B_bwjJALLlJK__49JnAwWVtg>
 <xme:JjdDZkrRGGIi3s3bLet7bBcFEUNjXdWA5SdnajVfx36lWw-T1NhEsSG_0MjsoTXgA
 JzPTudCIuCauvgWgHg>
X-ME-Received: <xmr:JjdDZrPwMSTn_HTGf3bjz6LDeW-8o_gYjROEQ2-KLrmIV8JeD0VduZvzwASUP5JbrKemPLk2MWGSMYQ-cmt3FvgfcjaUwiBasdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdegiedgvdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefve
 egvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:JjdDZl66a6tjqgQK3pq-opOznNYfAFF8N7LJO8_YERruYzsOrG7h2g>
 <xmx:JjdDZl6SOlUnrskQtIWWDZNBH9qUObS5juM8vfluIvYznslevz48EQ>
 <xmx:JjdDZlhi_9zfIT7AGcVfac1Gt5DfbRU2nxJ-iYVnnVMgh5ntqgs9xA>
 <xmx:JjdDZv6A1fa4eQSE78wzUHh0bGwIUZSKKwiU0cGk40oNZOuzyUFzPA>
 <xmx:JjdDZvm6YN_svNnIqEdOezVeAHyVis_I1hD4rbm418UCbmh4nkZNnUGi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 May 2024 06:04:21 -0400 (EDT)
Date: Tue, 14 May 2024 19:04:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.10
Message-ID: <20240514100418.GA198864@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please pull the updates for firewire subsystem to
 your tree. The following changes since commit
 dd5a440a31fae6e459c0d6271dddd62825505361:
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s6p1J-0004s3-8C
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

Hi Linus,

Please pull the updates for firewire subsystem to your tree.

The following changes since commit dd5a440a31fae6e459c0d6271dddd62825505361:

  Linux 6.9-rc7 (2024-05-05 14:06:01 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.10

for you to fetch changes up to 21151fd8f0ea5dcff27e8db25b65bf892d408bdc:

  firewire: obsolete usage of *-objs in Makefile for KUnit test (2024-05-09 08:06:22 +0900)

----------------------------------------------------------------
firewire updates for v6.10

During the development period of v6.8 kernel, it became evident that there
was a lack of helper utilities to trace the initial state of bus, while
investigating certain PHYs compliant with different versions of IEEE 1394
specification.

This series of changes includes the addition of tracepoints events,
provided by 'firewire' subsystem. These events enable tracing of how
firewire core functions during bus reset and asynchronous communication
over IEEE 1394 bus.

When implementing the tracepoints events, it was found that the existing
serialization and deserialization helpers for several types of
asynchronous packets are scattered across both firewire-core and
firewire-ohci kernel modules. A set of inline functions is newly added
to address it, along with some KUnit tests, serving as the foundation for
the tracepoints events. This renders the dispersed code obsolete.

The remaining changes constitute the final steps in phasing out the usage
of deprecated PCI MSI APIs, in continuation from the previous version.

----------------------------------------------------------------
Adam Goldman (1):
      firewire: core: option to log bus reset initiation

Gustavo A. R. Silva (1):
      firewire: Annotate struct fw_iso_packet with __counted_by()

Takashi Sakamoto (27):
      Revert "firewire: ohci: use devres for requested IRQ"
      firewire: ohci: replace request_irq() with request_threaded_irq()
      firewire: ohci: obsolete usage of deprecated API for MSI
      firewire: ohci: use pci_irq_vector() to retrieve allocated interrupt line
      firewire: core: add common inline functions to serialize/deserialize asynchronous packet header
      firewire: core: replace local macros with common inline functions for asynchronous packet header
      firewire: ohci: replace local macros with common inline functions for asynchronous packet header
      firewire: ohci: replace hard-coded values with inline functions for asynchronous packet header
      firewire: ohci: replace hard-coded values with common macros
      firewire: core: obsolete tcode check macros with inline functions
      firewire: core: add common macro to serialize/deserialize isochronous packet header
      firewire: core: replace local macros with common inline functions for isochronous packet header
      firewire: core: add support for Linux kernel tracepoints
      firewire: core: add tracepoints events for asynchronous outbound request
      firewire: core: add tracepoints event for asynchronous inbound response
      firewire: core: add tracepoint event for asynchronous inbound request
      firewire: core: add tracepoints events for asynchronous outbound response
      firewire: core/cdev: add tracepoints events for asynchronous phy packet
      firewire: core: add tracepoints event for asynchronous inbound phy packet
      firewire: ohci: add bus-reset event for initial set of handled irq
      firewire: ohci: obsolete OHCI_PARAM_DEBUG_BUSRESETS from debug module parameter
      firewire: core: add tracepoints events for initiating bus reset
      Revert "firewire: core: option to log bus reset initiation"
      firewire: core: add tracepoint event for handling bus reset
      firewire: core: fix type of timestamp for async_inbound_template tracepoints events
      firewire: core: remove flag and width from u64 formats of tracepoints events
      firewire: obsolete usage of *-objs in Makefile for KUnit test

 drivers/firewire/.kunitconfig                |   1 +
 drivers/firewire/Kconfig                     |  16 ++++++
 drivers/firewire/Makefile                    |   6 +-
 drivers/firewire/core-card.c                 |   7 +++
 drivers/firewire/core-cdev.c                 |   7 +++
 drivers/firewire/core-topology.c             |   3 +
 drivers/firewire/core-trace.c                |   5 ++
 drivers/firewire/core-transaction.c          | 251 ++++++++++++++++++++++++++++++++++++++++++----------------------------------------
 drivers/firewire/core.h                      |  21 ++++---
 drivers/firewire/ohci.c                      | 131 +++++++++++++++++++++++--------------------
 drivers/firewire/packet-header-definitions.h | 234 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/firewire/packet-serdes-test.c        | 582 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/firewire.h                     |   3 +-
 include/trace/events/firewire.h              | 348 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 14 files changed, 1420 insertions(+), 195 deletions(-)
 create mode 100644 drivers/firewire/core-trace.c
 create mode 100644 drivers/firewire/packet-header-definitions.h
 create mode 100644 drivers/firewire/packet-serdes-test.c
 create mode 100644 include/trace/events/firewire.h


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
