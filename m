Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4950D909AFE
	for <lists+linux1394-devel@lfdr.de>; Sun, 16 Jun 2024 03:15:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sIeU0-00042q-Ac;
	Sun, 16 Jun 2024 01:15:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sIeTy-00041v-U8
 for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Jun 2024 01:15:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RTCIX5TDU2IEg42AjFI4T7JZGGcukFZrFGECup+a9C0=; b=mvI5pYF2MwYDccMcpvXGQAZfVg
 n/KHW8su6FNeTM9BJ8TQIL2xm4U9jz/mrrrDelWIS8UPVLl2b19xmwX+Fc2Xkc0hTcCa8DLyokf26
 cCrUDnEbHKo2KzHkcWEUG84Qv9oBkSZvlS9CfOoEjASwkX5wP3S9N1dA3l6y5T08pLiY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RTCIX5TDU2IEg42AjFI4T7JZGGcukFZrFGECup+a9C0=; b=G
 s30q0i9Ccf7fUU1e4jAZAO+0/yxRZjOToRJad667Dsw+wDK2JEwP8Ac+IrSgo96wel//q65LNBGvM
 pKhEqoThbIgyIYkU3uU/vRyiyM8gBaWqKrKpBt8UHMgxOBFWewXaLqORfvqo11yv1gYyQh2bULx+M
 c6E8QXGs4Uj8Qj84=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sIeTz-0000PW-RF for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Jun 2024 01:15:00 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 6FB5B1140169;
 Sat, 15 Jun 2024 21:14:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sat, 15 Jun 2024 21:14:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1718500493; x=1718586893; bh=RTCIX5TDU2IEg42AjFI4T
 7JZGGcukFZrFGECup+a9C0=; b=GUgGAYdNCkgt+dLT2xnRYaCwsyc9cq1uAuRRN
 OL0Mvqx6Q0CrguL+BMMuRxqePLWXuk9sZRMojCM28LCUlfYh5wo25tovyxMpl4aK
 5ok8WuxZbxztrahYx5sRSfsHKCDbWoX8kNCl468yg1DkZctj9Qewc3XBNp/mM2Vk
 mXslb15W51AGiOtApQmN5HbMvgbZzeYiciqyRoB6Lq5jWMYxtjvMIWjYSpYDXPF5
 9azZybdmXnE1w23H+Iy9sz9FiB3tfhQNzCNkGIw9RcqLHI5XZ4Qq0n5gweRsIWIa
 KhDXYZ8TYHsr+53mkwT1HL0DBaZqiqndLBfoS3WKYTLHS1YNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1718500493; x=1718586893; bh=RTCIX5TDU2IEg42AjFI4T7JZGGcukFZrFGE
 Cup+a9C0=; b=M6xTCjvlkTN3M6FsQ0GZAWaQ9nY4U6w+6Z5VyHMjVQ8HstWQxLW
 xHd8lzphSEvgX4dlVqwJT7fSmjZZSRZz8bk5w9JPz8XrovTcMIymb5EXMLflKK2R
 2zhLtYntclKX3nJDl8nfrTA2BP5yowChYYY85fEheQBLUVOTE1UfQat7kYrntNtq
 dqYMEZXr6hgqtRHl5pVwsNqwMLf+qIIK7bUlA5I5GvDpxlgZOy8eELGEM1XAchFP
 BVKa8YBDO5GiRav+cARDgd4DRiikZ1d0oTvhkvadMd9my9q5Zw4GpT2FPlnypjfm
 tcV81+LtD7hNwYC8xHTX+2qFiPtLr9fy77Q==
X-ME-Sender: <xms:jTxuZlEnYV7G16v_da-bYdTDtZht2-7-_0xXq18KdZZHljl2OlWYQQ>
 <xme:jTxuZqWfUj1mCPwXO98Oj6IbGP90ryJwJ764-39M48GzDpagM6JBzwfgg-Zg4MrTn
 nWQjeAqudnEOKciJ-g>
X-ME-Received: <xmr:jTxuZnKPGJGzhOlR9OvHghjXPYJsUzJvK5eA2pMsjigpZ8eZdhaVZJP0xKc2wmOv2qr8pf6-lAc0bQFSUgfSuKrGk3mbrQXFuss>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedvvddggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefve
 egvdfggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:jTxuZrHrUDYH3PpRcovQscI8gaAAzFkQKvfA7d7FYRCC8Mzrc-obGA>
 <xmx:jTxuZrUkpdVmp9ny8Q_Rt_0bnGmeXzzqRko_91cD-vl2fD3X9imWBg>
 <xmx:jTxuZmPbDaSRyGGyTJ4uahqkf7VHSbZV5Ib0CFm8d8nDeWZ3LgUooQ>
 <xmx:jTxuZq3s4tjhGq8iyp1bZx16YfJy8tdVi_L83PBDtNwI9PpMTIpICw>
 <xmx:jTxuZmQqA9lE9Dnm24IP1QXrFIh4Stl5MqQzUobeg0VitXqVtGB21k49>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 15 Jun 2024 21:14:51 -0400 (EDT)
Date: Sun, 16 Jun 2024 10:14:50 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.10-rc4
Message-ID: <20240616011450.GA516847@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 The following changes since commit 83a7eefedc9b56fe7bfeff13b6c7356688ffa670:
 Linux 6.10-rc3 (2024-06-09 14:19:43 -0700) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.153 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIeTz-0000PW-RF
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

The following changes since commit 83a7eefedc9b56fe7bfeff13b6c7356688ffa670:

  Linux 6.10-rc3 (2024-06-09 14:19:43 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.10-rc4

for you to fetch changes up to 893098b2af3ea12bab2f505aa825662b379df67d:

  firewire: core: record card index in bus_reset_handle tracepoints event (2024-06-15 14:59:26 +0900)

----------------------------------------------------------------
firewire fixes for v6.10-rc4

- Update tracepoints events introduced in v6.10-rc1 so that it includes the
  numeric identifier of host card in which the event happens.

- replace wiki URL with the current website URL in Kconfig

----------------------------------------------------------------
Takashi Sakamoto (9):
      firewire: fix website URL in Kconfig
      firewire: core: record card index in tracepoinrts events derived from async_outbound_complete_template
      firewire: core: record card index in tracepoinrts events derived from async_outbound_initiate_template
      firewire: core: record card index in tracepoinrts events derived from async_inbound_template
      firewire: core: record card index in async_phy_outbound_initiate tracepoints event
      firewire: core: record card index in async_phy_outbound_complete tracepoints event
      firewire: core: record card index in async_phy_inbound tracepoints event
      firewire: core: record card index in tracepoinrts events derived from bus_reset_arrange_template
      firewire: core: record card index in bus_reset_handle tracepoints event

 drivers/firewire/Kconfig            |   2 +-
 drivers/firewire/core-card.c        |   6 +++---
 drivers/firewire/core-cdev.c        |   6 +++---
 drivers/firewire/core-topology.c    |   2 +-
 drivers/firewire/core-transaction.c |  30 ++++++++++++++++--------------
 include/trace/events/firewire.h     | 113 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------------------
 6 files changed, 93 insertions(+), 66 deletions(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
