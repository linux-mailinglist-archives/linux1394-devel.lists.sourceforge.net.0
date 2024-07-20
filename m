Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5B593800D
	for <lists+linux1394-devel@lfdr.de>; Sat, 20 Jul 2024 10:48:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sV5kt-0001N6-Sc;
	Sat, 20 Jul 2024 08:47:51 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sV5kq-0001Mw-8a
 for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Jul 2024 08:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Gv9A8bJd9k9fQW2Ee25XoeDqaXZc1JlgKbWNYLaOWE=; b=KOvY1mVx04dLSHrAzGabVvWZAf
 GfoGzuBAAd5eJbDuV6+heY2uHkg9iE2Bj7hFMnfIr/yxXsjiiH89FwX5r24OHmZXhI8KbM7rRveoG
 MqWbvOC3gnJpDlC82p9JZxze1KeMn0xLSDYJvuXKcaqUSmCXlTw0D3g9v44fozsZMyEc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/Gv9A8bJd9k9fQW2Ee25XoeDqaXZc1JlgKbWNYLaOWE=; b=V
 GLDJLKFt7QzDa9El7CIlXCyGfo3Et+9pH9eaIRHBgQMpb59KSyajnabObXLAYo7xFqJ0GlEkOyihQ
 ib+o2nVLPaO3sNKpkn/Be8J3/AyZbVYJCEe/9nfUGNvqYYxyZyiMTFAj5qwILhnYkdWAI3y55vOPP
 1fbim/WTD9E8N4ng=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sV5ko-0003vb-5V for linux1394-devel@lists.sourceforge.net;
 Sat, 20 Jul 2024 08:47:48 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id E1DEC11402F9;
 Sat, 20 Jul 2024 04:47:35 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 20 Jul 2024 04:47:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1721465255; x=1721551655; bh=/Gv9A8bJd9k9fQW2Ee25X
 oeDqaXZc1JlgKbWNYLaOWE=; b=HiBpTs/RC0QsEUG8JN5MXlcSFG6or67WGrLKN
 3vNo/efnTi3jqnpFY4AYU4yUwWXs4Jay+y2P7prQR86j2qdOyP7lzoETJakcsFRf
 3bLgv6KGuTcC7vz1BVn7dX2h/QXdfs/YmOu3OGmHtahey3Uybx0LRfOl4WYww3JE
 YdUwOOFr7GBRdAdG01CLQ4ZNvXLzc4jgQX4OaG61pZ5bNdhxQGgR6w8LAVouuiSV
 dtoafhNb/p7wDD0gI368u7yeIx+m9kNxXYv09fnNeOVTuwLNXNNJP68NxUG25cXN
 zH6umU25Pj/oTlKa1F8oy6KmW1jSvrm7Y/RVYnRcZsdjlOW8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1721465255; x=1721551655; bh=/Gv9A8bJd9k9fQW2Ee25XoeDqaXZc1JlgKb
 WNYLaOWE=; b=jPPLms5DCb1tZckl9UyVB8KHKVozXJWuGaUjq/O3vyiLsTchoCh
 MtAtM29gKCPeopvzx984vRQ8mJaybfrtQRwY45tg7ZwdV6eWNNEfDx2qgMkwAcQh
 f3Y9tliQ7/RPI6HEkLtsQc8uW4zgSSqndBbEKHuBrtoanOcl7RnDXALhCTsFmDKr
 m43bAdPjyF6kWZZF3hDz9ImURlOf04h32S3TyVB17l9m3/Iqum9rfabqNVcFIUXc
 w2pWdJzpbuY8uzs23Iuxi947GAA7aIwLRXFAZoHPdRmaIK5Cobhz0E7xT5BarJjH
 ONc+WbFgcm8viGO37qcAMA3r6x0qBgyy+mA==
X-ME-Sender: <xms:p3mbZiU0mTEzHHBFVNyBRs8JaZd3dzOjYiGRsYdkFcvpnhNGRvWEWg>
 <xme:p3mbZumNJjOW5_ejUsR3VYiLs4BLaEl-0Gb8ELsP2aavuQVikdOotiHhI19r9DwoO
 PeuwtBxJdbuan4fg2o>
X-ME-Received: <xmr:p3mbZmYaFkOjy5tZRVEMZObumjR5_a_HhfnYrwNvXw5aalHmpyKAU9mN4Qu_9UJvnj5aZk4qXqXQyzT4BWkE5XvZhmJnbB1c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrheefgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkgggtugesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteefieetfeevge
 dvgfegffehteeljeekkeelueegfffftdfgtdetteekvedvvdfgnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:p3mbZpVNDHvhltJ_9T7jcQqYaj5kfNQ0qNcNlWRQV3UyXcbrWe22IQ>
 <xmx:p3mbZsmqkGmID3mpDw5LlUydjQJYxJPJlsHLQXsDV2uXrzRdPfPPXA>
 <xmx:p3mbZufpOyxDfPerRcetPTIuQ9rTIezhWiGcBnykVbitJHlsRZ_nTw>
 <xmx:p3mbZuGyOQ-RJqR7Ss7VjsMCGAApbxVgauz54jNBGbBRJ44QHUxP6Q>
 <xmx:p3mbZmgFCxfHUGC8gMTsUDwGjXsNNAPzl5oVKg4DU_ffaLdaED7IRcq4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Jul 2024 04:47:34 -0400 (EDT)
Date: Sat, 20 Jul 2024 17:47:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire updates for v6.11
Message-ID: <20240720084730.GA59546@workstation.local>
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
 Content preview:  Hi Linus, Please pull FireWire subsystem updates for v6.11.
 The following changes since commit 6ba59ff4227927d3a8530fc2973b80e94b54d58f:
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.156 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sV5ko-0003vb-5V
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

Please pull FireWire subsystem updates for v6.11.

The following changes since commit 6ba59ff4227927d3a8530fc2973b80e94b54d58f:

  Linux 6.10-rc4 (2024-06-16 13:40:16 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-updates-6.11

for you to fetch changes up to 06dcc4c9baa9e92896f00d02ffa760c0988b4371:

  firewire: core: move copy_port_status() helper function to TP_fast_assign() block (2024-07-12 14:34:12 +0900)

----------------------------------------------------------------
firewire updates for v6.11

There are many line changes for FireWire subsystem, while there is no
functional change for practical use. The most of changes are for code
refactoring, some KUnit tests to added helper functions, and new
tracepoints events for both the core functions and 1394 OHCI driver.

The tracepoints events now cover the verbose logging enabled by debug
parameter of firewire-ohci kernel module. The parameter would be removed
in any future timing, thus it is now deprecated.

----------------------------------------------------------------
Colin Ian King (1):
      firewire: core: Fix spelling mistakes in tracepoint messages

Takashi Sakamoto (31):
      firewire: core: add enumerator of self ID sequences and its KUnit test
      firewire: core: add helper function to handle port status from self ID sequence and its KUnit test
      firewire: core: minor code refactoring for topology builder
      firewire: ohci: minor code refactoring for self ID logging
      firewire: core: use helper functions for self ID sequence
      firewire: ohci: use helper functions for self ID sequence
      firewire: core: add common inline functions to serialize/deserialize self ID packet
      firewire: core: use helper inline functions to deserialize self ID packet
      firewire: ohci: use helper inline functions to serialize/deserialize self ID packet
      firewire: core: arrangement header inclusion for tracepoints events
      firewire: core: add tracepoints event for self_id_sequence
      firewire: core: add tests for serialization/deserialization of phy config packet
      firewire: core: use inline helper functions to serialize phy config packet
      firewire: core: record card index in tracepoints event for self ID sequence
      firewire: core: undefine macros after use in tracepoints events
      firewire: core: add tracepoints events for allocation/deallocation of isochronous context
      firewire: core: add tracepoints events for setting channels of multichannel context
      firewire: core: add tracepoints events for starting/stopping of isochronous context
      firewire: core: add tracepoints events for flushing of isochronous context
      firewire: core: add tracepoints events for flushing completions of isochronous context
      firewire: core: add tracepoints events for queueing packets of isochronous context
      firewire: core: add tracepoints events for completions of packets in isochronous context
      firewire: ohci: add support for Linux kernel tracepoints
      firewire: ohci: add tracepoints event for hardIRQ event
      firewire: ohci: use common macro to interpret be32 data in le32 buffer
      firewire: ohci: use static function to handle endian issue on PowerPC platform
      firewire: ohci: add static inline functions to deserialize for Self-ID DMA operation
      firewire: ohci: use inline functions to operate data of self-ID DMA
      firewire: ohci: add tracepoints event for data of Self-ID DMA
      Revert "firewire: ohci: use common macro to interpret be32 data in le32 buffer"
      firewire: core: move copy_port_status() helper function to TP_fast_assign() block

 drivers/firewire/.kunitconfig                   |   2 +
 drivers/firewire/Kconfig                        |  31 +++++++++++
 drivers/firewire/Makefile                       |   2 +
 drivers/firewire/core-iso.c                     |  32 +++++++++++
 drivers/firewire/core-topology.c                | 219 +++++++++++++++++++++++++++++----------------------------------------------
 drivers/firewire/core-trace.c                   |  11 ++++
 drivers/firewire/core-transaction.c             |  24 ++++-----
 drivers/firewire/ohci-serdes-test.c             |  56 ++++++++++++++++++++
 drivers/firewire/ohci.c                         | 237 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------
 drivers/firewire/ohci.h                         |  43 ++++++++++++++-
 drivers/firewire/packet-header-definitions.h    |   2 +
 drivers/firewire/packet-serdes-test.c           | 334 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/firewire/phy-packet-definitions.h       | 302 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/firewire/self-id-sequence-helper-test.c | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/trace/events/firewire.h                 | 541 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/trace/events/firewire_ohci.h            | 101 +++++++++++++++++++++++++++++++++++
 16 files changed, 1867 insertions(+), 222 deletions(-)
 create mode 100644 drivers/firewire/ohci-serdes-test.c
 create mode 100644 drivers/firewire/phy-packet-definitions.h
 create mode 100644 drivers/firewire/self-id-sequence-helper-test.c
 create mode 100644 include/trace/events/firewire_ohci.h


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
