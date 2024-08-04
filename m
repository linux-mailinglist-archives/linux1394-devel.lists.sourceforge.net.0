Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B71946ED2
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saass-0006TQ-A9;
	Sun, 04 Aug 2024 13:02:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasj-0006Sr-Ir
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bkRnP/9kkn9kcWDlcH0PhqD14WR0C3W4aSnKlWJpfEI=; b=bDJ7DGrIC/w08qF9gpxU2ZVT4G
 9AYQtpd5SROOl7utyOuqaSVm8lPPmrr7aw3GRdFLuoXrLWPqnL2G662aFQwhg7pVRFChC2+CZelAi
 PlMv8m5kjdEtN/R4XZoSI2vDlYmtS13dSZi0WrixV/UvpUH7SSZ7TbXLrm59/1w8t2Ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bkRnP/9kkn9kcWDlcH0PhqD14WR0C3W4aSnKlWJpfEI=; b=U
 wxEdaPNqYIkqJ6GtG7ZKCs2ryyOhpZlBshRdqdWtM6Yy1tjBV6Xk2oDwfCKHFp3D+ytynH7xP/gS1
 ixzkPRjk0kTVMoRstPrO/B5vSk3BU9sLRZ9a6ONYNly0BELBW2FGDsi3ehBrwSkCut4EkmHz9FN22
 87hOnRsj5GPq8+00=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasi-0001DR-7P for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 917A31148189;
 Sun,  4 Aug 2024 09:02:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 04 Aug 2024 09:02:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1722776549; x=1722862949; bh=bkRnP/9kkn
 9kcWDlcH0PhqD14WR0C3W4aSnKlWJpfEI=; b=02Ek8ZidMf1hjdWVCZCTTQghgb
 4uH38l6k50yxGsjzr/AMTqqIuR909CML1NZbBFTO7BzZVmcx71zZe3GmI28Zxhwr
 WMu9Sh9N5s+UjZKeBVs6/EDLlv05wrFvbZ4G2SwnbGUhHl/NLbQZypyY6ymvsZax
 ilR7zXZ4BI+AZ1uSOrRghimNUQCVHKwiMZPnrZDK8/4xocw4OLNi163InLEJ0TJh
 VjaW0YJ1fjUPKbwMafinvnDK3kXkcc0GiT0XAlf5O4Oo1l0H90AHZdmzptGIZ8rJ
 Jzpp2PaNO4oIC6KtxdiDSQrhZn+6n6Mx2MmL0LRkeibL9idqyDOiGAiadXTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722776549; x=1722862949; bh=bkRnP/9kkn9kcWDlcH0PhqD14WR0
 C3W4aSnKlWJpfEI=; b=XCNlZro6IB94zItBNYf0j7SIl4DIfn+nE0MB8s/SG86c
 mEeI9irxTHZaq1QqHlqSHX87Ftmm4NnbTfHjDMQ2GdTNVtJ8ljsnq9Uj3yuaXyK4
 LkUbB7kkIU8/cuZ6OQbBRJmcCX+JX5AtC87hPG+fSGpGRvY3aOythMXbzaHn5MkO
 pNMGpUPVo1V0tJUsdlsYiXEo1ODyY5tJSWqhQMZr08/BWbu2/57As8EnuZzz65SZ
 h5T157xRAoR4u4tN8zKGp3L2HR+pX5k85ouRgSYbSzDxQIAKlI3RGoqxgZKLvAwd
 V+Mz72PKBXXobQyNi0lAZDQSAXyzR30dOcYmlyxcvA==
X-ME-Sender: <xms:5XuvZuAT9WlYRyoUjVvqvCNyLVZiNFcv8LfhO3t8Krl6-O0d9x6V_Q>
 <xme:5XuvZojSqidPDEFkcgO6gdaGkqDOmKcVxJwKmjOMNi6rPb0LAWaNLkaWzjYTuSRHd
 1k37gi0KjeAUbFGo2s>
X-ME-Received: <xmr:5XuvZhksolkAS0r9PlIyadQJmoEI204vZHtTlWOuB9EFaZ2iOScJYk-yl-5ElPnp7mskQGD3y0XNdKPsS3NJXkABkrMeTpFh5LJj_JezOmvcgQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevke
 duhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:5XuvZsyomnc3Tr3HsYkSLQSxHb6Eq4ylpNKGGMEsVnm2pfonkzYyZw>
 <xmx:5XuvZjTr1KCOB5n79zq0KdEYdjQ-Vwdm6I7w731Qa79SAwLzBRxPiA>
 <xmx:5XuvZnZ5zzKDg0UmHlxS9r6AC-UZIYHDHBmHEqD6olLaCA9nzmYC1Q>
 <xmx:5XuvZsRM3MiBmynSYnqledS6oAiw45wycjhr2aCQuQ8eezfmk_vhgA>
 <xmx:5XuvZueq1gCeA2dvNGWe9X-4j0HSWd9t-tPtluGGbPj7_Fi0-gZEluvZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:28 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 00/17] firewire: core/ohci: use guard macro for any type of
 lock primitives
Date: Sun,  4 Aug 2024 22:02:07 +0900
Message-ID: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The guard macro was firstly introduced in v6.5 kernel,
 and already available for spin_lock, mutex, RCU, and R/W semaphore. It is
 useful to ensure releasing lock in block. This patchset includes changes
 to replace lock/release codes with the guard macro. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saasi-0001DR-7P
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

Hi,

The guard macro was firstly introduced in v6.5 kernel, and already
available for spin_lock, mutex, RCU, and R/W semaphore. It is useful to
ensure releasing lock in block.

This patchset includes changes to replace lock/release codes with the guard
macro.

Takashi Sakamoto (17):
  firewire: core: use guard macro to maintain static packet data for phy
    configuration
  firewire: core: use guard macro to maintain the list of card
  firewire: core: use guard macro to maintain the list of cdev clients
  firewire: ohci: use guard macro to serialize accesses to phy registers
  firewire: core: use guard macro to maintain RCU scope for transaction
    address handler
  firewire: core: use guard macro to access to IDR for fw_device
  firewire: core: use guard macro to maintain the list of address
    handler for transaction
  firewire: core: use guard macro to disable local IRQ
  firewire: core: use guard macro to maintain list of events for
    userspace clients
  firewire: core: use guard macro to maintain IDR of isochronous
    resources for userspace clients
  firewire: core: use guard macro to maintain isochronous context for
    userspace client
  firewire: core: use guard macro to maintain list of receivers for phy
    configuration packets
  firewire: core: use guard macro to maintain list of asynchronous
    transaction
  firewire: core: use guard macro to maintain properties of fw_card
  firewire: ohci: use guard macro to maintain bus time
  firewire: ohci: use guard macro to maintain image of configuration ROM
  firewire: ohci: use guard macro to serialize operations for
    isochronous contexts

 drivers/firewire/core-card.c        |  60 ++---
 drivers/firewire/core-cdev.c        | 252 ++++++++----------
 drivers/firewire/core-device.c      |  83 +++---
 drivers/firewire/core-iso.c         |   5 +-
 drivers/firewire/core-topology.c    |   5 +-
 drivers/firewire/core-transaction.c | 146 +++++------
 drivers/firewire/ohci.c             | 381 ++++++++++++----------------
 7 files changed, 394 insertions(+), 538 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
